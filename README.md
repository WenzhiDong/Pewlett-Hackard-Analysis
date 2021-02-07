# Pewlett-Hackard-Analysis


## Overview of the analysis
In this module, I created an ERD diagram and the database：

![schema](QuickDBD-export.png)

In this project, I will use query language to  
- create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
- create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

## Result
To create these two tables, I  
- use "inner join" to join two tables
- use "into" to save tables
- use "distinct on" to remove duplicated employees because some employees switch titles over years
- use "order by" to sort the data
- use group by to show the number of employees in each department

### Retirement Titles
Before deleting duplicated rows, the table is like below:

![before](before_distinct_on.png)

With "dinstinct on", duplicated items are deleted:

![after](after_distinct_on.png)

The group_by table looks like":

![groupby](groupby.png)

## Summary 

