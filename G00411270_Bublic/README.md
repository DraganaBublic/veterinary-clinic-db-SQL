
# Veterinary Clinic Database

This is a database that stores information about the veterinary clinic, its staff, clients, animals, appointments, and treatments. The database is designed to support the daily operations of the clinic, such as scheduling appointments, recording medical records, billing clients, and managing inventory.

The primary objective of this project was to create a comprehensive veterinary clinic database using MySQL, facilitating efficient storage, management, and retrieval of information for clinic staff.

## Tools and Technologies

The database was created using **MySQL**, an open-source, high-performance relational database system. The development environment utilized **XAMPP**, an integrated solution with Apache HTTP Server and MySQL Database, and **PhpMyAdmin**, a management tool with a user-friendly web interface.

## Supporting Files

The following files are included in this project:

- **RelationalSchema.pdf**: This file contains an overview of the database, its tables, relationships, keys, and constraints. Two distinctive styles of Entity Relationship Diagrams (ERD) have been used here to best relay this information. The two PNG files included ERD.png and chenERD.png are from this document, if better clarity is required.
- **CoddsRules.pdf**: This file contains an explanation of how the database satisfies each of Codd's Rules, with a narrative and SQL commands where appropriate. All SQL commands can be run within the database.
- **CreateTables.sql**: This file contains the SQL commands to create the tables and constraints for the database. It also inserts some sample data for testing purposes.
- **Queries.sql**: This file contains some example queries that can be performed on the database, such as finding the most popular animal species, the busiest staff member, the average cost of treatments, etc.

## How to Use

To use this database, you will need a MySQL server and a MySQL client. You can download and install them from [here](https://dev.mysql.com/downloads/).

Once you have them installed, you can follow these steps:

1. Open the MySQL client and connect to the MySQL server using your username and password.
2. Run the CreateTables.sql file to create the database and its tables. You can do this by typing `source CreateTables.sql` in the MySQL client.
3. Optionally, you can run the Queries.sql file to see some example queries on the database. You can do this by typing `source Queries.sql` in the MySQL client.
4. You can also explore the database using your own queries or using a graphical user interface (GUI) tool such as [MySQL Workbench](https://www.mysql.com/products/workbench/).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
