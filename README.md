# NBA-Database-Demonstration

## Project Overview
The primary aim of this project is to design and implement a robust database system to manage a university's academic and administrative data, focusing on entities such as students, courses, instructors, and departments.
The project is built using SQL and aimed at executing various data manipulation tasks including insertions, updates, deletions, and backups, alongside ensuring data integrity and security through functions, procedures, and triggers.

## Data source : 
https://www.kaggle.com/datasets/patrickhallila1994/nba-data-from-basketball-reference

## Development Approach and Key Features
### Development Approach
The project involved several key phases in the development process:
#### 1.	Database Design and Normalization: 
The initial phase focused on designing a normalized database schema tailored for an NBA-related data management system. This involved structuring tables and relationships to efficiently store data about players, games, coaches, and seasons, ensuring minimal redundancy and high data integrity.

#### 2.	SQL Scripting and Database Management:
•	Tables Creation: Utilized SQL scripts to create various tables like play_data, games, season, boxscore_1, and coach_details. These tables were designed to hold detailed information about game plays, game summaries, season schedules, detailed box scores, and coach profiles, respectively.

•	Primary and Foreign Keys: Carefully added primary key constraints to tables such as play_data and games to ensure data uniqueness and integrity. Similarly, foreign key constraints were applied, linking tables like boxscore and salaries to maintain relational integrity among associated data points.

•	Data Type Modification: Modified the data types of certain columns like playerName in various tables to VARCHAR(255) to accommodate the textual data adequately.

#### 3.	Data Manipulation and Management:
•	Deletion, Insertion, and Updating: Developed SQL scripts for the regular administrative tasks such as updating player information, modifying game details, or altering coach data, ensuring dynamic data management based on evolving needs.

•	Backup and Recovery: Established strategies for data backup and recovery, ensuring the database's resilience against data loss and enabling quick restoration capabilities.

#### 4.	Advanced SQL Features:
•	Error Handling and Validation: Implemented error handling mechanisms to manage exceptions and validate data inputs effectively, maintaining the database's reliability and robustness.

•	Functions and Procedures: Drafted custom SQL functions and procedures to automate and optimize repetitive database operations, enhancing efficiency and data processing accuracy.

#### 5.	Security and Access Control: 
Defined user roles and permissions to establish a secure database environment, restricting access based on user responsibilities and ensuring data confidentiality and integrity.

## Key Features Highlighted by SQL Queries
### 1.	Table Modifications and Constraints:
•	Altered NBA.play_data to add a primary key, ensuring unique identification for each play.

•	Created a season table derived from nba.coaches, grouping data by seasonStartYear and setting a unique identifier for each season, facilitating easier season-wise data management.

•	Structured a new boxscore_1 table to include a unique box_id for each game's box score entry, enhancing data tracking and analysis capabilities.

•	Established coach_details with distinct coach-related attributes, segregating coach information for better management and query performance.

### 2.	Data Integrity and Relationships:
•	Applied foreign key constraints between tables like play_data and games, boxscore and games, ensuring relational data integrity and facilitating complex queries involving multiple aspects of game data.

•	Enhanced the data structure by modifying column data types and adding primary and foreign key constraints to maintain data consistency and enforce logical connections across the dataset.

### 3.	Advanced SQL Operations:
•	Devised SQL operations for comprehensive data manipulation including adding, updating, and deleting records, thereby supporting dynamic data management tailored to the administrative needs of NBA data handling.

•	Implemented advanced SQL constructs to manage data relationships and integrity, ensuring a robust and consistent dataset suitable for detailed analysis and reporting.

This comprehensive approach, combining meticulous database design, structured SQL scripting, and strategic data management practices, underscores the project's commitment to creating a robust, efficient, and secure database management system tailored for comprehensive NBA data analysis and administration.
