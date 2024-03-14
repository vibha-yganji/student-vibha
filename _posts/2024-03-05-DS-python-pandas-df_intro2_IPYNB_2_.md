---
layout: post
title: Pandas, Datasets
description: This blog contains basic techniques for analyzing a dataset using the Python Pandas module.  Python is a primary language for data science and is useful for backend operations like analyzing and storing data.
courses: {'csp': {'week': 25}}
type: ccc
author: Vardaan Sinha
---

# An Introduction

Interacting with data is something we do everyday, whether consciously or subconsciously. 

If you are interested into going into any field of STEM - whether it be the medical field, data science, or computer science, you will often be working with *large* datasets with tons of useful AND useless information. 

A skillset that is becoming increasingly important in these areas of work is the ability to effectively query and filter for data in large datasets and draw conclusions based on these filters. 

# Pandas

Pandas is a Python library that allows for the manipulation, querying, and filtering of data. 

Over time, it has become one of the most popular Python libraries for data analysis.

Here is the documentation link: https://pandas.pydata.org/docs/



# Our Data

Data is readable in many formats. As someone who is working with datasets, you should be able to recognize what formats are easiest to understand for you and for any program that you write. Here are two of the most common data formats:

1. **JSON**: This is a standard file format that is very easy for humans and computers to read and write. It is a compact way to store data.

2. **CSV**: These are *comma-separated value* files. This is where data has comma delimiters (separaters). 


For the purpose of this notebook, we'll use a **JSON file** containing data about the average income level in each of the 50 states in the USA (located in /assets/datasets/income.json)

We will look to first understand and interpret the data ourselves and use Pandas and Numpy to provide insightful statistical information about the dataset that we may not be as easy to find by ourselves.


```python
# uncomment the following line to install the pandas library
# !pip install pandas 

import pandas as pd 

# Use wget to obtain file, be sure to to place in _notebooks/files 
# wget https://raw.githubusercontent.com/nighthawkcoders/teacher_portfolio/main/_notebooks/files/income.json
df = pd.read_json('files/income.json')

# Add a new column that is the mean household income in dollars
df["MeanHouseholdIncomeDollars"] = df["MeanHouseholdIncome"].apply(lambda n: "${:,.2f}".format(n))

# display is alternative to print
# ... it is a part of Jupyter Notebooks
# ... it shows the dataframe as a nice table
display(df)

```

## Dataset statistics
> Let's find and display some statistics from the dataset..
The dataframe is being described from the information for the column where applicable statistics are present. 

- The "count" statistic for example, is the number of not-empty cells in the mean household income column. 
- The mean is the average mean household income across all 50 states
- The standard deviation is how much the values within the mean household income column deviate from the mean. 

It is important to note that in many more complex datasets, there will be multiple columns with explanatory data. In those cases, the df.describe() method will need to be specified based on a specific column. 


```python
# Use built in stats
print("Statistical Summary of the Data")
display(df.describe())

# Define a specific value from the dataframe
# ... using the "mean" method (finds average) from the dataframen
# ... in the [] brackets is a dataframe label describing what is to be computed
dfmean = df["MeanHouseholdIncome"].mean()

# Format the mean household income
# ... allows it to be formatted into a message
# ... so that there is a dollar sign and commas in the number
print("USA Mean Household Income: ${:,.2f}".format(dfmean))
```

### Dataframe sort, Household Income
> In this example, analytical data is sorted.


```python
# Format the "MeanHouseholdIncome" column with commas as thousands separators and a dollar sign

# Sort the DataFrame by the "MeanHouseholdIncome" column
# ... in ascending order
# ... purpose is to find best paying states
# ... note, calculation are on unformatted numbers
df = df.sort_values(by="MeanHouseholdIncome", ascending=False)


# Print the DataFrame
# ... the display only the nicely formatted numbers
display(df[df.columns.difference(['MeanHouseholdIncome'])]) 
```

### Dataframe sort, State
> In this example, categorical can be sorted.


```python
df.sort_values(by="State")

# The data is sorted alphabetically based on the "State" column.

```

## Conclusion

What are the key takeaways from this lesson?

The purpose is to obtain a basic understanding of working with a dataset, using Pandas dataframes. To obtain a more comprehensive understanding of Pandas capabilities, research operations such as filtering data based on certain criteria, grouping data, or performing calculations on multiple columns.  Additional work can be done with these Python modules (ie numpy, matplotlib). 

Explain each example briefly and provide a real-world scenario where such an operation would be useful.  Every dataset that you work with should have a purpose - that's what the field of data science is all about. 

For instance, in the Household income example, we analyzed a mean household income by state dataset. This could be applicable if someone wanted to find out where the most affordable place to live.

- Find the minimum household income 
- Expand data to look at affordability of areas within state
- Perhaps add other factors like employment in those areas


## Additional Resources
1. [Pandas Documentation](https://pandas.pydata.org/docs/)
- This is an essential resource for learning about Pandas and its various functionalities. It provides detailed documentation, examples, and explanations of different methods and operations.
2. [Data Science Applications](https://www.geeksforgeeks.org/major-applications-of-data-science/)
- This resource provides an overview of major applications of data science across various domains. It can help students understand the practical implications of data analysis and how it is used in different industries.
3. [Kaggle Datasets](https://www.kaggle.com/datasets)
- Kaggle is a popular platform for data science and machine learning. It offers a wide range of datasets for practice and exploration. Students can find interesting datasets on different topics to apply their Pandas learning and gain hands-on experience.
4. [NumPy Documentation](https://numpy.org/doc/)
- NumPy is another important Python library often used in conjunction with Pandas for numerical operations and scientific computing. The official NumPy documentation provides in-depth explanations and examples of working with arrays, mathematical functions, and more.
5. [Matplotlib Documentation](https://matplotlib.org/stable/contents.html)
- Matplotlib is a powerful data visualization library in Python. It allows students to create a wide range of plots and charts to visualize their data. The Matplotlib documentation offers comprehensive guidance on creating different types of visualizations, customizing plots, and using various plotting functions.
By referring to these resources, students can further expand their knowledge and explore advanced topics in Pandas, NumPy, and data visualization.

## Hacks

1. Find a CSV/JSON Dataset that interests you. Refer to Kaggle Datasets mentioned above.

2. Try to show your Pandas learning by illustrating **5** different numerical analysis operations being done on the dataset. After showing each operation in a separate code block, add a sentence explaining what that operation is showing and what real-world implication it has. It is important to make sure that you are not only able to run code to analyze data, but also understand its implications.

3. EXTRA: Research Matplotlib Documentation mentioned and implement a code block where you create a graph showing and visualize relationship in your chosen dataset. Then, add a sentence or two explaining what the relationship shows.
