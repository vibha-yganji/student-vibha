---
toc: False
comments: True
title: CPT Project Individual Writeup
layout: post
description: My reflection and write-up of both my group's CPT project and what I've learned over the past trimester!
---

## CPT Requirements:

<strong> (1) Input from user/device/online data stream/file: </strong>
- A variety of features on our project require user input including the login, registration, and profile pages.
- <strong> Specific example: </strong> the profile display page takes in a user's height, weight, and other health data.
- [1st Requirement](https://ibb.co/jRbjn2L)

<strong> (2) Use at least one list (or other collection type) to represent a collection of data that is stored and used to manage program complexity and help fulfill the program’s purpose </strong>
- The profile display/dashboard page makes use of local storage to store multiple variables including the weight, height, caloric intake, and other information about a user.
- [2nd requirement](https://ibb.co/f9Yv12V)
- Other pages of our project such as the login page make use of JSON which is a storage mechanism to keep track of the several variables that we use. 

<strong> (3) At least one procedure that contributes to the program’s intended purpose, where you have defined the procedure’s name/the return type (if necessary)/one or more parameters </strong>
- The profile creation page requires the use of many functions such as getProfileImage, getProfileAscii (this function requires the use of a singular parameter), and getSelectedProfile to successfully allow a user to select an ASCII profile and update the website with the corresponding picture. 
- [3rd requirement](https://ibb.co/wS12Cb9)
<strong> (4) An algorithm that includes sequencing, selection, and iteration that is in the body of the selected procedure </strong>

 1. The calculateBMI() function uses an if/else conditional to test for the presence of both the height and weight variables. After doing so, it **selects** the route where the BMI is calculated. If the weight and height variables were not provided by the user, the alogirthm would select a path where it would instead inform the user to enter valid values for the required variables. This function iterates through two potential paths for the program.  
 - [4th requirement] (https://ibb.co/q0DQwm8)

<strong> (5) Calls to your student-developed procedure </strong>
- The updateProfilePicture() function is called within the profile_creation file to update the div element that offers a preview of the selected profile picture with the picture that the user has chosen.
- [5th requirement] (https://ibb.co/Y7VSH3w)

<strong> (6) Instructions for output (tactile, audible, visual, or textual) based on input and program functionality </strong> 
- After user chooses their profile picture from the set of ASCII characters, the picture appears in both the upper right corner and on the profile_creation page. 
- After users enter their weight and height on the profile_display page, they are able to calculate their BMI. 
- [6th requirement] (https://ibb.co/mFs999m)

### <strong> Reflection </strong>

The past trimester has been very instrumental in advancing my understanding of the College Board requriements and expectations for an AP CSP student as I struggled during the first trimester in understanding how to apply the code that we were shown in class. A variety of new concepts have been introduced to me this trimester as well including. 

### Concepts/Lessons

I have compiled a brief list of all the new concepts that I have learned a lot about during this trimester. 
<br>
- **@token_required/decrorator functions:**
- **JWT authentication (concept):**
- **admin/user roles:**
