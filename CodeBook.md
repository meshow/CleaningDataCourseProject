CleaningDataCourseProject
=========================

Student:
	Michelle
Eshow
Course:

	Getting
and
Cleaning
Data,
[https://class.coursera.org/getdata-006/]
Assignment:	Course
project,
see
			[https://class.coursera.org/getdata-006/human_grading/view/courses/972584/assessments/3/submissions]
Due
Date:
	August
24,
2014

##
Overview

Refer
to
this
project's
README.md
for
details
on
the
objectives
of
the
assignment
and
the
exact
steps
taken
to
create
the
tidy
data
sets.

##
Study
Design

The
data
for
this
project
were
collected
by
a
team
at
Universita
degli
Studi
di
Genova,
Genoa,
Italy.

##
Code
Book

All
of
the
variables
in
the
original
data
are
described
in
the
file
features.txt
that
was
included
with
the
data.

All
accelerations
are
in
fractions
of
one
gravity,
or
'g'.
All
rotational
speeds
are
in
radians/second.
Jerk
measurements
are
in
g/sec,
while
rotational
acceleration
is
in
radians/second-squared.

The
first
tidy
data
set
extracted
68
variables
from
the
original,
unmodified
data.
More information about the parameters was included in the features_info.txt file in the data set. Following
are
the
variables that were retained in the first tidy data set:

Name					Units
------------------- | ---------
tBodyAcc-mean-X		|	g
|tBodyAcc-mean-Y	|	g
|tBodyAcc-mean-Z	|	g
|tBodyAcc-std-X		|	g
|tBodyAcc-std-Y		|	g
|tBodyAcc-std-Z		|	g
|tGravityAcc-mean-X |  g
|tGravityAcc-mean-Y |  g
|tGravityAcc-mean-Z |  g
|tGravityAcc-std-X  |  g
|tGravityAcc-std-Y  |  g
|tGravityAcc-std-Z  |  g
|tBodyAccJerk-mean-X |  g/sec
|tBodyAccJerk-mean-Y |  g/sec
|tBodyAccJerk-mean-Z |  g/sec
|tBodyAccJerk-std-X |  g/sec
|tBodyAccJerk-std-Y |  g/sec
|tBodyAccJerk-std-Z |  g/sec
|tBodyGyro-mean-X   | rad/sec
|tBodyGyro-mean-Y   | rad/sec
|tBodyGyro-mean-Z   | rad/sec
|tBodyGyro-std-X   | rad/sec
|tBodyGyro-std-Y   | rad/sec
|tBodyGyro-std-Z   | rad/sec
|tBodyGyroJerk-mean-X    | rad/sec/sec
|tBodyGyroJerk-mean-Y  | rad/sec/sec
|tBodyGyroJerk-mean-Z  | rad/sec/sec
|tBodyGyroJerk-std-X  | rad/sec/sec
|tBodyGyroJerk-std-Y  | rad/sec/sec
|tBodyGyroJerk-std-Z  | rad/sec/sec
|tBodyAccMag-mean  | rad/sec/sec
|tBodyAccMag-std  | rad/sec/sec
|tGravityAccMag-mean | g
|tGravityAccMag-std | g
|tBodyAccJerkMag-mean | g
|tBodyAccJerkMag-std | g
|tBodyGyroMag-mean | g
|tBodyGyroMag-std | g
|tBodyGyroJerkMag-mean | g/sec
|tBodyGyroJerkMag-std | g/sec
|fBodyAcc-mean-X | g
|fBodyAcc-mean-Y | g
|fBodyAcc-mean-Z | g
|fBodyAcc-std-X | g
|fBodyAcc-std-Y | g
|fBodyAcc-std-Z | g
|fBodyAccJerk-mean-X | g/sec
|fBodyAccJerk-mean-Y | g/sec
|fBodyAccJerk-mean-Z | g/sec
|fBodyAccJerk-std-X | g/sec
|fBodyAccJerk-std-Y | g/sec
|fBodyAccJerk-std-Z | g/sec
|fBodyGyro-mean-X | rad/s
|fBodyGyro-mean-Y | rad/s
|fBodyGyro-mean-Z | rad/s
|fBodyGyro-std-X | rad/s
|fBodyGyro-std-Y | rad/s
|fBodyGyro-std-Z | rad/s
|fBodyAccMag-mean | g
|fBodyAccMag-std | g
|fBodyBodyAccJerkMag-mean | g/sec
|fBodyBodyAccJerkMag-std | g/sec
|fBodyBodyGyroMag-mean | rad/sec
|fBodyBodyGyroMag-std | rad/sec
|fBodyBodyGyroJerkMag-mean | rad/sec/sec
|fBodyBodyGyroJerkMag-std  | rad/sec/sec

For the second tidy data set, the variables and units are the same, except each one is the mean of the original parameter. Thus each variable name is preceded by "Mean of".
