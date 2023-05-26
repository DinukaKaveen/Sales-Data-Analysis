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


