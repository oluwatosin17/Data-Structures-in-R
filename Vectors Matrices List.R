 a_range_vector <- 1:4
seq_2_10 <- seq(from = 2, to = 10, by =  3)
print(seq_2_10)
rep_4 <- rep(5,times = 4)
rep_6 <- rep(1:3, times = 2)
vector_1 <- rep(4,times = 10)
vector_2 <- seq(from = 1, to = 12)
vector_3 <- seq(from = 2.0, to = 5.50,by = 0.25)
# creating a vector using known values
# c() stands for concatenate
is_validated <- c(T,F,F)
scores <- c(12L,3L,24L,8L)
selling_prices <- c(12.10,24.90,4.99)
day_names <- c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")

math_grades <- c(92,87,85)
exam_grades <- c(92.0,90.0,84.0,95.0,77.0,92.0,85.0)
is_stem_classes <- c(T,T,F,F,F,F,F)
# Indexing Vectors by position
math_grades[3]
exam_grades[1:4]
exam_grades[c(1,3,7)]
math_grades[1]
exam_grades[c(2,3,6)]
exam_grades[3:7]
# Indexing Vectors using logicals
exam_grades[1]
exam_grades[is_stem_classes]
homework_grades <- c(87,81,95,86,85,90,88)
homework_grades[is_stem_classes]
#modifying elements in a vector 
math_grades[3] <- 90L
print(math_grades)
exam_grades[c(3:7)] <- 85
print(exam_grades)
exam_grades[is_stem_classes] <- 95
print(exam_grades)
math_grades[2] <- 80L
print(math_grades)
exam_grades[is_stem_classes] <- 92
print(exam_grades)
#Appending Elements To a Vector
extra_exam_grades <- c(75,85,95)
new_exams_grades <- c(exam_grades,extra_exam_grades)
print(new_exams_grades)

new_exams_grades <- c(extra_exam_grades,exam_grades)
print(new_exams_grades)
extra_is_stem_classes <- c(T,F,F)
new_is_stem_classes <- c(is_stem_classes,extra_is_stem_classes)
print(new_is_stem_classes)
new_is_stem_classes_start <- c(extra_is_stem_classes,is_stem_classes)
print(new_is_stem_classes_start)

#Removing Elements from a Vector
math_grades[-3]
exam_grades[c(-1,-3,-7)]
math_grades[-1]
exam_grades[c(-3,-5,-7)]
 
#Perrforming Operations with Vectors
math <- (92+87+85)/3
chemistry <- (90+81+92)/3
math
chemistry
sum_grades <- exam_grades+homework_grades
sum_grades
project_grades <- c(85,92,79,93,90,91,95)
class_scores_sum <- exam_grades+homework_grades+project_grades
class_scores_sum
class_scores_avg <- class_scores_sum/3
class_scores_avg
 

#Vector Recycling 
homework_grades+math_grades
exam_grades
exam_grades <- c(92,90,84)
class_sum <- exam_grades+homework_grades+project_grades
class_sum /3


#Vectors Using Names 
math_grades <- c("Exams"=92L,"Homework"=87L,"Projects"=85L)
math_grades

grade_name <- c("Exams","Homework","Projects")
math_grade <- c(92L,87L,85L)
`names<-`(math_grade,grade_name)
math_grade[c("Exams","Projects")]
math_grade[c("Exams","Projects")] <- 80L
math_grade[c("Exams","Homework","Projects")] 

exam_grades <- c(92,90,84,95,77,92,85)
homework_grades <- c(87,81,95,86,85,90,88)
project_grades <- c(85,92,79,93,90,91,95)
class_name <- c("Maths","Chemistry","Writing","Art","History","Music","Physical Education")
`names<-`(exam_grades,class_name)
`names<-`(homework_grades,class_name)
`names<-`(project_grades,class_name)

# Creating a Matri Restructuring a Vector
mat_3x2_bycol <- matrix(1:6, nrow = 3, ncol = 2)
print(mat_3x2_bycol)

mat_3x2_bycol <- matrix(1:6, nrow = 3, ncol = 2, byrow = T)
print(mat_3x2_bycol)

