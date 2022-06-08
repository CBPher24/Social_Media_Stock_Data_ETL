CREATE TABLE fb_stocks (
  "Date" date NOT NULL,
  "Open" FLOAT NOT NULL,
  "High" FLOAT NOT NULL,
  "Close" FLOAT NOT NULL,
  "Low" FLOAT NOT NULL,
  "Volume" INT NOT NULL,
  CONSTRAINT "pk_FB_Stocks" PRIMARY KEY(
        "Date")
);

CREATE TABLE twitter_stocks (
  "Date" date NOT NULL,
  "Open" FLOAT NOT NULL,
  "High" FLOAT NOT NULL,
  "Close" FLOAT NOT NULL,
  "Low" FLOAT NOT NULL,
  "Volume" INT NOT NULL,
  CONSTRAINT "pk_Twitter_Stocks" PRIMARY KEY(
        "Date")
);