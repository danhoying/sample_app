# Courses
title:string [present]
description:text [present]

:has_many lessons

# Lessons
title:string [present]
body:text [present]

:has_one course 

---------------------------

# Users
username:string [unique, 4-12 chars, present]
email:string [unique, present]
password:string [6-16 chars, present]

:has_one profile

# Profiles
age:integer [1-3 chars, present]
gender:string [present]
user_id:integer [present]
city_id:integer [present]
state_id:integer [present]
country_id:integer [present]

:belongs_to user

# Cities
city:string [present]

:belongs_to profile
:has_one state
:has_one country

# States
state:string [present]

:belongs_to profile
:has_one country
:has_many cities

# Countries
country:string [present]

:belongs_to profile
:has_many states
:has_many cities

------------------------------

# Users
username:string [unique, 4-12 chars, present]
email:string [unique, present]
password:string [6-16 chars, present]

:has_many pins
:has_many comments

# Pins
url:string [unique, present]

:belongs_to users
:has_many comments

# Comments
comment:text [present]

:belongs_to pin
:belongs_to users

------------------------------

# Users
username:string [unique, 4-12 chars, present]
email:string [unique, present]
password:string [6-16 chars, present]

:has_many links
:has_many comments

# Links
post:string [unique, present]

:belongs_to users
:has_many comments

# Comments
comment:text [present]
comment_id:integer

:belongs_to users
:belongs_to links
:has_many comments
:belongs_to comments