is_validated <- c(T,F,F,T,T,T)
mat_is_validated <- matrix(is_validated , nrow = 2)
print(mat_is_validated)

matrix(seq(from = 2, to = 11, by = 3), nrow = 2, ncol = 2)



day_names <- c("Wed","Thu","Fri","Sat","Sun","Mon","Tue")
vector_month_days <- rep(day_names, times = 4)
matrix_month_days <- matrix(vector_month_days,nrow = 4,ncol = 7,byrow = T)
print(matrix_month_days)

vector_1 <- c(1,4,5,9)
vector_2 <- 1:12
vector_3 <- seq(from = 2.0,to = 5.50,by = 0.25)
matrix_1 <- matrix(vector_1, nrow = 2,ncol = 2)
print(matrix_1)

matrix_2 <- matrix(vector_2, nrow = 4, ncol = 3)
print(matrix_2)

matrix_3 <- matrix(vector_3, nrow = 3, ncol = 5, byrow = T)
print(matrix_3)

# Creating a Matrix Combining Vectors
harvard <- c(1,1,1,1,3)
stanford <- c(2,9,3,4,10)
MIT <- c(3,3,2,2,1)
cambridge <- c(4,2,6,13,48)
oxford <- c(5,7,12,9,15)
columbia <- c(6,13,13,12,4)

class_U <- c("University","world_rank","quality_of_education","influence","broad_impact","patents")

`names<-`(harvard,class_U)
`names<-`(stanford, class_U)

university_matrix <- rbind(harvard,stanford,MIT,cambridge,oxford,columbia)
print(university_matrix)


world_rank <- c(1,2,3,4,5,6)
quality_of_education <- c(1,9,3,2,7,13)
influence <- c(1,3,2,6,12,13)
broad_impact <- c(1,4,2,13,9,12)
patents <- c(3,10,1,48,15,4)

university_matrix <- cbind(world_rank,quality_of_education,influence,broad_impact,patents)
print(university_matrix)


#Naming Matrix Rows and Column
colnames(university_matrix) <- c("world_rank","quality_of_education","influence","broad_impact","patents")
print(university_matrix)

rownames(university_matrix) <- c("harvard","stanford","MIT","cambridge","oxford","columbia")
print(university_matrix)

# Indexing Matrices by columns and rows
university_matrix[3,2]

university_matrix["MIT","quality_of_education"]
university_matrix[3,]

university_matrix["MIT",]

university_matrix[,2]
university_matrix[,"quality_of_education"]

university_matrix[6,3]
university_matrix[4,]
university_matrix[,1]

# Indexing Matrices using Vectors
university_matrix[1:3,2]

usa_universities <- c(T,T,T,F,F,T)
university_matrix[usa_universities,]
university_matrix[usa_universities,c(3,4,5)]
university_matrix[usa_universities,3:5]


university_matrix[c(1,3,4),c(1,4)]
university_matrix[c(1,2,3,6),c("world_rank","patents")]


#Modifying Elements in a Matrix
university_matrix[3,2]<-2
university_matrix

university_matrix[usa_universities,3:5]<-1
university_matrix 

university_matrix[4,5]<-3
university_matrix[usa_universities,]<-2
university_matrix

#Appending Elements to a matrix
tuition <- c(43280,45000,45016,49350,28450,55161)
university_matrix <- cbind(university_matrix,tuition)


california <- c(7,5,4,7,29,43176)
university_matrix <- rbind(university_matrix,california)

#Removing Elements from a Matrix
university_matrix[-2,]
usa_universities <- c(T,T,T,F,F,T,T)
university_matrix[usa_universities,c(-2,-3)]

university_matrix[tuition >= 45000, c(-2,-3,-4)]
university_matrix[,-1]
university_matrix[broad_impact <=10, c(-2,-5)]

#Performing Operations with Matrices
university_matrix
sum(university_matrix["harvard",-6])
sum(university_matrix["stanford",-6])

rowSums(university_matrix[,-6])
colSums(university_matrix)

mean(university_matrix['harvard',-6])
rowMeans(university_matrix[,-6])
colMeans(university_matrix)
 
