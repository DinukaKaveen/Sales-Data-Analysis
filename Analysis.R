# 1) Find most frequently used SALE TYPE

sort(table(input_data$`SALE TYPE`), decreasing = TRUE)
barplot(table(input_data$`SALE TYPE`), main = "Most frequently SALE TYPE", xlab = "Sale Type", ylab = "Sales Count")

# 2) Find most selling products***

# 2.1) Select top 10 most selling products
head(input_data[order(input_data$QUANTITY, decreasing = TRUE),], 10) 

# 2.2) Select most selling products by selling quantities

# Get selling quantities 
table(input_data$QUANTITY)
# Get selling quantities = 15
subset()

