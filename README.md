Retail Market Basket Analysis & Association Rule Mining

Project Overview
This project applies Market Basket Analysis using the Apriori algorithm in R to discover hidden consumer purchasing patterns in a real-world retail environment. By extracting data-driven association rules evaluated by support, confidence, and lift metrics, the objective is to recommend optimized cross-selling bundles and strategic product placements.

Dataset
Source: 
Groceries dataset containing 9,835 real-world retail transactions across 169 unique items.
Sparsity: 
The transaction matrix has a density of 0.026, typical for retail environments where customers purchase a small fraction of the total available inventory.
Top Sellers: 
Whole Milk is the dominant anchor product (2,513 transactions), followed by Other Vegetables (1,903) and Rolls/Buns (1,809).

Methodology & Key Findings

Association Rule Mining (Apriori Algorithm)
Algorithm Tuning: 
Configured the Apriori algorithm with a minimum support of 0.01 and minimum confidence of 0.3, successfully generating 125 highly relevant rules.
Peak Lift (Strongest Association): 
Customers who purchase Citrus Fruit and Other Vegetables are 3.29 times more likely to also purchase Root Vegetables (Lift: 3.295).
High Confidence Bundles: 
Discovered that 58.6% of customers buying Citrus Fruit and Root Vegetables will simultaneously purchase Other Vegetables (Confidence: 0.586), demonstrating a highly predictable fresh-produce purchasing pattern.
Meat & Veggie Pairings: 
Identified a strong link where customers buying Beef are highly likely to purchase Root Vegetables (Lift: 3.040).

Technologies & Libraries

Language: R
Libraries: arules, arulesViz, readr
