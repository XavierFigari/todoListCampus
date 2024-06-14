#!/usr/bin/env sh

# set - x

# Step 1: Update Package Repository Index and Install the PostgreSQL Package
# --------------------------------------------------------------------------
apk update
apk add postgresql
apk add su-exec

# Step 2: Create Required Folders for PostgreSQL
# ----------------------------------------------
mkdir -p /run/postgresql
chown postgres:postgres /run/postgresql/

# Create the data directory, and make it less permissive
# --------------------------------------------------------
mkdir -p /var/lib/postgresql/data
chown postgres:postgres /var/lib/postgresql/data
chmod 700 /var/lib/postgresql/data

# Create a New Database Cluster with initdb
# --------------------------------------------------------
su-exec postgres initdb -D /var/lib/postgresql/data

# Start postgresql daemon
# --------------------------------------------------------
su-exec postgres pg_ctl start -D /var/lib/postgresql/data

# su-exec postgres psql