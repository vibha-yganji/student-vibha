---
toc: True
comments: True
title: Individual Data Structures Reflection
layout: post
courses: {'compsci': {'week': 11}}
description: Data Structures writeup
---

## Python Model code + SQLite Database.

 **From VSCode using SQLite3 Editor, show your unique collection/table in database, display rows and columns in the table of the SQLite database.**

For this project, I have made a feature that allows the user to enter and keep track of their own personal recipes through their own database that contains the recipe name, the healthy ingredients in the recipe, the steps, and difficulty of the recipe as well. 

SQLite database for recipes: 
<img src = "https://i.ibb.co/0QR9fCh/Screenshot-2024-04-23-at-7-08-49-PM.png">

*From VSCode model, show your unique code that was created to initialize table and create test data.*

The database code for the recipe model was created through the following code:

<img src = "https://i.ibb.co/9W3xKBS/Screenshot-2024-04-23-at-7-16-57-PM.png">

*The testing data to initialize the database was created through the following code:* 

<img src = "https://i.ibb.co/PFLg6Mc/Screenshot-2024-04-23-at-7-12-28-PM.png">

-----

## Lists and Dictionaries

**Blog Python API code and use of List and Dictionaries.**

*In VSCode using Debugger, show a list as extracted from database as Python objects.*

- Debugging while performing a GET request from the frontend results in the display of all existing recipes in the database as a list. 

<img src = "https://i.postimg.cc/ZqTVpb3T/Screenshot-2024-05-09-at-6-51-29-PM.png">

*In VSCode use Debugger and list, show two distinct example examples of dictionaries, show Keys/Values using debugger.*

- Example of dictionary from recipe model
- Display of the key/value pairs for each recipe object

<img src = "https://i.ibb.co/Z6Ry1qh/Screenshot-2024-04-23-at-7-36-19-PM.png">

- Example of dictionary from hotline model
- Display of the key/value pairs for each hotline object

<img src = "https://i.ibb.co/FBTjmxM/Screenshot-2024-04-24-at-8-32-44-AM.png">

-----




## APIs and JSON

Blog Python API code and use of Postman to request and respond with JSON.

*In VSCode, show Python API code definition for request and response using GET, POST, UPDATE methods. Discuss algorithmic condition used to direct request to appropriate Python method based on request method.*

- Below is the API code for dealing with GET and POST requests from the frontend for the recipe feature. 
- The get() and post() functions within this code are responsible for handling the response to the frontend requests. 


<img src = "https://i.ibb.co/FwzBB0m/Screenshot-2024-04-23-at-7-46-36-PM.png">
<img src = "https://i.ibb.co/xfzS07F/Screenshot-2024-04-23-at-11-54-34-PM.png">

-----

*In VSCode, show algorithmic conditions used to validate data on a POST condition.*

- In the following code, the length of each variable is checked.

<img src = "https://i.ibb.co/fC3Zsq8/Screenshot-2024-04-23-at-7-51-53-PM.png">

*In Postman, show URL request and Body requirements for GET, POST, and UPDATE methods.*

- URL Request in Postman for GET Method

<img src = "https://i.ibb.co/dpfwMZb/Screenshot-2024-04-23-at-7-55-21-PM.png">

- URL Request in Postman for POST Method

<img src = "https://i.ibb.co/fC7kDZV/Screenshot-2024-04-23-at-8-10-12-PM.png">

- URL Request in Postman for PUT method

<img src = "https://i.ibb.co/Rhnycgg/Screenshot-2024-05-09-at-7-53-18-PM.png">

*In Postman, show the JSON response data for 200 success conditions on GET, POST, and UPDATE methods.*

- Postman success for a GET request
<img src = "https://i.ibb.co/L6mntQg/Screenshot-2024-04-23-at-7-58-00-PM.png">


- Postman success for a POST request 
<img src="https://i.ibb.co/bPzLWpg/Screenshot-2024-04-23-at-8-05-32-PM.png">

*In Postman, show the JSON response for error for 400 when missing body on a POST request.*

- 404 error on a POST request
<img src = "https://i.ibb.co/yPYC0Db/Screenshot-2024-04-23-at-8-23-35-PM.png">

**In Postman, show the JSON response for error for 404 when providing an unknown user ID to a UPDATE request.**
- Update functionality has not been implemented in my backend code

----
## Frontend

Blog JavaScript API fetch code and formatting code to display JSON.

*In Chrome inspect, show response of JSON objects from fetch of GET, POST, and UPDATE methods.*

- JSON object response for a GET request

<img src = "https://i.ibb.co/wsTVj6R/Screenshot-2024-05-09-at-7-47-25-PM.png">
<img src = "https://i.ibb.co/80kwCM4/Screenshot-2024-05-09-at-7-48-36-PM.png">

- JSON object response for a POST request

<img src = "https://i.ibb.co/19dVh58/Screenshot-2024-05-09-at-8-56-14-PM.png">

*In the Chrome browser, show a demo (GET) of obtaining an Array of JSON objects that are formatted into the browsers screen.*

- the array of JSON objects is received 
<img src = "https://i.ibb.co/wsTVj6R/Screenshot-2024-05-09-at-7-47-25-PM.png">


- the array is then formatted on the browser

<img src = "https://i.ibb.co/qBrR3Qt/Screenshot-2024-05-09-at-7-51-09-PM.png">
<img src = "https://i.ibb.co/x6L3zZq/Screenshot-2024-05-09-at-7-51-31-PM.png">


*In JavaScript code, describe fetch and method that obtained the Array of JSON objects.*

