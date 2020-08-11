# PasswordManager-Bash
Series of bash scripts which can run concurrently and act as a password management system 

**1. Introduction**

The idea of this project was to create a password management system using Bash. The idea of the password management system is to allow users to store login details (i.e. username and password) for different services in one centralised system. In this system the user can add new services with login details, look at existing passwords for a given service as well as remove any details no longer needed. It is built on a client-server model, which is made to mimic a centralised password manager such as Bitwarden.


**2. Requirements (What is the system supposed to do?)**

The system is supposed to manage login details (login name and password) for specific services for different users. This means creating, updating, removing and showing the login details for a given service. The system has two main aspects, the server and the client. The client (from running script client.sh) using their client ID and indicating their desired intent should be able to perform 6 different tasks with regards to password management:
- Create a new user (init.sh)
- Insert a new service with a given login and password (insert.sh)
- Show an existing login details for a given service (show.sh)
- List (tree structure) all the user services or services within a subfolder of a user (ls.sh) (5) Remove a service (rm.sh)
- Update the login details (show.sh and insert.sh).


Given the client has entered a clientID, a valid action and a specific user (existing or new), the query is then subject to further constraints dependent on the action desired (e.g. inserting a new service - client needs to also enter a service and login details). With appropriate error handling in place the client side (client.sh) should interact with the server side (server.sh) passing the appropriate information in. On the server side based on the request, scripts are called which carry out the specifics actions. Once finished or if there is an error at any point, this should be conveyed to the client. Concurrency issues should be accounted for to allow multiple clients using the service at the same time (i.e. protect against two users altering data at the same time e.g. one trying to update a service that the other one is removing).

For a more detailed breakdown of the architecture and how the system works please see the report which outlines all this in detail('Password-Management-Report')
