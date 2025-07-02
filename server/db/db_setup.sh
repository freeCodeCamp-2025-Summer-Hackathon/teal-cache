#!bin/sh

# TODO:
# Create tables
# Populate tables via csv files

# Create dailydrip.db with sqlite3

sqlite3 dailydrip.db <<EOF
CREATE TABLE user (
    name TEXT,
    hash TEXT
);

EOF


# Reference:
# sqlite3 cryptid.db <<EOF
# DROP TABLE explorer;
# CREATE TABLE explorer (
#     name TEXT PRIMARY KEY,
#     country TEXT,
#     description TEXT
# );
# .mode list
# .import explorer.psv explorer
# EOF