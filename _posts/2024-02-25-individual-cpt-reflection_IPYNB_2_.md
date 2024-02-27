---
toc: False
comments: True
title: CPT Project Individual Writeup
layout: post
courses: {'compsci': {'week': 11}}
description: My reflection and write-up of both my group's CPT project and what I've learned over the past trimester!
---

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project Details</title>
</head>
<body>

<p>My group's project focuses on tracking health data through a variety of features including food, water, exercise, and sleep. The features I mainly contributed to was the profile page where users are able to select a profile picture. The profile_display page also offers a preview of the profile picture and the ability to update your name. It also functions as a dashboard where users can add their height, weight, and other variables to track their health.</p>

<p>Here are some of my key commits over the course of my project:</p>
<ul>
  <li><a href="https://github.com/jplip/frontTri2/commit/cb957f1c20981fca7f76833139d1cc6cfae5010e">Profile Edits</a></li>
  <li><a href="https://github.com/jplip/frontTri2/commit/6bd2945379ef06fce428c6c7fff173d9dbe44f9b">Addition of Dashboard Features</a></li>
</ul>

<h3>Component A: Program Code</h3>

<strong>CPT Requirements:</strong>
<a href="https://apcentral.collegeboard.org/media/pdf/ap-csp-student-task-directions.pdf">Link to CPT Requirements</a>

<table>
  <tr>
    <th>Requirement</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>(1) Input from user/device/online data stream/file:</td>
    <td>
      <ul>
        <li>A variety of features on our project require user input including the login, registration, and profile pages.</li>
        <li><strong>Specific example:</strong> the profile display page takes in a user's height, weight, and other health data.</li>
        <li><a href="https://ibb.co/jRbjn2L">1st Requirement</a></li>
        <img src="https://i.ibb.co/L5YsVWC/Screenshot-2024-02-25-at-6-03-32-PM.png" alt="1st Requirement Screenshot">
      </ul>
    </td>
  </tr>
  <tr>
    <td>(2) Use at least one list (or other collection type) to represent a collection of data that is stored and used to manage program complexity and help fulfill the program’s purpose</td>
    <td>
      <ul>
        <li>The profile display/dashboard page makes use of local storage to store multiple variables including the weight, height, caloric intake, and other information about a user.</li>
        <li><a href="https://ibb.co/f9Yv12V">2nd requirement</a></li>
        <img src="https://i.ibb.co/FXbVxKk/Screenshot-2024-02-25-at-8-22-06-PM.png" alt="2nd Requirement Screenshot">
        <li>Other pages of our project such as the login page make use of JSON which is a storage mechanism to keep track of the several variables that we use.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>(3) At least one procedure that contributes to the program’s intended purpose, where you have defined the procedure’s name/the return type (if necessary)/one or more parameters</td>
    <td>
      <ul>
        <li>The profile creation page requires the use of many functions such as getProfileImage, getProfileAscii (this function requires the use of a singular parameter), and getSelectedProfile to successfully allow a user to select an ASCII profile and update the website with the corresponding picture.</li>
        <li><a href="https://ibb.co/wS12Cb9">3rd requirement</a></li>
        <img src="https://i.ibb.co/dPyH63d/Screenshot-2024-02-25-at-8-24-59-PM.png" alt="3rd Requirement Screenshot">
      </ul>
    </td>
  </tr>
  <tr>
    <td>(4) An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure</td>
    <td>
      <ul>
        <li>The loggedInUserName() function uses an if/else condition to test if the user is logged in. The first path that the program can take if the condition evaluates to True is to print both the username and UserID. If the conditional evaluates to False, the program will take the path where the it prints a message that the user is not logged in.</li>
        <img src="https://i.ibb.co/6JFT3F7/Screenshot-2024-02-26-at-8-26-23-PM.png" alt="4th Requirement Screenshot">
        <li>The calculateBMI() function uses an if/else conditional to test for the presence of both the height and weight variables. After doing so, it <strong>selects</strong> the route where the BMI is calculated. If the weight and height variables were not provided by the user, the algorithm would select a path where it would instead inform the user to enter valid values for the required variables. This function iterates through two potential paths for the program.</li>
        <li><a href="https://ibb.co/q0DQwm8">4th requirement (2nd example)</a></li>
        <img src="https://i.ibb.co/bH69nNV/Screenshot-2024-02-25-at-8-27-01-PM.png" alt="4th Requirement (2nd example) Screenshot">
      </ul>
    </td>
  </tr>
  <tr>
    <td>(5) Calls to your student-developed procedure</td>
    <td>
      <ul>
        <li>The updateProfilePicture() function is called within the profile_creation file to update the div element that offers a preview of the selected profile picture with the picture that the user has chosen.</li>
        <li><a href="https://ibb.co/Y7VSH3w">5th requirement</a></li>
        <img src="https://i.ibb.co/4Z0Lh73/Screenshot-2024-02-25-at-8-28-41-PM.png" alt="5th Requirement Screenshot">
      </ul>
    </td>
  </tr>
  <tr>
    <td>(6) Instructions for output (tactile, audible, visual, or textual) based on input and program functionality</td>
    <td>
      <ul>
        <li>After user chooses their profile picture from the set of ASCII characters, the picture appears in both the upper right corner and on the profile_creation page.</li>
        <li>After users enter their weight and height on the profile_display page, they are able to calculate their BMI.</li>
        <li><a href="https://ibb.co/mFs999m">6th requirement</a></li>
        <img src="https://i.ibb.co/DgX999N/Screenshot-2024-02-25-at-8-30-50-PM.png" alt="6th Requirement Screenshot">
      </ul>
    </td>
  </tr>
