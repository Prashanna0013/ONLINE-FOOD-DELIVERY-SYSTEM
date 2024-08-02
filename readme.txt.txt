# Mini-Project Implementation Guide using NetBeans

This guide provides step-by-step instructions to implement and run the Mini-Project in NetBeans. The Mini-Project is designed to showcase a simple database application with functionalities such as customer management, restaurant management, orders, and payments.

 Prerequisites

- Java Development Kit (JDK) installed on your machine. You can download it from [Oracle's official website](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html).
- NetBeans IDE installed on your machine. You can download it from the [NetBeans website](https://netbeans.apache.org/download/index.html).
- MySQL from SQL PLus(ORACLE 10g).

 Project Structure

The project is structured into the following components:

1. Database Setup:
   - The project uses MySQL SQL PLus(ORACLE 10g).
   - SQL scripts are provided to create the necessary database schema and insert initial data.

2. Java Classes:
   - Java classes for entities (`Customer`, `Restaurant`, `DeliveryPartner`, `Order`, `Payment`) reflecting the database schema.
   - Data Access Objects (DAOs) to interact with the database.
   - Main application classes for running the project.

3. User Interface (UI):
   - Basic UI components built using Java Swing for interacting with users.
   - Forms for managing customers, restaurants, placing orders, and handling payments.

4. Functionality:
   - CRUD operations (Create, Read, Update, Delete) for customers, restaurants, orders, and payments.
   - Integration of Java JDBC for database connectivity.
   - Error handling and validation of user inputs.

 Setting Up the Project

1. Clone the Repository:
   - Clone the project repository from GitHub or download the project files.

2. Database Setup:
   - Install and configure MySQL SQL Plus(ORACLE 10g).
   - Execute the SQL scripts provided (`dbms.sql`) to set up the database schema and insert initial data.

3. Import Project into NetBeans:
   - Open NetBeans IDE.
   - Go to `File` > `Open Project` and select the root folder of the cloned/downloaded project.

4. Resolve Dependencies:
   - Ensure they are added to the project's build path by adding dependency ojdbc11.jar to dependencies folder.
   - Check and update the database connection settings to match your local database configuration.

5. Run the Project:
   - Build the project by clicking on `Run` > `Build Project`.
   - Run the project by clicking on `Run` > `Run Project` or pressing `Shift+F6`.
   - The application should start, and you can interact with it via the UI.

 Project Features

- Customer Management: Add, view, update, and delete customers.
- Restaurant Management: View and search restaurants.
- Order Placement: Place new orders for customers at selected restaurants.
- Payment Processing: Process payments for placed orders.

 Troubleshooting

- If you encounter any issues related to database connectivity or dependencies, double-check your database configuration and project setup.
- Ensure that NetBeans is properly configured with JDK and all necessary libraries.


