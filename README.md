#Zomato-Analysis
Exploratory data analysis of the Zomato restaurants dataset (9,551 restaurants across 15 countries), built using Python (NumPy, Pandas, Matplotlib) and SQL. The project covers data cleaning, city and cuisine trends, rating distribution, the impact of price range and delivery options on ratings, a final summary dashboard, and a set of SQL queries for practicing the same analysis in a database.

--About the Dataset

The data comes from Zomato's restaurant listings and includes details like restaurant name, location, cuisines, cost for two, price range, ratings, votes, and whether the restaurant offers online delivery or table booking.

zomato.csv — the raw dataset (9,551 restaurants, 21 columns)
Country-Code.xlsx — a lookup table mapping numeric country codes to country names
zomato_clean_dataset.csv — the cleaned dataset produced by the notebook
SQL_Queries.sql — SQL practice queries (table creation + analysis) written for the same dataset
What the Notebook Does
Load the data — reads the CSV and Excel files
Clean the data — merges in country names, removes duplicates, renames columns, handles missing values
Explore with statistics — basic descriptive stats using NumPy and Pandas
Build a dashboard — combines the key metrics and charts into a single summary image

--Answer key questions
Which cities have the most restaurants?
Which cuisines are most common?
Does online delivery or table booking affect rating?
How does price range relate to rating?
Visualize the findings — bar charts, a histogram, and a scatter plot using Matplotlib

--SQL Queries
SQL_Queries.sql creates a restaurants table matching the cleaned dataset and includes practice queries covering:

Total restaurants and restaurants per country
Top cities by restaurant count
Average rating by price range
Effect of online delivery on rating
Top-rated restaurants (filtered by a minimum vote count)
Most popular (most-voted) restaurants
Cost range per country

--Tools Used
Python
NumPy
Pandas
Matplotlib
SQL
VS Code

--How to Run This Project
Clone this repository
Install the required libraries:
   pip install numpy pandas matplotlib openpyxl
Open zomato_dataset_analysis.ipynb in VS Code (with the Jupyter extension installed)
Run all cells from top to bottom

--Zomato-Analysis Steps
zomato_dataset_analysis.ipynb
zomato.csv
Country-Code.xlsx
zomato_clean_dataset.csv
SQL_Queries.sql
Images/Dashboard.png
README.md

Author
Sakshi Fauzdar
