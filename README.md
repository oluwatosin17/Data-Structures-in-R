# Data-Structures-in-R
## Vectors in R

**GENERATING A VECTOR**
Use a colon (:) to generate a range of value:

`vector <- 1:4`

Use the function seq() to generate a sequence of values following a rule

`vector <- seq(from = 2, to = 10, by = 3)`

Use the function rep() to generate repeated values

`vector <- rep(4, times = 10)`

**CREATING A VECTOR**
Use the c() function:

`vector <- c(14, 24, 34)`

**CREATING A NAMED VECTOR**
Use the c() function:

`vector <- c("name_1" = 14, "name_2" = 24, "name_3" = 34)`

Assign name attributes to a vector:

`names(vector) <- name_vector`

**INDEXING VECTORS BY POSITION**
Extract a single element:

`vector[1]`

Extract a range of elements:

`vector[3:7]`

Extract multiple elements:

`vector[c(2,5,7)]`

**INDEXING VECTORS BY LOGICALS**
Index into a numeric vector using a logical vector:

`numeric_vector[logical_vector]`

**INDEXING VECTORS BY NAME**
Extract a single element:

`vector["name_2"]`

Extract multiple elements:

`vector[c("name_1", "name_2")]`

**APPENDING ELEMENTS TO A VECTOR**
Append a single element to a vector:

`vector_1  <- c(5, 10, 15)
vector_2  <- c(vector_1, 20)`

Append a vector to another vector:

`vector_1  <- c(5, 10, 15)
extra_values  <- c(20, 25)
vector_2  <- c(vector_1, extra_values)`

**REMOVING ELEMENTS FROM A VECTOR**
Remove a single element:

`vector[-1]`

Remove multiple elements:

`vector[c(-2, -5, -7)]`

`PERFORMING ARITHMETIC ON VECTORS`
Add, divide, or multiply vectors:

`vector_1 + vector_2
vector_1 / vector_2
vector_1 * vector_2
vector_1 + vector_2 * vector_3`

## Matrices in R

**CREATING A MATRIX**
Restructure a vector into a matrix using the matrix() function:

`matrix_1 <- matrix(1:12, ncol = 4, nrow = 3) 
matrix_2 <- matrix(1:12, ncol = 4) 
matrix_3 <- matrix(1:12, nrow = 3)`

Combine Vectors or Matrices by Row

`matrix_4 <- rbind(matrix_1, matrix_2)
matrix_5 <- rbind(vector_1, vector_2)
matrix_6 <- rbind(vector_1, matrix_1)`

Combine Vectors or Matrices by Column

`matrix_7 <- cbind(matrix_1, matrix_2)
martix_8 <- cbind(vector_1, vector_2)
matrix_9 <- cbind(vector_1, matrix_1)`

**INDEXING MATRICES BY ELEMENT**
Extract a single element:

`matrix[2, 5] 
 matrix["Stanford","patents"]`

Extract multiple elements:

`matrix[c(1,2),c(1,3)] 
matrix[c("Harvard","Stanford"),c("world_rank","influence")]  
matrix[tuition >= 45000, "patents"]`

**INDEXING MATRICES BY ROWS AND COLUMNS**
Extract a single row:

`matrix[1,]
matrix["Harvard",]`

Extract a single column:

`matrix[,2] 
matrix[,"quality_of_education"]`

Extract multiple rows or columns:

`matrix[,c("quality_of_education","influence","broad_impact")]    
matrix[,c("2,3,4")]`


**CALCULATE THE SUM/MEAN OF VALUES IN A VECTOR OR MATRIX**
Sum/Mean of values in a vector:
`sum(vector)`
     `mean(vector)`

Sum/Mean of values in a matrix:

`sum(matrix[,"column"])`
 `mean(matrix["row",])`

Sum/Mean of values in a matrix by column:

`colSums(matrix)`
 `colMeans(matrix)`

Sum/Mean of values in a matrix by row:

`rowSums(matrix)`
 `rowMeans(matrix)`

**RANK VALUES OF A VECTOR OR SUBSET OF A MATRIX**
Rank values of a vector:

`rank(vector)`

Rank values of a matrix:

`rank(matrix[,"column"])
rank(matrix["row",])`

**NAMING MATRIX ROWS AND COLUMNS**
Assign name attributes to rows of a matrix:

`rownames(matrix) <- vector_row_names`

Assign name attributes to columns of a matrix:

`colnames(matrix) <- vector_column_names`

**REMOVING ROWS AND COLUMNS FROM A MATRIX**
Removing a single element:

`matrix[-1, -2]`

Removing multiple elements:

`matrix[c(-2, -5, -7), ]`


## Lists in R

**CREATING LISTS**
Create a list:

`new_list <- list("data scientist", c(50000,40000), "programming experience")`

Assign names to list objects:

`names(new_list) <- c("job title", "salaries", "requirements")`

**INDEXING LISTS**
Return a list of selected elements:

`new_list[1]
new_list["job title"]
new_list[c(1,3)]`

Return a single element:

`new_list[[1]]
new_list[["job title"]]
new_list$"job title"`

Return a value contained in a list element:

`new_list[[c(1,3)]]`

**MANIPULATING LISTS**
Modify List Elements

`new_list[[1]] <- "junior data scientist"
new_list[[c(2,1)]] <- 40000`

Add Elements to Lists

`new_list[[4]] <- c("healthcare", "vacation")
new_list[["benefits"]] <- c("healthcare", "vacation")`

Remove Object from Lists

`new_list[-3]`

Combine Multiple Lists

`new_list_2 <- c(new_list, new_list_1)`

Create a List of Lists (Nested List)

`new_list_3 <- list(new_list, new_list_1)`
