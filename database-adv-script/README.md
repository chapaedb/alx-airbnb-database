Unleashing Advanced Querying Power
# Subqueries in SQL: Practice Exercises

This directory contains SQL scripts demonstrating the use of subqueries in database querying. It includes examples of both correlated and non-correlated subqueries.

## Queries

### Query 1: Non-Correlated Subquery
- **Objective**: Find all properties where the average rating is greater than 4.0.
- **Description**:
  - The inner query calculates the average rating for each property in the `Review` table.
  - The outer query retrieves the details of properties meeting the condition from the `Property` table.

### Query 2: Correlated Subquery
- **Objective**: Identify users who have made more than 3 bookings.
- **Description**:
  - The subquery counts the number of bookings per user in the `Booking` table.
  - The outer query selects users where the count exceeds 3.

## How to Run

1. Open your SQL client or terminal connected to the database.
2. Run the script file `subqueries.sql` using the appropriate command:
   ```bash
   source subqueries.sql;

