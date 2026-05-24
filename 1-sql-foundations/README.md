# SQL Foundations

Master SQL query patterns. 50 exercises. Beginner to advanced.

## Why This Matters

40% of DE interviews are SQL. You write queries daily in production. Master this first.

## Structure

```
├── setup.sql          # Create schema, load sample data
├── exercises/         # 50 .sql files (beginner → hard)
│   ├── 01_basic_selects.sql
│   ├── 02_joins.sql
│   └── ... 50 total
└── solutions/         # Answers + explanations
```

## Quick Start

### 1. Install PostgreSQL

**macOS:**
```bash
brew install postgresql@15
brew services start postgresql@15
```

**Linux (Ubuntu):**
```bash
sudo apt-get install postgresql postgresql-contrib
sudo systemctl start postgresql
```

**Windows:**
Download from https://www.postgresql.org/download/windows/

### 2. Create Database & Load Schema

```bash
createdb de_learning
psql de_learning < setup.sql
```

Verify:
```bash
psql de_learning
# Inside psql:
\dt
# Should show: customers, orders, order_items, products
```

### 3. Start Exercises

```bash
psql de_learning < exercises/01_basic_selects.sql
```

Each file has:
- **Question** (commented at top)
- **Your answer** (write here)
- **Test** (run to verify)

### 4. Check Solution

```bash
cat solutions/01_basic_selects.sql
```

Compare your answer to solution.

## Exercises Breakdown

| Range | Topic | Count |
|-------|-------|-------|
| 01–10 | SELECT, WHERE, ORDER BY | 10 |
| 11–20 | JOINs (INNER, LEFT, FULL) | 10 |
| 21–30 | GROUP BY, HAVING, aggregates | 10 |
| 31–40 | Window functions (ROW_NUMBER, RANK, LAG) | 10 |
| 41–50 | CTEs, subqueries, advanced | 10 |

## Interview Patterns

Common questions + answers in `INTERVIEW_PREP.md`.

## Progress

- [ ] setup.sql created
- [ ] exercises/ generated (50 files)
- [ ] solutions/ created
- [ ] All exercises passing
