#!/usr/bin/env bash

PGPASSWORD=postgres psql -h localhost -U postgres -d test -f ./data.sql