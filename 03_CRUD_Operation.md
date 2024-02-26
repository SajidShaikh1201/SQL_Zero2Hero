### SQL CRUD Operations

#### 1. **Create (INSERT) Operation:**

- **Syntax:**
  ```sql
  INSERT INTO table_name (column1, column2, column3, ...)
  VALUES (value1, value2, value3, ...);
  ```

- **Example:**
  ```sql
  INSERT INTO employees (employee_id, first_name, last_name, salary)
  VALUES (1, 'John', 'Doe', 50000);
  ```

#### 2. **Read (SELECT) Operation:**

- **Syntax:**
  ```sql
  SELECT column1, column2, ...
  FROM table_name
  WHERE condition;
  ```

- **Example:**
  ```sql
  SELECT first_name, last_name, salary
  FROM employees
  WHERE department_id = 10;
  ```

#### 3. **Update Operation:**

- **Syntax:**
  ```sql
  UPDATE table_name
  SET column1 = value1, column2 = value2, ...
  WHERE condition;
  ```

- **Example:**
  ```sql
  UPDATE employees
  SET salary = 55000
  WHERE employee_id = 1;
  ```

#### 4. **Delete Operation:**

- **Syntax:**
  ```sql
  DELETE FROM table_name
  WHERE condition;
  ```

- **Example:**
  ```sql
  DELETE FROM employees
  WHERE employee_id = 1;
  ```