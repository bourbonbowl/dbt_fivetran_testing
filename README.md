# Fivetran DBT Test

## Purpose
Used to test data ingestion and transformation with fivetran and dbt core.

## Example ERD
Below is an example ERD using mermaid markdown syntax.

```mermaid
%% ------ example erd ---------- %%
erDiagram
    
    %% -------- entities --------- %%

    orders["Orders"] {
        string column0
        string column1
        number column2
    }

    users["Users"] {
        string column0
        string column1
        number column2
    }

    inventory["Inventory Item"] {
        string column0
        string column1
        number column2
    }

    transactions["Transactions"] {
        string column0
        number column1
        number column2
    }

    %% -------- relationships --------- %%
    
    users 1 to 0+ orders : places
    orders 1 to 1+ inventory : has
    orders 1 to 1+ transactions : has
```

# Project Overview
```mermaid
gantt
    dateformat YYYY-MM-DD
    tickInterval 2month
        preparation           : 2025-01-01, 2025-02-01
        implementation        : 2025-02-01, 2025-07-01
        qa                    : 2025-07-01, 2025-08-01
        wrapup                : 2025-01-01, 2025-12-01
```

# Project
| date          | status             | item         | notes 
| :-            | :-                 | :-           | :-
| 2025-01-05    | &check;            | ACB          | xdfsfdghhgdfjfgdgfdgdfgdf
| 2025-01-07    |                    | XYZ          | ghghgfghfgfhgh
