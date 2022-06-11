# **Social_Media_Stock_Data_ETL**

*Group Members: Sravitha Matlapudi and Christopher Partee*

Growth is the prime metric for development for any business/company. In the financial domain, stocks are essential to the analysis for growth. We decided to focus particularily on social media platforms which are widely used and monitered by the public. Our purpose is to create a database that contains the daily stocks values for different social media platforms. The final datasets can be either relational or nonrelational. Since we are looking at daily values of stock prices, the data can be related between the dates the data was captured.  

>>### Datasets to be Used: From Kaggle
>>- https://www.kaggle.com/datasets/amandam1/twitter-daily-stock-prices-20132022
>>- https://www.kaggle.com/datasets/kalilurrahman/facebook-stock-data-live-and-latest


## **ETL Processing**

### **Extract**
The data was retrieved from Kaggle leveraging the data sets in the form of .csv format. The respective files, for twitter daily stocks and facebook daily stocks, can be found in the "Resources" folder.

### **Transform**
Each social media platform/company table will have the following columns:
 - date (Primary Key) 
 - open, high, low, close (daily stock prices) 
 - volume (daily loads)
 
 This will allow a quick comparison between the two companies so that someone could compare the price of stock and the volume sold on each day. Additionally There are three columns that are to be dropped from the database tables. In the Twitter daily stocks table, the adjusted closing cost was identical to the closing cost and this column did not exist in the Facebook daily stocks table. In the Facebook data, Dividends and Stock Splits contained only the value "zero" and these columns were not shared with Twitter daily stocks table. In conclusion, because these columns contained no significant data the columns were dropped. 

 The cleanup was performed via *Jupyter Notebook*, using the Pandas toolkit. Before loading the data into the associated database tables, the .csv files were converted into dataframes:

Facebook Dataframe:

![Facebook Dataframe](images/FB_Clean_DataFrame.png)

Twitter Dateframe:

![Twitter Dataframe](images/Twitter_Clean_DataFrame.png)

### **Load**
Using SQL file (which can be found in this repository as "schema.sql"), the following required Database and associated tables were created in PostgreSQL:
- SocialMedia_stocks_DB (database)
- fb_stocks (table)
- twitter_stocks (table)

Newly created tables are loaded with the values from csv by connecting jupyter notebook to PostGreSQL. Using sqlalchemy, created an engine in order to connect to the database. Data is loaded into database tables based on final data structure of dataframes.  
