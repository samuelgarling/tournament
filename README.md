# Sam's Tournaments README

Sam's Tournaments is a basic example of the use of Python and PostgreSQL to record a Swiss Tournament.

## Running the program for the first time:

A Vagrant VM machine and a PostgreSQL installation is required to run this project. First you need to open Vagrant, establish a Secure Shell (SSH) connection to a virtual machine. Then you need to run the tournament.sql file in the PostgreSQL environment - "\i tournament.sql". Finally you need to run the tournament_test.py file in the VM using "python tournament_test.py" command. The code outputs the results of each test and the message "Success! All tests pass!" to indicate that it works.

### What's Included:

```
tournament/
  ├── tournament_test.py
  ├── tournament.py
  ├── tournament.sql
```

Created by Sam Garling in conjunction with the Intro to Relational Databases course by Udacity.
18/09/2015
