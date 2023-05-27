# Minimum profit & Product
min(input_data$`TOTAL PROFIT`)
subset(input_data, input_data$`TOTAL PROFIT` == min(input_data$`TOTAL PROFIT`))

# Maximum profit & Product
max(input_data$`TOTAL PROFIT`)
subset(input_data, input_data$`TOTAL PROFIT` == max(input_data$`TOTAL PROFIT`))

# Most profitable products
input_data[order(input_data$`TOTAL PROFIT`, decreasing = TRUE),]

# Find which category is most profitable 
tapply(input_data$`TOTAL PROFIT`, input_data$CATEGORY, FUN = sum)
barplot(tapply(input_data$`TOTAL PROFIT`, input_data$CATEGORY, FUN = sum), xlab = "Category", ylab = "Profit", main = "Caegory Wise Profit")
