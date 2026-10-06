# 1. Load Required Libraries
# install.packages(c("arules", "arulesViz", "readr"))
library(arules)
library(arulesViz)
library(readr)

# 2. Load the Dataset
transactions <- read.transactions("groceries.csv", format = "basket", sep = ",")

# 3. Exploratory Data Analysis
cat("\nDataset Summary\n")
summary(transactions)

cat("\nFirst 5 Transactions\n")
inspect(transactions[1:5])

# Plot Top 15 Frequently Purchased Items
itemFrequencyPlot(transactions,
                  topN = 15,
                  type = "absolute",
                  main = "Top 15 Frequently Purchased Items",
                  col = "steelblue")

# 4. Association Rule Mining (Apriori)
# Mining rules with support >= 0.01 and confidence >= 0.3
rules <- apriori(transactions,
                 parameter = list(supp = 0.01, conf = 0.3, minlen = 2))

# 5. Rule Diagnostics & Sorting
cat("\nSummary of Generated Rules\n")
summary(rules)

# Sort rules by 'lift' metric in descending order
rules_sorted <- sort(rules, by = "lift", decreasing = TRUE)

cat("\nTop 10 Rules Sorted by Lift\n")
inspect(head(rules_sorted, 10))

# 6. Visualizations
# Scatter plot mapping confidence vs support
plot(rules, 
     method = "scatterplot", 
     measure = c("support", "confidence"), 
     main = "Scatter Plot of 125 Rules")

# Network graph for the top 10 strongest associations
plot(head(rules_sorted, 10), 
     method = "graph", 
     main = "Network Graph of Top 10 Rules")