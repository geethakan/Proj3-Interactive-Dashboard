<img align=left src="https://github.com/geethakan/Proj3-Interactive-Dashboard/blob/main/static/images/logoandtext.png">
  
# Storytelling thru Data Visualization
  
This is a group project aimed to utilize many different skillsets for an interactive dashboard. 


## Contributors
  
- Geetha Kandukuri
- Anjelica Hussar
- Jasmine Huang
  
## Languages Used
* Python: Beautiful Soup, Pandas, SQL Alchemy
* Javascript
* HTML
* CSS
* PostgreSQL


## ETL Process

### 1. Source of data:

Web scraping from [Tripadvisor's top 25 Traveler’s Choice Award ]( https://www.tripadvisor.com/TravelersChoice)

The categories selected for scraping:
* Destinations
* Beaches
* Hotels
* Restaurants
* Things to Do

### 2. Web Scraping

* BeautifulSoup used for web scrapping. First set of data scraped from category page for the top 25 of each category.
* Results stored in csv
* Review counts scraped for each item of the category using rating url from first dataset
* Geoapify API call used to get the co-ordinates of the location

### 3. Data Cleanup

* Custom generated unique Id to identify each category item (Category + Rank).
* Scraped numerical values converted from text to int or float
* Missing values (Destination category missing reviews for 2022) substituted with zeros
* Main dataset and review dataset merged into a single dataframe
* Columns dropped (eg. RatingUrl) and columns rearranged

### 4. Export the data to json and PostGreSQL

* Individual categories saved a separate json files from merged dataframe for the category
* All categories merged into a single dataframe and bulk inserted to PostgreSQL table using SQL Alchemy

# Processing Data for Interactive Visualization

* Dashboard with menu option to select category for viewing the data

* Use Javascript to populate leaflet map for the category chosen with custom markers for locations

* Use Plotly to create donut subplots to display the count of customer reviews (categorized as Excellent, Very Good, Average, Poor and Terrible)

* Use d3.js to build list of images from the image url scraped

* Cooperate with HTML and custom CSS to finish our dashbaord


# Main Takeaways from this project

* Planned for a visualization exercise covering many skillsets

* ETL covering web scraping, API, data wrangling and handling multiple formats of data (csv, json, SQL)

* Beautiful visualization from dashboard using javascript libraries d3, leaflet and Plotly subplots

* Web rendering using custom HTML and css

<img align=left src="https://github.com/geethakan/Proj3-Interactive-Dashboard/blob/main/static/images/logoandtext.png">
