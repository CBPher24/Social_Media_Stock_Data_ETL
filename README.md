# Social_Media_Stock_Data_ETL
pulling data for Twitter and Facebook so stock prices can be compared throughout the years

Project Proposal:
Cites of data being used to compare:
https://www.kaggle.com/datasets/amandam1/twitter-daily-stock-prices-20132022
https://www.kaggle.com/datasets/kalilurrahman/facebook-stock-data-live-and-latest

The final production will be relational data that we will be pushing into a Postgress SQL table. The data will be joined on the date the stock values were captured.

The data we are capturing and pulling together will allow comparisons to be made between Facebook and Twitter's stock information. For each company, the data will have the following: date, open price, highest price, lowest price, closing price, and volume sold. This will allow a quick comparison between the two companies so that someone could compare the price of stock and the volume sold on each day. There will be three columns to be dropped from the data after it is pulled. In the Twitter data, the adjusted closing cost was identical to the closing cost and no relative data was shared with Facebook. In the Facebook data, Dividends and Stock Splits contained only zero value and no relative data was shared with Twitter.

<!-- We will be focusing on the trends between two major social media sites comparing the volume and stock prices for each day. We will specifically be looking at the trend of volume sold between the two companies.  -->