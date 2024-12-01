# Entity-Relationship Diagram for Airbnb Database

## Entities and Attributes
1. **User**:
   - Attributes: `user_id` (PK), `name`, `email`, `phone`, `created_at`

2. **Property**:
   - Attributes: `property_id` (PK), `host_id` (FK), `address`, `price_per_night`, `created_at`

3. **Booking**:
   - Attributes: `booking_id` (PK), `user_id` (FK), `property_id` (FK), `start_date`, `end_date`, `status`

4. **Payment**:
   - Attributes: `payment_id` (PK), `booking_id` (FK), `amount`, `payment_date`, `payment_method`

## Relationships
- **User to Property**: 1-to-Many (a user can host multiple properties)
- **User to Booking**: 1-to-Many (a user can make multiple bookings)
- **Property to Booking**: 1-to-Many (a property can have multiple bookings)
- **Booking to Payment**: 1-to-1 (each booking has one payment)

## Tools Used
- Draw.io for visualizing the ERD.
- GitHub repository for storing the diagram and requirements.

## Files in Repository
- `ERD/requirements.md`: This file contains the documentation for the ERD design process.
- `ERD/diagram.drawio`: The visual representation of the ERD.

