# User management system for Festalab

If you want, i have made a deploy for you to check the code live 😉:
https://demo-festalab-patrick-18cbd1c13f05.herokuapp.com/


## Description:

This project encompasses the full spectrum of developing a user management system. From the foundational setup to detailed tests, our focus has been on ensuring an application that is both robust and user-friendly.

## Features and Changes:

### Initial Setup
Initialized project with rails new.
Switched database to PostgreSQL with the pg gem.


### Gem Integrations
Validation: valid_email2 for email checks and cpf_cnpj for CPF & CNPJ validation.
Frontend & Design: Incorporated simple_form and sass-rails.
Seeding: Integrated faker for dynamic data seeding.


### User Model & Validations
Created a user model that validates properties like name, email, phone, and CPF.
Utilized valid_email2 and cpf_cnpj for specialized validations.


### Frontend Enhancements
Designed an interface that emphasizes user experience.
Adopted an input mask library for intuitive form inputs.
Created a responsive design to ensure seamless usage across devices.
Integrated turbo frames to make navigation smoother and more dynamic.


## Testing:

To run the test suite, simply execute:

rails test:system


## Prerequisites:

Ruby: Ensure Ruby is installed (ruby -v). If not, check Ruby's official documentation.
Ruby on Rails: Must have Rails (rails -v). If absent, gem install rails.
PostgreSQL: As our preferred database. See official documentation for setup.
Node.js & Yarn: To manage frontend assets. Install from Node.js and Yarn.
Project Setup:

Clone the Repository:


git clone [repository-url]
cd [repository-name]

Install Ruby Dependencies:

bundle install


Install JavaScript Packages:

yarn install


Database Setup:
rails db:create
rails db:migrate


Optional Seed (hope you like Harry Potter!):
rails db:seed


### Running the Project:

Just need to start the Rails server:
rails s

and access: 
http://localhost:3000

Hope you like it <3
