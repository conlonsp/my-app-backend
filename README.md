# Homies App Backend

## How to Start

First fork and clone this repository into a directory on your local environment.  Once this repository has been cloned to your computer, you will need to install all of the necessary gems by typing:
```console
$ bundle install
```
When all of the gems have been installed, it's time to start the server by typing:
```console
$ bundle exec rake server
```
This backend operates on port 9492 at 'localhost:9492'.

## Backend File Structure

We have three main files in this repository: app, config, db.

This backend works in tandem with our Homies app React frontend.  Make sure to follow the steps in the Homies app frontend to get this application up and running.

### App file:

Our app file contains our models and our controller.  

The models used in this backend are home, agent, and appointment.  A home has many appointments, and belongs to an agent through appointments.  An appointment belongs to a home and to an agent.  An agent has many appointments, and belongs to a home through appointments.

Our controller file contains the routes used to access the data within our table.  Our home model has full CRUD capabilities where our appointment and agent models only have create, read, and destroy capabilities.

### Db file:

Our db file contains our migrations, schema, and seeds.

The migrations used for this backend are create_agents, create_homes, create_appointments, and remove_date_from_appointments.

The seeds file contains all of the pre-set data used in our database.  It largely usess the Faker gem to create randomized data for our models.  We have created 10 instances of our Home and Appointment class and 6 instances of our Agent class in our seed.rb file.

The schema file lists out the tables in our database with their column name and data type.


