---
layout: post
toc: True
title: ML, Titanic Data
description: Exploring the Titanic dataset with machine learning.
courses: {'csp': {'week': 25}}
type: ccc
---

## Introduction to Pandas and ML
> Here is how Mort started on this assignment by asking ChatGPT  ... Regarding Python Pandas, what are some data sets that would be good for learning Pandas?

- There are many data sets that are suitable for learning pandas, depending on your interests and the skills you want to develop. 

    Here are some suggestions...

    - Titanic Dataset: This is a classic dataset for data analysis and machine learning, and is often used as an introduction to pandas. The dataset contains information about passengers on the Titanic, including their demographics, ticket class, and survival status.

    - Iris Dataset: This is another classic dataset that is often used in machine learning and data analysis courses. The dataset contains information about iris flowers, including their sepal length, sepal width, petal length, and petal width.

    - NBA Player Stats: This dataset contains information about NBA players, including their stats for various games, their positions, and their salaries. It is a great dataset for learning how to clean and manipulate data using pandas.

    - Housing Prices Dataset: This dataset contains information about housing prices in a particular city or region, including variables such as the number of bedrooms, square footage, and price. It is a great dataset for learning how to manipulate and analyze numerical data using pandas.

    - COVID-19 Dataset: This dataset contains information about the COVID-19 pandemic, including the number of cases, deaths, and recoveries in various countries and regions. It is a great dataset for learning how to manipulate and analyze time-series data using pandas.

    - World Bank Dataset: This dataset contains information about economic indicators from various countries, such as GDP, population, and poverty rates. It is a great dataset for learning how to manipulate and analyze large datasets using pandas.


- These are just a few examples of the many datasets that are suitable for learning pandas. The best dataset for you will depend on your interests and the specific skills you want to develop.


> Follow up question, "where can I find Titanic data set?"

- The Titanic dataset is a popular dataset for data analysis and machine learning, and it can be found on various websites and data repositories. Here are a few places where you can find the Titanic dataset...

    - Kaggle: The Titanic dataset is available on Kaggle, which is a popular platform for data scientists and machine learning enthusiasts. You can download the dataset from the Kaggle website after creating an account.

    - UCI Machine Learning Repository: The Titanic dataset is also available on the UCI Machine Learning Repository, which is a collection of datasets that are commonly used for machine learning research. You can download the dataset from the UCI Machine Learning Repository website.

    - Seaborn library: If you have the Seaborn library installed in your Python environment, you can load the Titanic dataset directly from the library using the following code:


### Titanic Libraries
Using the Titanic dataset will require importing data.

```python
    import seaborn as sns
    titanic_data = sns.load_dataset('titanic')
```


```python
# Uncomment the following lines to install the required packages
# !pip install seaborn
# !pip install pandas
# !pip install scikit-learn
```

### Titanic Data
> Look at a sample of data.


```python
import seaborn as sns

# Load the titanic dataset
titanic_data = sns.load_dataset('titanic')

print("Titanic Data")


print(titanic_data.columns) # titanic data set
display(titanic_data[['survived','pclass', 'sex', 'age', 'sibsp', 'parch', 'class', 'fare', 'embark_town', 'alone']]) # look at selected columns
```

### Clean Titanic Data
This is called 'Cleaning' data.  

Most analysis, like Machine Learning require data to be in standardized format...
- All data needs to be numeric
- Some data is removed, as it is not useable in study
- Sex and alone is changed to binary 
- The embark data is split into multiple columns



```python
import pandas as pd
# Preprocess the data
from sklearn.preprocessing import OneHotEncoder

td = titanic_data
td.drop(['alive', 'who', 'adult_male', 'class', 'embark_town', 'deck'], axis=1, inplace=True)
td.dropna(inplace=True) # drop rows with at least one missing value, after dropping unuseful columns
td['sex'] = td['sex'].apply(lambda x: 1 if x == 'male' else 0)
td['alone'] = td['alone'].apply(lambda x: 1 if x == True else 0)

# Encode categorical variables
enc = OneHotEncoder(handle_unknown='ignore')
enc.fit(td[['embarked']])
onehot = enc.transform(td[['embarked']]).toarray()
cols = ['embarked_' + val for val in enc.categories_[0]]
td[cols] = pd.DataFrame(onehot)
td.drop(['embarked'], axis=1, inplace=True)
td.dropna(inplace=True) # drop rows with at least one missing value, after preparing the data

print(td.columns)
display(td)
```

### Train Titanic Data
The result of 'Training' data is making it easier to analyze or make conclusions.

What conclusions can you make using min, max, means statistics bout the following...
- Given that 1-male and 0-femaale, what gender is more likely to suvive?
- Can you make an conclusions on fare?
- Can you make any conclusions on being alone?

