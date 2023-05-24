# 1) Find most frequently used SALE TYPE

sort(table(input_data$`SALE TYPE`), decreasing = TRUE)
barplot(table(input_data$`SALE TYPE`), main = "Most frequently SALE TYPE", xlab = "Sale Type", ylab = "Sales Count")

# 2) Find most selling products***

# 2.1) Select top 10 most selling products
head(input_data[order(input_data$QUANTITY, decreasing = TRUE),], 10) 

# 2.2) Select most selling products by selling quantities

# Get most selling quantities (most selling quantities are 15,14,13...)
table(input_data$QUANTITY)

# Get selling quantity = 15
subset(input_data, input_data$QUANTITY == 15)
# Get selling quantity = 14
subset(input_data, input_data$QUANTITY == 14)

