# Munchies API
> Backend repository for the Munchies web application.

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Setup](#setup)
* [Project Status](#project-status)
* [Room for Improvement](#room-for-improvement)
* [Acknowledgements](#acknowledgements)


## General Information
- Phase 3 software engineering project for Flatiron School.
- Group members: Ben, Kenneth, Tim


## Technologies Used
- React 18.2.0
- Ruby  2.7.4
- ActiveRecord
- NodeJS 16.15.1
- NPM 8.18.0
- SQLite 0.14.1
- React-Router-DOM 5.3

## Features
### Backend API Endpoints

| Method | Endpoint                  | Params                | Description                                                      |
| ------ | ------------------------- | --------------------- | ---------------------------------------------------------------- |
| GET    | /restaurants              |                       | returns all restaurants                                          |
| POST   | /restaurants              | name, desc, img_url   | creates a new restaurant                                         |
| DELETE | /restaurant/:id           | restaurant_id         | deletes a restaurant                                             |
| GET    | /rest../:id               | restaurant_id         | return a restaurant                                              |
| GET    | /rest../:id/allreviews    | restaurant_id         | returns all reviews for a restaurant                             |
| GET    | /rest../:id/averagerating | restaurant_id         | returns the average rating for a restaurant                      |
| GET    | /rest../:id/topreview     | restaurant_id         | returns the top review for a restaurant                          |
| GET    | /reviews                  |                       | returns all reviews                                              |
| POST   | /reviews                  | rating, review text   | creates a review                                                 |
| PATCH  | /reviews/:id              | rating, review text   | updates a review                                                 |
| DELETE | /reviews/:id              |                       | deletes a review                                                 |
| GET    | /users                    |                       | returns all users                                                |
| GET    | /users/:id                | user_id               | returns a user                                                   |
| POST   | /users                    | first/last_name       | creates a new user                                               |
| DELETE | /users/:id                | user_id               | deletes a user                                                   |

## Setup - To run this server:
1. Fork/clone this repo to your local environment.
2. Install latest versions of the technologies listed above, if needed.
3. In your terminal, type `rake db:seed` to seed the database.
4. Next, type `rake server` into the terminal to start the server on http://localhost:9292
5. From here, you can run `npm start` on our frontend to both see and interact with the data. Happy munching!


## Project Status
Project is: Complete


## Room for Improvement
- User login functionality
- User favorites page

 
## Acknowledgements
- This project's styling elements were partially inspired by the website "Yelp.com"