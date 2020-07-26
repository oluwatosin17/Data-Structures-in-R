library(readr)
recent_grads <- read.csv("recent_grads.csv")
View(recent_grads)
library(tidyverse)
glimpse(recent_grads)
# get names of column
names(recent_grads)
nrow(recent_grads)
ncol(recent_grads)

#selecting columns
filtered_data <- select(recent_grads,Rank,Major)
filtered_data
filtered_data <- select(recent_grads, -College_jobs)

rank_major_tibble <- select(recent_grads,Rank,Major)
view(rank_major_tibble)

#Filtering Rows
top_100_majors <- filter(recent_grads, Rank < 100)
view(top_100_majors)

large_engineering_majors <- filter(recent_grads, Total > 1000 ,Major_category == "Engineering")
view(large_engineering_majors)

large_sample_majors <- filter(recent_grads,Sample_size > 100)
view(large_sample_majors)

non_engineering_majors <- filter(recent_grads,Total <=  70000,Median > 40000,Major_category != "Engineering")
view(non_engineering_majors)

#Piping With The %>% Operator
ranked_majors <- select(recent_grads,Rank,Major,Total)
low_total_ranked_majors <- filter(ranked_majors, Total < 2000)

view(low_total_ranked_majors)

low_total_ranked_majors <- recent_grads %>% select(Rank,Total) %>% filter(Total<2000)

sum(c(1,2,3,4,5))
c(1,2,3,4,5)%>% sum()
pipeline_output <- recent_grads %>% select(-Rank,-Major) %>% filter(Median<50000)
view(pipeline_output)


#Creating Columns 
new_recent_grads <- recent_grads %>% mutate(pro_male = Men/Total, 
                                             prop_male_gt_half = pro_male > 0.5)
view(new_recent_grads)
new_recent_grads <- recent_grads %>% mutate(pro_employed = Employed/Total
                                            ,prop_women = Women/Total ,
                                            prop_women_gt_employed = prop_women > pro_employed
                                            )
view(new_recent_grads)

#Sorting Data
new_recent_grads <- recent_grads %>% mutate(prop_male = Men/Total) %>% arrange(-prop_male)%>% select(Total,Men,prop_male)
view(new_recent_grads)

least_emloyed_major <- recent_grads %>% select(Full_time,Major) %>% arrange(Full_time) 
head(least_emloyed_major)
view(head(least_emloyed_major))

#Summarizing Data
summary_table <- recent_grads %>% summarize(avg_unemp = mean(Unemployment_rate),
                                            min_uemp = min(Unemployment_rate),
                                            max_unemp = max(Unemployment_rate))
view(summary_table)

minmax_median_income <- recent_grads %>% summarise(min_income = min(Median),
                                                   max_income = max(Median))
view(minmax_median_income)

#Using Tibbles columns as vectors
sample_sizes <- recent_grads$Sample_size
sample_sizes %>% sum

sample_sizes < recent_grads[["Sample_size"]]
sample_sizes %>% sum

sample_sizes <- recent_grads %>% pull(Sample_size)
sample_sizes %>% sum

highest_median <- recent_grads %>% pull(Median)
highest_median %>% max
