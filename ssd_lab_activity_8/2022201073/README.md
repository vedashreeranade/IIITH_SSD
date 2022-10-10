>## Overview
- This project has been designed to understand the basics of ExpressJs framework.
- This project has made use of MongoDB Cloud platform as a database server.
- It covers basic session based authentication.
- Two service classes have been implemented (CRUD operations):
    - Authentication
    - Students Service


>## Execution
- Make sure your present location is inside the **_MERN-server_** folder.
- Create **.env** file consisting the MongoDB connection URI. You may follow the **`.env sample`** file provided as an example.
- The Libraries that are used here, (Make sure you install it using `npm` command) 
    - express 
    - mongoose 
    - dotenv 
    - cors 
    - body-parser 
    - bcrypt 
    - express-session 
    - connect-mongodb-session

- Next, Run the below command:
    ```
        node app.js
    ```

# MERN - ReactJS [Frontend Client]

- We have created the frontend side of the application using ReactJS.
- This frontend client contains 3 main components:
    - LoginForm
    - SignUpForm
    - Profile

- The structure of the code is based on the template provided by *create-react-app*.
- In this project, we have used functional components but you can use class components too if that suits your project.
- Most of the key concepts that are used in any React application are covered in this project.

### Steps to run the Client App.

- Open a new terminal and navigate to the location MERN-client/mern-client.
- Run the following command to install the dependencies :
    ```
    npm install
    ```
    This will create the node_modules folder and install all the packages in it.
-  Run the following command to start the application:
    ```
    npm start
    ```


## Note
- Created the Login Page by making the required changes.