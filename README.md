#  MySQL Database Viewer (Tkinter GUI)

This project is a desktop application built using Python and Tkinter that connects to a **MySQL database**. It allows users to:

- View available tables in a database
- Display data from any selected table
- Run custom SQL `SELECT` queries
- Visualize query results in a scrollable table

---

## Features

-  **Fetch Tables**: Lists all tables in the selected database.
-  **View Table Data**: Displays all rows and columns from a selected table.
-  **Custom Query Execution**: Run any `SELECT` query and view the results in a table format.
-  **Interactive GUI**: Easy-to-use layout using `tkinter` and `ttk.Treeview`.

---

##  Tech Stack

- **Language:** Python
- **GUI:** Tkinter
- **Database Connector:** mysql-connector-python
- **Database:** MySQL

---

##  UI Overview

| Component        | Description                                |
|------------------|--------------------------------------------|
| **Listbox**       | Shows all tables in the database            |
| **Buttons**       | Triggers to fetch tables, data, and queries |
| **Entry Field**   | For writing SQL SELECT queries              |
| **Treeview Table**| Displays query or table results             |

---

##  Setup Instructions

### 1. Install Requirements

```bash
pip install mysql-connector-python
