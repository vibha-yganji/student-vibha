---
toc: False
comments: True
title: CPT Project Individual Writeup
layout: post
courses: {'compsci': {'week': 11}}
description: My reflection and write-up of both my group's CPT project and what I've learned over the past trimester!
---

### **Component A: Program Code**

#### <strong> CPT Requirements: </strong>
[Link to CPT Requirements](https://apcentral.collegeboard.org/media/pdf/ap-csp-student-task-directions.pdf)

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
      </ul>
    </td>
  </tr>
  <tr>
    <td>(2) Use at least one list (or other collection type) to represent a collection of data that is stored and used to manage program complexity and help fulfill the program’s purpose</td>
    <td>
      <ul>
        <li>The profile display/dashboard page makes use of local storage to store multiple variables including the weight, height, caloric intake, and other information about a user.</li>
        <li><a href="https://ibb.co/f9Yv12V">2nd requirement</a></li>
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
      </ul>
    </td>
  </tr>
  <tr>
    <td>(4) An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure</td>
    <td>
      <ul>
        <li>The calculateBMI() function uses an if/else conditional to test for the presence of both the height and weight variables. After doing so, it <strong>selects</strong> the route where the BMI is calculated. If the weight and height variables were not provided by the user, the algorithm would select a path where it would instead inform the user to enter valid values for the required variables. This function iterates through two potential paths for the program.</li>
        <li><a href="https://ibb.co/q0DQwm8">4th requirement</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>(5) Calls to your student-developed procedure</td>
    <td>
      <ul>
        <li>The updateProfilePicture() function is called within the profile_creation file to update the div element that offers a preview of the selected profile picture with the picture that the user has chosen.</li>
        <li><a href="https://ibb.co/Y7VSH3w">5th requirement</a></li>
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
      </ul>
    </td>
  </tr>
</table>

     

### **Component B: Video**

[Link to video](https://drive.google.com/file/d/1dd9mNGS1VfuugNmz_tCOHt6IEOTvmcrA/view)

| Requirements                              | Description |
|------------------------------------------------|--------------|
| **Input to your program** | The user's selection of their profile picture and thier entry of their height and weight is displayed.    |
|**At least one aspect of the functionality of your program**| The array of 4 different ASCII profile pictures is displayed.  |
|**Output produced by your program**              |  The BMI is calculated and the profile picture is diplayed in both the upper right div of the page and on the profile picture section of the profile_display page.            |
|**Your video may NOT contain any distinguishing information about yourself/voice narration (though text captions are encouraged)** | No voice narration was present and captions were provided.     |         |
|**Your video must be either .webm, .mp4, .wmv, .avi, or .mov format, no more than 1 minute in length, and no more than 30MB in file size**|   .mp4 format was used, video was 57 seconds in length and 11.7 MB in size.           |


### <strong> Reflection </strong>

The past trimester has been very instrumental in advancing my understanding of the College Board requriements and expectations for an AP CSP student as I struggled during the first trimester in understanding how to apply the code that we were shown in class. A variety of new concepts have been introduced to me this trimester as well which I list in the following section. 

### Concepts/Lessons

I have compiled a brief list of all the new concepts that I have learned a lot about during this trimester. 
<br>
- **@token_required/decrorator functions:** When doing the first spot check, I would be able to authenticate on Postman without the JWT token. I latet learned that this means that the corresponding part of the code where the user is able to authenticate themself does not have a @token_required function. This function is required to protect routes and prevent unauthorized authentication.
- **JWT authentication (concept):** JWT is an abbreviation for JSON web token which is a method of transmitting encrytped information betwen two parties. The three parts of a JWT token are the header, payload, and signature. The payload is the aspect of the token that is responsible for storing the "data" of the transmission and contains the encrypted information. The payload can be decrypted using tools such as jwt.io that requires a token prior to decrypting. 