#### Median Values


```python
print(titanic_data.median())
```

#### Perished Mean/Average


```python
print(titanic_data.query("survived == 0").mean())
```

#### Survived Mean/Average


```python
print(td.query("survived == 1").mean())
```

#### Survived Max and Min Stats


```python
print("maximums for survivors")
print(td.query("survived == 1").max())
print()
print("minimums for survivors")
print(td.query("survived == 1").min())
```

## Machine Learning 
<a href="https://www.tutorialspoint.com/scikit_learn/scikit_learn_introduction.htm#:~:text=Scikit%2Dlearn%20(Sklearn)%20is,a%20consistence%20interface%20in%20Python">Visit Tutorials Point</a>

> Scikit-learn is a powerful Python library for machine learning, offering tools for classification, regression, clustering, and dimensionality reduction.

- The Titanic dataset is a classic for data analysis and machine learning. We'll use machine learning techniques like Decision Trees and Logistic Regression to predict passenger survival. 

- [Decision Trees](https://scikit-learn.org/stable/modules/tree.html#tree) are a type of model used for both classification and regression. They work by creating a tree-like model of decisions based on the features. For example, in the context of the Titanic dataset, a Decision Tree might make decisions based on features like 'age', 'sex', and 'fare' to predict whether a passenger survived. The tree might first split by 'sex', then for each sex, split by 'age', and so on, creating a tree of decisions.

- [Logistic Regression](https://scikit-learn.org/stable/modules/linear_model.html#logistic-regression) is a statistical model used in machine learning for binary classification problems. It models the probabilities of the default class (e.g., the probability of a passenger surviving, in the context of the Titanic dataset). 

- After training our models, we'll evaluate their performance using accuracy, the percentage of correct predictions on unseen data.


```python
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

# Build distinct data frames on survived column
X = td.drop('survived', axis=1) # all except 'survived'
y = td['survived'] # only 'survived'

# Split arrays in random train 70%, random test 30%, using stratified sampling (same proportion of survived in both sets) and a fixed random state (42
# The number 42 is often used in examples and tutorials because of its cultural significance in fields like science fiction (it's the "Answer to the Ultimate Question of Life, The Universe, and Everything" in The Hitchhiker's Guide to the Galaxy by Douglas Adams). But in practice, the actual value doesn't matter; what's important is that it's set to a consistent value.
# X_train is the DataFrame containing the features for the training set.
# X_test is the DataFrame containing the features for the test set.
# y-train is the 'survived' status for each passenger in the training set, corresponding to the X_train data.
# y_test is the 'survived' status for each passenger in the test set, corresponding to the X_test data.
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# Train a decision tree classifier
dt = DecisionTreeClassifier()
dt.fit(X_train, y_train)

# Test the model
y_pred = dt.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print('DecisionTreeClassifier Accuracy: {:.2%}'.format(accuracy))  

# Train a logistic regression model
logreg = LogisticRegression()
logreg.fit(X_train, y_train)

# Test the model
y_pred = logreg.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print('LogisticRegression Accuracy: {:.2%}'.format(accuracy))  
```

### Predicting Survival
So, now we are ready to play the game... "Would I have survived the Titanic?".  

Insert your own data in the code.  Look at your analysis and consider how you would travel today.
- Data description:
    - pclass - Passenger Class (1 = 1st; 2 = 2nd; 3 = 3rd)
    - name - Name
    - sex - male or female
    - age - number of year 
    - sibsp - number of Siblings/Spouses Aboard
    - parch - number of Parents/Children Aboard
    - fare - passenger fare 0 to 512
    - embarked - Port of Embarkation (C = Cherbourg; Q = Queenstown; S = Southampton)
    - alone - boolean True or False


```python
import numpy as np

# Logistic regression model is used to predict the probability

# Define a new passenger
passenger = pd.DataFrame({
    'name': ['John Mortensen'],
    'pclass': [2], # 2nd class picked as it was median, bargains are my preference, but I don't want to have poor accomodations
    'sex': ['male'],
    'age': [64],
    'sibsp': [1], # I usually travel with my wife
    'parch': [1], # currenly I have 1 child at home
    'fare': [16.00], # median fare picked assuming it is 2nd class
    'embarked': ['S'], # majority of passengers embarked in Southampton
    'alone': [False] # travelling with family (spouse and child))
})

display(passenger)
new_passenger = passenger.copy()

# Preprocess the new passenger data
new_passenger['sex'] = new_passenger['sex'].apply(lambda x: 1 if x == 'male' else 0)
new_passenger['alone'] = new_passenger['alone'].apply(lambda x: 1 if x == True else 0)

# Encode 'embarked' variable
onehot = enc.transform(new_passenger[['embarked']]).toarray()
cols = ['embarked_' + val for val in enc.categories_[0]]
new_passenger[cols] = pd.DataFrame(onehot, index=new_passenger.index)
new_passenger.drop(['name'], axis=1, inplace=True)
new_passenger.drop(['embarked'], axis=1, inplace=True)

display(new_passenger)

# Predict the survival probability for the new passenger
dead_proba, alive_proba = np.squeeze(logreg.predict_proba(new_passenger))

# Print the survival probability
print('Death probability: {:.2%}'.format(dead_proba))  
print('Survival probability: {:.2%}'.format(alive_proba))
```

### Improve your chances
Is there anything you could do to improve your chances? 


```python
# Decision tree model is used to determine the importance of each feature

importances = dt.feature_importances_
for feature, importance in zip(new_passenger.columns, importances):
    print(f'The importance of {feature} is: {importance}')
```

## The code above needs to be reformed into Model (Python Class), View (JavaScript), Control (Python API)


```python
## Python Titanic Model

# Import the required libraries
from sklearn.tree import DecisionTreeClassifier
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import OneHotEncoder
import pandas as pd
import seaborn as sns

# Define the TitanicRegression global variable
titanic_regression = None

# Define the TitanicRegression class
class TitanicRegression:
    def __init__(self):
        self.dt = None
        self.logreg = None
        self.X_train = None
        self.X_test = None
        self.y_train = None
        self.y_test = None
        self.encoder = None

    def initTitanic(self):
        titanic_data = sns.load_dataset('titanic')
        X = titanic_data.drop('survived', axis=1)
        y = titanic_data['survived']
        self.X_train, self.X_test, self.y_train, self.y_test = train_test_split(X, y, test_size=0.3, random_state=42)

        # Initialize the encoder
        self.encoder = OneHotEncoder(handle_unknown='ignore')
        self.X_train = self.encoder.fit_transform(self.X_train)
        self.X_test = self.encoder.transform(self.X_test)

        self.dt = DecisionTreeClassifier()
        self.dt.fit(self.X_train, self.y_train)

        self.logreg = LogisticRegression()
        self.logreg.fit(self.X_train, self.y_train)

    def runDecisionTree(self):
        if self.dt is None:
            print("Decision Tree model is not initialized. Please run initTitanic() first.")
            return
        y_pred_dt = self.dt.predict(self.X_test)
        accuracy_dt = accuracy_score(self.y_test, y_pred_dt)
        print('Decision Tree Classifier Accuracy: {:.2%}'.format(accuracy_dt))

    def runLogisticRegression(self):
        if self.logreg is None:
            print("Logistic Regression model is not initialized. Please run initTitanic() first.")
            return
        y_pred_logreg = self.logreg.predict(self.X_test)
        accuracy_logreg = accuracy_score(self.y_test, y_pred_logreg)
        print('Logistic Regression Accuracy: {:.2%}'.format(accuracy_logreg))

def initTitanic():
    global titanic_regression
    titanic_regression = TitanicRegression()
    titanic_regression.initTitanic()
    titanic_regression.runDecisionTree()
    titanic_regression.runLogisticRegression()

def predictSurvival(passenger):
    passenger_df = pd.DataFrame(passenger, index=[0])   
    passenger_df.drop(['name'], axis=1, inplace=True)
    passenger = passenger_df.copy()

    # Add missing columns and fill them with default values
    missing_cols = set(titanic_regression.X_train.columns) - set(passenger.columns)
    for col in missing_cols:
        passenger[col] = 0

    # Ensure the order of column in the passenger matches the order in the training data
    passenger = passenger[titanic_regression.X_train.columns]

    # Preprocess the passenger data
    passenger = titanic_regression.encoder.transform(passenger)

    predict = titanic_regression.logreg.predict(passenger)
    return predict


# Sample usage
if __name__ == "__main__":
    # Initialize the Titanic model
    initTitanic()

    # Predict the survival of a passenger
    passenger = {
        'name': ['John Mortensen'],
        'pclass': [2],
        'sex': ['male'],
        'age': [64],
        'sibsp': [1],
        'parch': [1],
        'fare': [16.00],
        'embarked': ['S'],
        'alone': [False]
    }
    print(predictSurvival(passenger))
```

    Decision Tree Classifier Accuracy: 100.00%
    Logistic Regression Accuracy: 100.00%



```python
## Python Titanic API endpoint
from flask import request, jsonify

# Define the API endpoint for prediction
@app.route('/api/predict', methods=['POST'])
def predict():
    # Get the passenger data from the request
    passenger = request.get_json()

    response = predictSurvival(passenger)

    # Return the response as JSON
    return jsonify(response)


```
