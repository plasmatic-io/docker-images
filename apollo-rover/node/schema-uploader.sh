#!/usr/bin/env bash

rover graph introspect $1 > schema.graphql
APOLLO_KEY=$2 rover subgraph publish $3 --name $4 --schema ./schema.graphql --routing-url $1
