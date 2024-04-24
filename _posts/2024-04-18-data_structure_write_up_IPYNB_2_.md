---
toc: False
comments: True
title: Individual Data Structures Reflection
layout: post
courses: {'compsci': {'week': 11}}
description: None
---

### Python Model code + SQLite Database.

**From VSCode using SQLite3 Editor, show your unique collection/table in database, display rows and columns in the table of the SQLite database.**

For this project, I have made a feature that allows the user to enter and keep track of their own personal recipes through their own database that contains the recipe name, the healthy ingredients in the recipe, the steps, and difficulty of the recipe as well. 

SQLite database for recipes: 
<img src = "https://i.ibb.co/0QR9fCh/Screenshot-2024-04-23-at-7-08-49-PM.png">

From VSCode model, show your unique code that was created to initialize table and create test data.

The database code for the recipe model was created through the following code:

<img src = "https://i.ibb.co/9W3xKBS/Screenshot-2024-04-23-at-7-16-57-PM.png">

The testing data to initialize the database was created through the following code: 

<img src = "https://i.ibb.co/PFLg6Mc/Screenshot-2024-04-23-at-7-12-28-PM.png">

## Lists and Dictionaries

**Blog Python API code and use of List and Dictionaries.**

In VSCode using Debugger, show a list as extracted from database as Python objects.

<img src = "https://i.ibb.co/Qjgpt4z/Screenshot-2024-04-23-at-7-27-32-PM.png">

In VSCode use Debugger and list, show two distinct example examples of dictionaries, show Keys/Values using debugger.

- Example of dictionary from recipe model

<img src = "https://i.ibb.co/Z6Ry1qh/Screenshot-2024-04-23-at-7-36-19-PM.png">

- **Example of dictionary from hotline model (FINISH THIS)**




## APIs and JSON
Blog Python API code and use of Postman to request and respond with JSON.

In VSCode, show Python API code definition for request and response using GET, POST, UPDATE methods. Discuss algorithmic condition used to direct request to appropriate Python method based on request method.

- Below is the API code for dealing with GET and POST requests from the frontend for the recipe feature. 
- The get() and post() functions within this code are responsible for handling the response to the frontend requests. 

<img src = "https://i.ibb.co/FwzBB0m/Screenshot-2024-04-23-at-7-46-36-PM.png">

<img src = "https://i.ibb.co/ZNYjDjs/Screenshot-2024-04-23-at-7-46-51-PM.png">
In VSCode, show algorithmic conditions used to validate data on a POST condition.
- In the following code, the length of each variable is checked.
<img src = "https://i.ibb.co/fC3Zsq8/Screenshot-2024-04-23-at-7-51-53-PM.png">

In Postman, show URL request and Body requirements for GET, POST, and **UPDATE methods.**

- URL Request in Postman for GET Method

<img src = "https://i.ibb.co/dpfwMZb/Screenshot-2024-04-23-at-7-55-21-PM.png">

- URL Request in Postman for POST Method

<img src = "https://i.ibb.co/fC7kDZV/Screenshot-2024-04-23-at-8-10-12-PM.png">

- URL Request in Postman for PUT method

<img src = "https://i.ibb.co/XZf9MX9/Screenshot-2024-04-23-at-8-36-53-PM.png">

In Postman, show the JSON response data for 200 success conditions on GET, POST, and UPDATE methods.

- Postman success for a GET request
<img src = "https://i.ibb.co/L6mntQg/Screenshot-2024-04-23-at-7-58-00-PM.png">


- Postman success for a POST request 
<img src="https://i.ibb.co/bPzLWpg/Screenshot-2024-04-23-at-8-05-32-PM.png">

In Postman, show the JSON response for error for 400 when missing body on a POST request.

- 404 error on a POST request
<img src = "https://i.ibb.co/yPYC0Db/Screenshot-2024-04-23-at-8-23-35-PM.png">

**In Postman, show the JSON response for error for 404 when providing an unknown user ID to a UPDATE request.**
- Update functionality has not been implemented correctly in my backend code

### Blog JavaScript API fetch code and formatting code to display JSON.

In Chrome inspect, show response of JSON objects from fetch of GET, POST, and UPDATE methods.

In the Chrome browser, show a demo (GET) of obtaining an Array of JSON objects that are formatted into the browsers screen.

In JavaScript code, describe fetch and method that obtained the Array of JSON objects.

In JavaScript code, show code that performs iteration and formatting of data into HTML.

In the Chrome browser, show a demo (POST or UPDATE) gathering and sending input and receiving a response that show update. Repeat this demo showing both success and failure.

In JavaScript code, show and describe code that handles success. Describe how code shows success to the user in the Chrome Browser screen.

In JavaScript code, show and describe code that handles failure. Describe how the code shows failure to the user in the Chrome Browser screen.


### Optional/Extra, Algorithm Analysis
In the ML projects, there is a great deal of algorithm analysis. Think about preparing data and predictions.

Show algorithms and preparation of data for analysis. This includes cleaning, encoding, and one-hot encoding.
Show algorithms and preparation for predictions.

Discuss concepts and understanding of Linear Regression algorithms.

Discuss concepts and understanding of Decision Tree analysis algorithms.



---
### Deployment Notes

### Important Reminders
- insert everything into config.js to automatically detect whether to use deployed or locahlhost link (conditionals to test for which URI to use; uri, options can be imported from config.js)
- 3 things to deal w/ **nginx: Credentials, Origin, Method should be changed** (credentials, cors, cookies)
- cors code should be moved from main.py to _init.py
- @token_required should be guarding certain API endpoints but also returns the current user who is accesing that endpoint (it is currently defined in auth_middleware.py file) - the cookie is like your global storage for your uid; no need for other global backend variables
- CRSF is for additional security 
- Certbot is needed to change from HTTP ---> HTTPS.

### When to use @token_required
- POST requessts for signing up + creating new users + logging/authorizing users should be unguarded (no @token_required)
- GET requests for fetching user data, PUT request for user update, DELETE request for removal of user from database
- @token_required function checks for token, certain roles, or any ambiguous errors w/ the token; if succesful, the funtion will return to the current user which is found after a database query
- any filters on what the user can see after logging in should be added to the @token_required function

### options import for every api script
- most of the time when you login, you should redirect the user (can either go to user database or page with uid on top)
- import of options from config.js can be overrided (by convention, you should **always** import); not importing options can cause cors errors

### login backend code
- inputs should be validated as always (these errors will be processed in frontend); standardized HTTP errors for REST APIs are standardized + will always be used

### cb requirements
- for loop + formatting of data in frontend

### DevOps
- port numbers in docker file should always be changed
- gunicorn will start Python??
- parallalel processing can be done by running multiple instances at once (can be good when accesing databases)
- file name should also be changed in focker-compose.yml
- server name + port number should be changed in nginx config file (methods can also be changed in the options header)
- location of database, CRSF can be changed in _init.py (mounting instance is done in docker-compose.yml); if you shut down docker container and don't have an instance outside, the data from database will persist 

### CB Questions
- concepts we went over:
full stack tranfer of data between frontend and backend server
- falut tolerant netoworks
- parallel + distributed computing (by nature, the website is a parallel system; it is a distributed system that can act in parallel: the number of workers can be increased in the config file)

