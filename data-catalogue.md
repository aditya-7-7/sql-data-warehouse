# Data Catalog — Gold Layer

## Summary
The Gold Layer contains business-ready datasets formatted for reporting and analytics. It includes both dimension and fact tables that represent finalized, consumable data for business use.

### 1. gold.dim_customers
**Purpose:** Contains enriched customer records including demographic and location attributes.
**Columns:**

| Column Name      | Data Type    | Description                                                                  |
| ---------------- | ------------ | ---------------------------------------------------------------------------- |
| customer\_key    | INT          | A surrogate key that uniquely identifies each customer row in the dimension. |
| customer\_id     | INT          | The unique numeric identifier assigned to a customer.                        |
| customer\_number | NVARCHAR(50) | An alphanumeric code used to reference or track the customer.                |
| first\_name      | NVARCHAR(50) | The first name of the customer as captured in source systems.                |
| last\_name       | NVARCHAR(50) | The last name or surname of the customer.                                    |
| country          | NVARCHAR(50) | Customer’s country of residence.                                             |
| marital\_status  | NVARCHAR(50) | The customer’s marital status.                                               |
| gender           | NVARCHAR(50) | Customer's gender.                                                           |
| birthdate        | DATE         | Customer’s date of birth in YYYY-MM-DD format.                               |
| create\_date     | DATE         | The date when the customer record was created in the system.                 |

### 2. gold.dim_products
**Purpose:** Holds product metadata and descriptive attributes used for classification and analysis.
**Columns:**

| Column Name           | Data Type    | Description                                                                                 |
| --------------------- | ------------ | ------------------------------------------------------------------------------------------- |
| product\_key          | INT          | Surrogate key that uniquely identifies each product record in the product dimension.        |
| product\_id           | INT          | The product’s unique numeric identifier for internal reference.                             |
| product\_number       | NVARCHAR(50) | Alphanumeric product code used for categorization or inventory tracking.                    |
| product\_name         | NVARCHAR(50) | The product’s descriptive name, including distinguishing details (type, color, size, etc.). |
| category\_id          | NVARCHAR(50) | Identifier that links the product to its category or high-level class.                      |
| category              | NVARCHAR(50) | The main classification grouping for the product (e.g., Bikes, Components).                 |
| subcategory           | NVARCHAR(50) | A more specific classification within the category (for example, product type).             |
| maintenance\_required | NVARCHAR(50) | Indicates whether maintenance is required for the product (e.g., 'Yes', 'No').              |
| cost                  | INT          | The base cost or expense associated with the product, expressed in whole currency units.    |
| product\_line         | NVARCHAR(50) | The product series or line the item belongs to (e.g., Road, Mountain).                      |
| start\_date           | DATE         | The date when the product became available for sale or use.                                 |

### 3. gold.fact_sales
**Purpose:** Contains sales transaction records used for measuring revenue and sales performance.
**Columns:**

| Column Name    | Data Type    | Description                                                                               |
| -------------- | ------------ | ----------------------------------------------------------------------------------------- |
| order\_number  | NVARCHAR(50) | Unique alphanumeric identifier for each sales order.                                      |
| product\_key   | INT          | Surrogate key that associates the sales line with the product dimension.                  |
| customer\_key  | INT          | Surrogate key that links the sales line to the customer dimension.                        |
| order\_date    | DATE         | The date on which the order was placed.                                                   |
| shipping\_date | DATE         | The date the order was shipped to the customer.                                           |
| due\_date      | DATE         | The date payment for the order is due.                                                    |
| sales\_amount  | INT          | Total monetary value of the line item sale.                                               |
| quantity       | INT          | Number of units ordered for the line item.                                                |
| price          | INT          | Unit price for the line item.                                                             |


