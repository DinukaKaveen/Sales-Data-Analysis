# 1) Find most frequently used SALE TYPE
#----------------------------------------

sort(table(input_data$`SALE TYPE`), decreasing = TRUE)
barplot(table(input_data$`SALE TYPE`), main = "Most frequently SALE TYPE", xlab = "Sale Type", ylab = "Sales Count")

# 2) Find most selling products
#------------------------------

# 2.1) Select top 10 most selling products
head(input_data[order(input_data$QUANTITY, decreasing = TRUE),], 10) 

# 2.2) Select most selling products by selling quantities

# Get most selling quantities (most selling quantities are 15,14,13...)
table(input_data$QUANTITY)

# Get product list by selling quantity = 15
subset(input_data, input_data$QUANTITY == 15)
# Get product list by selling quantity = 14
subset(input_data, input_data$QUANTITY == 14)


# 3) Find year wise Profit by selling qty
#----------------------------------------

# 3.1) Add new PROFIT column to get profit of each products
master_data$PROFIT <- with(master_data, master_data$`SELLING PRICE` - master_data$`BUYING PRIZE`)
master_data

# 3.2) Create a table(pro_profit) with PRODUT ID & PROFIT using Master Data sheet
pro_profit <- master_data %>% select('PRODUCT ID', 'PROFIT')
pro_profit

# 3.3) Join Input Data and pro_profit tables by PRODUCT ID to add PROFIT column into the Input Data table
input_data <- inner_join(input_data, pro_profit, by = c("PRODUCT ID"))
input_data

# 3.4) Create column to get total profit of each products by selling qty
input_data$`TOTAL PROFIT` <- with(input_data, input_data$PROFIT * input_data$QUANTITY)

# 3.5) Create bar chart for the year wise profit
yrs <- format(input_data$DATE, format = "%Y")
tapply(input_data$`TOTAL PROFIT`, yrs, FUN = sum)

barplot(tapply(input_data$`TOTAL PROFIT`, yrs, FUN = sum), xlab = "Year", ylab = "Profit", main = "Year wise sales Profit")





