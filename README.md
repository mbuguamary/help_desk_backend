## Technology Used
 + (RUBY ON RAILS) - Used on the backend for Active Records-based API development.
* Ruby version 2.74
## Database
+ postgresql
## Models
* Tickets
* Departments
* Categories
+ ActiveRecord will manage the database relatonships.

## migrations
+ tickets
+ departments
+ categories

## ROUTES Methods and Actions
## GET
+ /tickets: returns all tickets with specified columns

+ /tickets/:id: returns a specific ticket
+  /users/:id: returns a specific user
+ /categories: returns all categories

+ /departments: returns all departments

## PATCH
+ /tickets/:id: updates a specific ticket

## POST
+ /tickets/: creates a new department
+ /tickets/: creates a new ticket
+ /tickets/: creates a new category
+ /users/ : creates a new user

## DELETE
+ /tickets/:id: deletes a specific ticket
/users/:id: deletes a session


