# carrentalapp


This project is a full-stack Car Rental web application designed to allow users to book vehicles and manage rental services. It features a user-friendly interface for both customers and administrators, built using a combination of front-end and back-end technologies.

## Features
- **User Authentication**: Secure login and registration system for users and admins.
- **Vehicle Booking**: Users can browse available vehicles and make bookings.
- **Admin Dashboard**: Manage vehicles, view bookings, manage users, and monitor system operations.
- **Car Owners**: Owners can add and manage their vehicles in the system.
- **Enquiries**: Users can submit enquiries, and admins can manage them.
- **Database Integration**: Persistent storage for users, bookings, vehicles, owners, and enquiries using MySQL.


## Tech Stack
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java, JSP, Servlet
- **Architecture**: MVC (Model-View-Controller) Architecture
- **Database**: MySQL
- **Version Control**: Git

## Installation and Setup

### Prerequisites
- JDK (Java Development Kit)
- Apache Tomcat Server
- MySQL Server
- Git

### Steps
1. **Clone the Repository**:
    ```bash
    git clone [GitHub Repository Link]
    ```

2. **Import Project**: Import the project into your favorite IDE (such as Eclipse or IntelliJ IDEA).

3. **Configure MySQL Database**:
   - Set up a MySQL database.
   - Update the database connection details in the project (JDBC configuration).

4. **Run the Application**:
   - Deploy the project on Apache Tomcat Server.
   - Open your browser and navigate to `http://localhost:8080/car-rental/`.

## Database Schema
- **Users**: Stores user details for authentication and management.
- **Vehicles**: Holds information about the available vehicles.
- **Bookings**: Stores booking data made by the users.

## Contributing
Feel free to fork this repository and contribute by submitting a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
