#TITLE AND GOOAL OF THIS PROJECT

# A pneumonia of unknown cause detected in Wuhan, China was reported from China 
# In this project  we used a dataset from kaggle .
#The  goal of this project is to build out our skills and understanding of the data analysis workflow by evaluating the Covid19 situation  through this dataset

#read in the df
library(readr)
covid_df <- read.csv("covid19.csv")
view(covid_df)

#Using glimpse() to summarize the data types and check for consistencies
glimpse(covid_df)
# We have 10,903 rows and 14 columns
# Determining the df dimensions
dim(covid_df)
#determining the columns names 
vector_cols <- colnames(covid_df)
print(vector_cols)
#Displaying the first few rows
head(covid_df)

#Isolating Rows we need
#Filtering rows related to "All State" from the province state column 
# We will extract only country level not to be bias with our analysis
#Province state mixes data of different entry level 
columns <- colnames(covid_df)
covid_df_all_state <- covid_df %>% select(columns) %>% filter(Province_State == "All States")
view(covid_df_all_state)

#Isolating columns we need 
# We are choosing to work with cases with cumulative and daily information and daily information separately because we cannot work with both together
#Our analysis would be biased if we made the mistake of comparing a column containing cumulative data and one containing only one day data 
covid_df_all_state_daily <- covid_df_all_state %>% select(Date,Country_Region,active,hospitalizedCurr,daily_tested,daily_positive)
view(covid_df_all_state_daily)

#Extracting the Top Ten Tested Cases Countries
covid_df_all_state_daily_sum <- covid_df_all_state_daily %>% group_by(Country_Region) %>% summarize(tested = sum(daily_tested),
                                                                                                    positive = sum(daily_positive),
                                                                                                    active = sum(active),
                                                                                                    hospitalized = sum(hospitalizedCurr)) %>% arrange(-tested)
view(covid_df_all_state_daily_sum)                                                                                                    
covid_top_10 <- head(covid_df_all_state_daily_sum,10)                                                                                          


#Identifying the Highest Positive Against the Tested Cases
country <- c(covid_top_10$Country_Region)
tested_cases <- c(covid_top_10$tested)
positive_cases <- c(covid_top_10$positive)
active_cases <- c(covid_top_10$active)
hospitalized_cases <- c(covid_top_10$hospitalized)
country <- `names<-`(country," Country_Region")
tested_cases <- `names<-`(tested_cases,"tested")
positive_cases <- `names<-`(positive_cases,"positive")
`names<-`(active_cases,"active")
`names<-`(hospitalized_cases,"hospitalized")

positive <- c(positive_cases/tested_cases)
positive_divide <- `names<-`(positive,country)
positive_arrange <- positive_divide[order(-positive)]
positive_tested_top_3 <- head(positive_arrange,3)
view(head(positive_arrange,3))


# Keeping Relevant Information
united_kingdom <- c(0.11,1473672,166909,0,0)
united_states <- c(0.10,17282363,1877179,0,0)
turkey <- c(0.08,2031192,163941,2980960,0)

covid_mat <- rbind(united_kingdom,united_states,turkey)
covid_n <- c("Ratio","tested","positive","active","hospitalized")
covid_matrix <- `colnames<-`(covid_mat,covid_n)
view(covid_matrix)


##Putting all together
question <- "which countries have had the highest number of positive cases against the number of tests"
answer <- c("Positive tested cases:" = positive_tested_top_3)

dataframe <- list(covid_df,covid_df_all_state,covid_df_all_state_daily,covid_top_10)
matrixx <- list(covid_matrix)
vectors <- list(vector_cols,country)

data_structure_list <- c(dataframe,matrixx,vectors)
covid_analysis_list <- list(question,answer,data_structure_list)
print(covid_analysis_list)
print(answer)

