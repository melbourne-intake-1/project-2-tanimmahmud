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
* As a candidate, I want to add work experiences to my profile, so that I can showcase my previous expericences.
* As a candidate, I want to edit and add new work experiences to my profile, so that I can always provide updated information about my previous expericences.
* As a candidate, I want to add, edit and delete educational qualification related informations to my profile, so that I can showcase my educational background.
* As a candidate, I want to add and delete social network website links , so that potential employer or fellow developers can connect with me.
* As a candidate, I want to add and delete my skills , so that potential employers can have an idea about my skills.
* As a candidate, I want to search for jobs from job listings , so that I can find job that matches my skills.
* As a candidate, I want to apply for jobs that I am interested in, so that employeer can consider mer for the position.

### As an Employer:

* As an employer, I want to create an account, so that I can post jobs, create and update profile for my company.
* As an employer, I want to look for candidates form candidate listing, so that I do not have to post job if I get a better match for the job.
* As an employer, I want to post jobs, so that potential candidates can apply for it.
* As an employer, I want to edit my posted job, so that I can update if something changed.
* As an employer, I want to receive application from cadidates.

## Entity Relationship Diagram (ERD)

### Used [DbDesigner](https://dbdesigner.net/) for Schema Design.

![Schema](/wireframes/schema.png "Schema")

### Project plan and estimation

### Used [Trello](https://trello.com/b/NTnHx7ao) for plan and estimation

## Trello Board Link https://trello.com/b/NTnHx7ao