A post request was sent to the backend and the data was received from the frontend.

*In JavaScript code, show code that performs iteration and formatting of data into HTML.*

- The response from the backend for the GET request is formatted as a table in the browser. 

<img src = "https://i.ibb.co/yXjtHfk/Screenshot-2024-05-09-at-8-11-29-PM.png">

*In the Chrome browser, show a demo (POST or UPDATE) gathering and sending input and receiving a response that show update. Repeat this demo showing both success and failure.*

- User enters their values in each of the respective fields:
<img src = "https://i.ibb.co/sgSjGQx/Screenshot-2024-05-09-at-7-55-53-PM.png">

-  Addition of the recipe is shown to be succesful
<img src = "https://i.ibb.co/jfbHYHf/Screenshot-2024-05-09-at-7-57-01-PM.png">


*In JavaScript code, show and describe code that handles success. Describe how code shows success to the user in the Chrome Browser screen.*

- If the response from the backend is succesful, the user will see a "Recipes Updated" statment printed on their screen.

<img src = "https://i.ibb.co/pf8sFWZ/Screenshot-2024-04-23-at-10-08-12-PM.png">

*In JavaScript code, show and describe code that handles failure. Describe how the code shows failure to the user in the Chrome Browser screen.*

- If the response from the backend is unsuccesful, the above code will be run to indicate that there was a failure in submitting the recipe with "Error submitting recipe" being printed on the screen. 

<img src = "https://i.ibb.co/pX1f0Wj/Screenshot-2024-05-09-at-8-01-58-PM.png">

## Optional/Extra, Algorithm Analysis
*In the ML projects, there is a great deal of algorithm analysis. Think about preparing data and predictions.*

- Our Ml project dealt with keeping yourself healthy and invovled varrious features including a stroke and heart attack prediction.

*Show algorithms and preparation of data for analysis. This includes cleaning, encoding, and one-hot encoding.*

- The stroke dataset required dropping 3 columns from the original dataset (the ID, marriage status, and the type of work that each individual does) as I deemed these variables to be unnecessary/not relevant. 

<img src = "https://i.ibb.co/Sf7V67Q/Screenshot-2024-04-24-at-7-49-59-AM.png">

*Show algorithms and preparation for predictions.*

- A Decision Tree classifier was used to predict the probability of stroke. 

<img src = "https://i.ibb.co/jVX2ddn/Screenshot-2024-04-24-at-7-55-27-AM.png">
<img src = "https://i.ibb.co/qNBb6nv/Screenshot-2024-04-24-at-7-57-10-AM.png">

*Discuss concepts and understanding of Linear Regression algorithms.*

- Linear regression is a fundamental statistical technique used for modeling the relationship between a dependent variable and one or more independent variables. It assumes a linear relationship between the independent variables (predictors) and the dependent variable (outcome).

*Discuss concepts and understanding of Decision Tree analysis algorithms.*

- Decision trees operate by attmepting to recursively partition the data into subsets based on the values of input features, creating a tree-like structure where each internal node represents a decision based on a feature, each branch represents the outcome of that decision, and each leaf node represents the final decision or outcome.

<img src = "https://miro.medium.com/v2/resize:fit:1400/1*WEfyLSokUB1mQMoJH2NhBw.png">

- The above image shows the advantages and disadvantages of each type of model. I chose to use Decision Tree for my stroke model as it performed with a higher accuracy when tested on the test data.


## Deployment Notes

**Important Reminders**
- insert everything into config.js to automatically detect whether to use deployed or locahlhost link (conditionals to test for which URI to use; uri, options can be imported from config.js)
- 3 things to deal w/ **nginx: Credentials, Origin, Method should be changed** (credentials, cors, cookies)
- cors code should be moved from main.py to _init.py
- @token_required should be guarding certain API endpoints but also returns the current user who is accesing that endpoint (it is currently defined in auth_middleware.py file) - the cookie is like your global storage for your uid; no need for other global backend variables
- CRSF is for additional security 
- Certbot is needed to change from HTTP ---> HTTPS.

**When to use @token_required**
- POST requessts for signing up + creating new users + logging/authorizing users should be unguarded (no @token_required)
- GET requests for fetching user data, PUT request for user update, DELETE request for removal of user from database
- @token_required function checks for token, certain roles, or any ambiguous errors w/ the token; if succesful, the funtion will return to the current user which is found after a database query
- any filters on what the user can see after logging in should be added to the @token_required function

**options import for every api script**
- most of the time when you login, you should redirect the user (can either go to user database or page with uid on top)
- import of options from config.js can be overrided (by convention, you should **always** import); not importing options can cause cors errors

**login backend code**
- inputs should be validated as always (these errors will be processed in frontend); standardized HTTP errors for REST APIs are standardized + will always be used

**cb requirements**
- for loop + formatting of data in frontend

**DevOps**
- port numbers in docker file should always be changed
- gunicorn will start Python??
- parallalel processing can be done by running multiple instances at once (can be good when accesing databases)
- file name should also be changed in focker-compose.yml
- server name + port number should be changed in nginx config file (methods can also be changed in the options header)
- location of database, CRSF can be changed in _init.py (mounting instance is done in docker-compose.yml); if you shut down docker container and don't have an instance outside, the data from database will persist 

**CB Questions**
- concepts we went over:
full stack tranfer of data between frontend and backend server
- falut tolerant netoworks
- parallel + distributed computing (by nature, the website is a parallel system; it is a distributed system that can act in parallel: the number of workers can be increased in the config file)