#Scoring and Ranking Universities
qof_rank <- rank(university_matrix[,"quality_of_education"])
w_rank <- rank(university_matrix[,"world_rank"])
i_rank <- rank(university_matrix[,"influence"])
bi_rank <- rank(university_matrix[,"broad_impact"])
p_rank <- rank(university_matrix[,"patents"])
t_rank <- rank(university_matrix[,"tuition"])

rank_university <- rbind(w_rank,qof_rank,i_rank,bi_rank,p_rank,t_rank)
colSums(rank_university)
colMeans(rank_university)

#LIST
harvard <- c(1,1,1,1,3)
stanford <- c(2,9,3,4,10)
MIT <- c(3,3,2,2,1)
cambridge <- c(4,2,6,13,48)
oxford <- c(5,7,12,9,15)
columbia <- c(6,13,13,12,4)
category_names <- c("world_rank","quality_of_education","influence","broad_impact","patents")
university_matrix <- rbind(harvard,stanford,MIT,cambridge,oxford,columbia)
university_matrix
`colnames<-`(university_matrix,category_names)

#Creating List
list("tennis","film","outdoors")
list("harvard",1,2,3,T)
c("harvard",1,2,3,T) #Vector
list("harvard",c(1,2,3),T)
list(name = "harvard",ranking= c(1,1,1,1,3),is_in_usa = TRUE)
list(university_clubs = "ballroom","rugby","bird_watching","potttery")
mit_list <- list("MIT",c(3,3,2,2,1),T)
mit_named_list <- list(name = "MIT",ranking = c(3,3,2,2,1),is_in_usa = T)
mit_named_list

club_title <- c("Chess Club")
club_description <- c("Meets two nights a week for members to play chess. Snacks are provided.")
club_dues <- c(50,20,15)
meeting_days <- c("Monday","Wednessday")
meeting_times <- c("6:00pm","8:00pm")

club_meetings <- rbind(meeting_days,meeting_times)

chess_club <- list(club_title,club_description,club_dues,club_meetings)
chess_club


#Getting/Setting Names to list Object
rugby_club <- list(club_title = c("Rugby Club"),club_description = "Plays matches against clubs from local universities",club_dues = c(100,50))
rugby_club 

ballroom_dancing <- list(c("Ballroom Dancing Club"),c("Practices waltz salsa and tango dancing for competition with local university dance teams"),c(150))
n <- c("club_title","club_description","club_dues")
`names<-`(ballroom_dancing,n)
 ballroom_dancing
 
 #Indexing Lists
 rugby_club[2]
class(rugby_club[2])
rugby_club[[2]]
class(rugby_club[[2]])

rugby_club[c(1,3)]
rugby_club[[c(3,2)]]

rugby_club$club_dues

chess_club[[4]]
chess_club[[c(3,2)]]

#modifying list elements
rugby_club[[3]] <- c(110,60)
rugby_club
rugby_club$club_dues <- c(110,60)
rugby_club[[c(3,1)]]<- 60
rugby_club

chess_club[[c(3,3)]]<-5
chess_club[[c(3,3)]]

#Appending Elements to lists
fall <- c(8,12,13,2)
spring <- c(6,11,14,3)

member_years_rugby <- rbind(fall,spring)
member_years_rugby <- `colnames<-`(member_years_rugby,c("first_yr","second_yr","third_yr","fourth_yr"))
rugby_club[[4]] <- member_years_rugby
rugby_club
rugby_club[["member_years_rugby"]] <- member_years_rugby
rugby_club
rugby_club <- rugby_club[-4]

first_years <- c(12,15)
first_years <- `names<-`(first_years,c("fall","spring"))
chess_club[['first_year']] <- first_years
chess_club
chess_club[["first_year"]]

#Removing Elements from a list
chess_club[c(-3,-4)]

# Combining Lists
university_club_data <- c(rugby_club,ballroom_dancing)
university_club_data

university_club_list <- list(rugby_club = rugby_club,ballroom_dancing=ballroom_dancing)
university_club_list

university_clubs <- list(rugby_club = rugby_club,ballroom_dancing= ballroom_dancing,chess_club= chess_club)
university_clubs

#DataFrame in R

