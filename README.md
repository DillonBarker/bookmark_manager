# Bookmark Manager

User Story:

```
As a user
I want to show a list of my bookmarks
```
Diagram:
<img src='images/list_diagram.png'>

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

### Setting up the database (Documenting Database Setup):
- Setup psql
- Go into user
```
psql student
```
- Create the database
```
CREATE DATABASE bookmark_manager;
```
- Enter the database
```
\c bookmark_manager
```
- Then you must run the query from the file 01_create_bookmarks_table.sql
