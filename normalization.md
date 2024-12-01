# Normalization Process

## Objective
To ensure the Airbnb database schema adheres to the Third Normal Form (3NF) by removing redundancies and optimizing data integrity.

---

## Normalization Steps

### Step 1: First Normal Form (1NF)
- **Goal:** Eliminate repeating groups and arrays. Ensure all attributes are atomic and tables have primary keys.
- **Result:** 
  - All tables (`User`, `Property`, `Booking`, etc.) have primary keys and atomic attributes.
  - The schema satisfies 1NF.

---

### Step 2: Second Normal Form (2NF)
- **Goal:** Remove partial dependencies (non-key attributes depending only on part of a composite key).
- **Result:** 
  - All tables have single-column primary keys.
  - The schema satisfies 2NF.

---

### Step 3: Third Normal Form (3NF)
- **Goal:** Eliminate transitive dependencies (non-key attributes depending on other non-key attributes).
- **Analysis:**
  - **User Table:** No transitive dependencies. `email` and `first_name` depend only on `user_id`.
  - **Property Table:** No transitive dependencies. `host_id` is a foreign key, not a transitive dependency.
  - **Booking Table:** No transitive dependencies. Attributes depend on `booking_id`.
  - **Payment Table:** No transitive dependencies. Attributes depend on `payment_id`.
  - **Review Table:** No transitive dependencies. Attributes depend on `review_id`.
  - **Message Table:** No transitive dependencies. Attributes depend on `message_id`.

**Result:** The schema satisfies 3NF.

---

## Conclusion
The database schema adheres to the principles of normalization and is in Third Normal Form (3NF). This ensures:
- Minimal redundancy.
- Optimal data integrity.
- Improved query performance.

## References
- Airbnb Database Specification
- Principles of Database Normalization

