# Analyzing Tokopaedi Trend With Basic SQL

## Basic Clauses
Based on klausa_dasar_part1.sql allows us to learn into fundamental SQL concepts. We initiate our journey by comprehending the process of creating tables, knowing the SELECT statement and using the FROM clause. Furthermore, gaining insights into the wildcard '*' and its strategic role in database querying enhances our ability to craft targeted and effective SQL queries. So, here is an explanation of each clause used:

1. **Create Table:**
   In SQL, the `CREATE TABLE` statement is used to define and create a new table in a database. It includes specifying the table name and defining the columns along with their data types and constraints.

2. **Select:**
   The `SELECT` statement is used to retrieve data from one or more tables in a database. It allows you to specify the columns you want to retrieve, apply conditions using the `WHERE` clause and perform various operations on the data.

3. **From:**
   The `FROM` clause in SQL is used to specify the source table or tables from which you want to retrieve data. It is an essential part of the `SELECT` statement and indicates the tables involved in the query.

4. **Asterisk (*) - Wildcard:**   
   The asterisk (*) is a wildcard character in SQL that represents all columns of a table when used in the `SELECT` statement. It is a shortcut to select all available columns without explicitly listing each one.

Understanding these clauses not only empowers us to structure and retrieve data more effectively but also lays the foundation for optimized database management and enhanced query performance in future SQL endeavors.

Here is the output from this file:
1. Screenshot
   ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/klausa_dasar_part1.png)
3. Analysis: I create a new table named tokopaedi with the the following column  and I choose the most appropriate data type based on the information provided (reference: https://www.postgresql.org/docs/current/datatype.html)


## Operations and Operators
Based on operator_part2.sql as we embark on our exploration of SQL, it's essential to grasp the intricacies of operations and logical operators. These fundamental components form the backbone of crafting queries that sift through and manipulate data within a database. Let's dive into the world of SQL operations and logical operators to uncover the power they hold in shaping effective data queries.

1. **Operations**
   - **= (Equal to):** Checks if two values are equal.
   - **< (Less than):** Checks if the left operand is less than the right operand.
   - **> (Greater than):** Checks if the left operand is greater than the right operand.
   - **<= (Less than or equal to):** Checks if the left operand is less than or equal to the right operand.
   - **>= (Greater than or equal to):** Checks if the left operand is greater than or equal to the right operand.
   - **!= (Not equal to):** Checks if two values are not equal.

2. **Logical Operators**
   - **AND:** Returns true if both conditions on either side of the operator are true.
   - **OR:** Returns true if at least one of the conditions on either side of the operator is true.
   - **NOT:** Negates the result of the condition; returns true if the condition is false, and vice versa.

Here are 3 insights needed by applying existing operators to SQL queries:
1. Show only the order_id, customer_id, and sales columns
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor1_operator_part2.png)
   - Analysis: I have shown the required column such as order_id, customer_id, and sales with clause `SELECT` and `FROM` 
2. Show all transactions originating from the City of Seattle
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor2_operator_part2.png)
   - Analysis: I have shown all transactions originating from the City of Seattle with clause `SELECT`, `FROM` and `WHERE`. 
3. Show all lists of transactions from individual consumers (segment = Consumer) who buy Furniture products in New York City
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor3_operator_part2.png)
   - Analysis: I have shown the required column with clause `SELECT`, `FROM` and `WHERE`. It shows all lists of transactions from individual consumers (segment = Consumer) who buy Furniture products in New York City.

## Clauses in SQL
Based on insert_delete_distinct_between_order_limit_part3.sql the hierarchical order of execution is crucial in SQL because it directs the sequence in which various clauses within a query are processed. This ensures that data is manipulated and presented as intended, forming the foundation for crafting precise and effective SQL queries. Here are the explanation:

1. **FROM:**
   At the inception of a SQL query, the `FROM` clause plays a pivotal role by specifying the source table or tables from which data will be retrieved. It establishes the fundamental foundation upon which subsequent operations will be executed.

2. **WHERE:**
   Following the `FROM` clause, the `WHERE` clause takes center stage. This clause acts as a gatekeeper, meticulously filtering rows based on specified conditions. By doing so, it significantly narrows down the dataset, ensuring that only relevant data progresses further in the query.

3. **GROUP BY:**
   Once the initial dataset is refined, the `GROUP BY` clause steps in to introduce a higher level of organization. It groups rows based on the values of one or more columns, enabling a more structured analysis and aggregation of data.

4. **HAVING:**
   The `HAVING` clause follows the `GROUP BY` operation, applying conditions specifically to the grouped data. It acts as a post-processing filter, allowing for further refinement of the data after the grouping operation has taken place.

5. **SELECT:**
   Despite its customary appearance at the beginning of a query, the `SELECT` clause is executed according to its position in the hierarchical order. It plays a dual role, specifying both the columns to be retrieved and those to be calculated, thus determining the shape of the final result set.

6. **ORDER BY:**
   Following the selection of columns, the `ORDER BY` clause comes into play. This clause orchestrates the sorting of the result set based on specified columns, enhancing the visual presentation and interpretability of the data.

7. **LIMIT:**
   Finally, the `LIMIT` clause serves as a concluding directive, restricting the number of rows returned in the result set. This allows for a more controlled and manageable output, especially when dealing with large datasets.

Apart from that, it is also known that there are several important clauses that are necessary to simplify the query process, namely:
- **INSERT:**
  The `INSERT` statement is used to add new records to a table in a database. It allows for the insertion of specific values into designated columns.
- **DELETE:**
  The `DELETE` statement is employed to remove records from a table based on specified conditions. It should be used with caution to avoid unintended data loss.
- **BETWEEN:**
  The `BETWEEN` operator is utilized in a `WHERE` clause to filter results within a specified range, inclusively.
- **DISTINCT:**
  The `DISTINCT` keyword, when used in a `SELECT` statement, filters out duplicate values from the result set, displaying only unique values.

These SQL operations serve various purposes, such as adding or removing data, filtering results based on specific criteria, and ensuring uniqueness in query outputs.

Here are 3 insights needed by applying existing clauses to SQL queries:
1. Display a list of names of individual consumers who transacted in the month May 2014 and is located in the city of San Francisco
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor1.png)
   - Analysis: I have shown the required column with clause `SELECT`, `FROM`, `WHERE`, `BETWEEN` and `AND`. It shows a list of names of individual consumers who transacted in the month May 2014 and is located in the city of San Francisco.
2. Display the 10 most profitable goods transactions
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor2.png)
   - Analysis: I have shown the required column with clause `SELECT`, `FROM`, `ORDER BY` and `LIMIT`. It shows a list of the 10 most profitable goods transactions.
3. Display the 10 transactions with the greatest value
   - Screenshot
     ![Alt Text](https://github.com/LYRA0794/BasicSQL_DoubleDatabase_Analysis/blob/main/Output/nomor3.png)
   - Analysis: I have shown the required column with clause `SELECT`, `FROM`, `ORDER BY` and `LIMIT`. It shows a list of the 10 transactions with the greatest value.


