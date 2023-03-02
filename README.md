# sql-challenge

For this project we are being prompted to set up and diagram an employee database for a company. The first step was to create an entity relationship diagram which allows for easier conceptualization of how every table is related to each other. After this point, the schema was created in postgreSQL in order to be able to import the necessary csv files. After this point, analysis was done per the specifications of the assignment with comments explaining the bare necessities asked for.

Tables involved:
   departments - contains each department name and the associated department number
   dept_emp - contains the relationship of employees and departments, basically which employees work in which department
   dept_manager - contains the relationship of employees with the manager title and departments or who the managers are
   employees - contains basic employee information including: employee id, title id, first name, last name, sex, date of birth, and date hired
   salaries - contains each employee's id and their associated salary
   titles - contains each title and their associated title id
