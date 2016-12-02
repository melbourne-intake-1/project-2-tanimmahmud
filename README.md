## Coder Factory Term 2 Project (Ruby on Rails)
# Junior Dev Jobs
### A site for both Coder Factory students and interested employers, to showcase their skills and find talented Junior developers, respectively.
## Live - http://jrdevjobs.herokuapp.com/

## Problem

As Coder Factory students have to have 1 month internship experiences in order to graduate from the course and employers used to visit different websites to look for the potential candidates among coder factory students. It would be time saving and convenient for employers to only visit one website where all the relevant informations from candidates will be listed and they can find the right candidates for their company.

## Solution

A services that will allow Coder Factory students to crate an profile and list all of their qualifications, experiences, skills, contact details with headshot and little about them. Their profile will have a summery of their github account so it will be easy for employers to drive into students recent or past projects if they are interested.

Companies will also be able to create and account and post jobs if they think they want Coder Factory graduates to apply for any particular jobs or they can message any students if they think he or she will be best match for that position.

## Setup on Local Machine!

* Clone repository
* Navigate into app folder
* Make sure you have config variable for Stripe, Cloudinary and Mailgun
* run ```bundle install```
* run ```rails db:migrate```
* run ```rails server```
* Type localhost:3000 on your favourite browser to see the project in action!

## Workflow diagram of the user journey/s

### [Hosted on Figma](https://www.figma.com/file/ITvhnOhJkzG3xJcFedHzBERt/user-stories)

## Wireframes

### [Hosted on Figma](https://www.figma.com/file/gBwzE8HMUwDQ2DsI6itn4CE1/wireframes)

### Used [Balsamiq Mockups](https://balsamiq.com/products/mockups/).

### Screeshot:

![Job](/wireframes/wireframes.png "Job")

## User Strories
* As a user, I want to login to my account.
* As a user, I want to edit my login settings or delete my account.

### As a Candidate:

* As a candidate, I want to create an account, so that I can make a profile, that employer can have an idea about my skills.
* As a candidate, I want to edit my profile, so that I can keep it update to date and the best it can be.
* As a candidate, I want to add work experiences to my profile, so that I can showcase my previous experiences.
* As a candidate, I want to edit and add new work experiences to my profile, so that I can always provide updated information about my previous experiences.
* As a candidate, I want to add, edit and delete educational qualification related informations to my profile, so that I can showcase my educational background.
* As a candidate, I want to add and delete social network website links , so that potential employer or fellow developers can connect with me.
* As a candidate, I want to add and delete my skills , so that potential employers can have an idea about my skills.
* As a candidate, I want to search for jobs from job listings , so that I can find job that matches my skills.
* As a candidate, I want to apply for jobs that I am interested in, so that employer can consider mer for the position.

### As an Employer:

* As an employer, I want to create an account, so that I can post jobs, create and update profile for my company.
* As an employer, I want to look for candidates form candidate listing, so that I do not have to post job if I get a better match for the job.
* As an employer, I want to post jobs, so that potential candidates can apply for it.
* As an employer, I want to edit my posted job, so that I can update if something changed.
* As an employer, I want to receive application from candidates.

## Entity Relationship Diagram (ERD)

### Used [DbDesigner](https://dbdesigner.net/) for Schema Design.

![Schema](/wireframes/schema.png "Schema")

## Project plan and estimation

### Used [Trello](https://trello.com/b/NTnHx7ao) for plan and estimation

###  Trello Board Link https://trello.com/b/NTnHx7ao

### Tools Used

### Assignment Criteria

:white_check_mark: = Done | :negative_squared_cross_mark: = Partially Done | :x: = Not Done

#### Design documentation
* :white_check_mark: One page summary of your application including problem definition, solution.
* :white_check_mark: A workflow diagram of the user journey/s.
* :white_check_mark: Wireframes for at least 5 screens.
* :white_check_mark: User stories for the whole application.
* :white_check_mark: Entity Relationship Diagram (ERD).
* :white_check_mark: Project plan and estimation.

#### Tools and methodologies

* :white_check_mark: Project management tool to be used to track progress of build.
* :negative_squared_cross_mark: Show evidence of Slack conversations or use of other communication tools. (Do not have any slack evidence but consult with classmates and teachers.)
* :negative_squared_cross_mark: Code review. Demonstrate that you have had your code reviewed by other students and that you have provided a code review for others. (Did not have enough time)
* :white_check_mark: Github. Demonstrate use of frequent commits, pull requests, documentation.
* :white_check_mark: Use Agile development methodologies.
* :negative_squared_cross_mark: Provide evidence you have used code quality tools (eg. Traceroute, Bullet, Brakeman, Rails Best Practices tool, RuboCop, RubyCritic, CodeClimate).

#### Ruby on Rails development skills

* :white_check_mark: Create your application using Ruby on Rails.
* :white_check_mark: Demonstrate knowledge of Rails conventions.
* :white_check_mark: Use postgresql database in development.
* :white_check_mark: Use an API (Stripe, Google Geocoding)
* :white_check_mark: Use appropriate gems.
* :white_check_mark: Use environmental variables to protect API keys etc.
* :white_check_mark: Implement a payment system for your product.
* :white_check_mark: Your app must send transactional emails ( Mailgun).
* :white_check_mark: Your app should have an internal user messaging system. (Used Mailboxer Gem for internal messaging)
* :white_check_mark: Your app will have some type of searching, sorting and or filtering capability.
* :white_check_mark: Your app will have some type of file uploading capability (images and pdf file).
* :white_check_mark: Your app will have authentication (Devise).
* :white_check_mark: Your app will have authorisation (users have restrictions on what they can see and edit).
* :negative_squared_cross_mark: Your app will have an admin dashboard for the admin user to administrate the site.( Admin functionality is only available via terminal )
* :white_check_mark: Document your application with a README that explains how to setup, configure and use your application.

#### Deployed application

* :white_check_mark: Your application is to be deployed to AWS or Heroku(Heroku)

#### Presentation

* :white_check_mark: A Walk-through of your design decisions and documents
* :white_check_mark: A review of your build process - challenges, favourite parts
* :white_check_mark: A walk-through of your live app and pointing out its features
* :white_check_mark: Answer any questions from students or teachers.
