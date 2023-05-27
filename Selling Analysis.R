# Minimum Sales & Product
min(input_data$QUANTITY)
subset(input_data, input_data$QUANTITY == min(input_data$QUANTITY))

# Maximum Sales & Product
max(input_data$QUANTITY)
subset(input_data, input_data$QUANTITY == max(input_data$QUANTITY))

# Sales Box plot by Selling Qty
quantile(input_data$QUANTITY)
q1 = quantile(input_data$QUANTITY)[2]
q2 = quantile(input_data$QUANTITY)[3]
q3 = quantile(input_data$QUANTITY)[4]

iqr = q3 - q1
print(iqr)

boxplot(input_data$QUANTITY, xlab = "Sales", ylab = "Sales Qty", main = "Sales Distribution by Qty")

# Category wise sales distribution
boxplot(input_data$QUANTITY ~ input_data$CATEGORY, xlab = "Category", ylab = "Sales Qty", main = "Sales Distribution by Category")

# Buying price & Selling price correlation 
plot(x = master_data$`BUYING PRIZE`, y = master_data$`SELLING PRICE`, xlab = "Buying Price", ylab = "Selling price", main = "Buying & Selling price correlation")
cor(master_data$`BUYING PRIZE`, master_data$`SELLING PRICE`)


# Find most selling categories
#--------------------------------

# Add new CATEGORY column to get category of each products
pro_category <- master_data %>% select("PRODUCT ID", "CATEGORY")
input_data <- inner_join(input_data, pro_category, by = c("PRODUCT ID"))

# Create bar chart for the category wise sales
barplot(tapply(input_data$QUANTITY, input_data$CATEGORY, FUN = sum), xlab = "Category", ylab = "Sales(Qty)", main = "Category wise sales")
tapply(input_data$QUANTITY, input_data$CATEGORY, FUN = sum)