</table>

<h3>Component B: Video</h3>

<a href="https://drive.google.com/file/d/1dd9mNGS1VfuugNmz_tCOHt6IEOTvmcrA/view">Link to video</a>

<table>
  <tr>
    <th>Requirements</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Input to your program</td>
    <td>The user's selection of their profile picture and their entry of their height and weight is displayed.</td>
  </tr>
  <tr>
    <td>At least one aspect of the functionality of your program</td>
    <td>The array of 4 different ASCII profile pictures is displayed.</td>
  </tr>
  <tr>
    <td>Output produced by your program</td>
    <td>The BMI is calculated and the profile picture is displayed in both the upper right div of the page and on the profile picture section of the profile_display page.</td>
  </tr>
  <tr>
    <td>Your video may NOT contain any distinguishing information about yourself/voice narration (though text captions are encouraged)</td>
    <td>No voice narration was present and captions were provided.</td>
  </tr>
  <tr>
    <td>Your video must be either .webm, .mp4, .wmv, .avi, or .mov format, no more than 1 minute in length, and no more than 30MB in file size</td>
    <td>.mp4 format was used, video was 57 seconds in length and 11.7 MB in size.</td>
  </tr>
</table>

<h3>Peer Review</h3>

<p>Lakshanya and I peer-graded each others' articles and Lakshanya offered me the following feedback:</p>

<p><strong>Overall Score:</strong> 5/5<br>
This shows a good understanding of code function and components, as well as an organized presentation of the requirements. Clear description of feature was included and good reflection/lessons shows growth. Extra for submitting early.</p>

<p><strong>Improvements:</strong></p>
<ul>
  <li>I believe the 4th requirement is supposed to demonstrate the same procedure as the one you chose before (Ascii or profile picture instead of BMI)</li>
  <li>For 6th requirement, it asks for output instructions for functionality not input, so probably better suited to include fetch code/fetch explanation</li>
  <li>The video captions were a bit lengthy, it might be better to space out a bit more</li>
</ul>

<p>During our peer-review, Lakshanya also helped me fix the images on my website.</p>

<h3>Concepts/Lessons</h3>

<p>I have compiled a brief list of all the new concepts that I have learned a lot about during this trimester.</p>
<ul>
  <li><strong>@token_required/decorator functions:</strong> When doing the first spot check, I would be able to authenticate on Postman without the JWT token. I later learned that this means that the corresponding part of the code where the user is able to authenticate themself does not have a @token_required function. This function is required to protect routes and prevent unauthorized authentication.</li>
  <li><strong>JWT authentication (concept):</strong> JWT is an abbreviation for JSON web token which is a method of transmitting encrypted information between two parties. The three parts of a JWT token are the header, payload, and signature. The payload is the aspect of the token that is responsible for storing the "data" of the transmission and contains the encrypted information. The payload can be decrypted using tools such as jwt.io that requires a token prior to decrypting.</li>
</ul>

</body>
</html>

