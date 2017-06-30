#!/bin/bash
aws rds describe-db-snapshots --snapshot-type automated --db-instance-identifier $1 | jq --raw-output '(.DBSnapshots | map(.DBSnapshotIdentifier) | reverse)[0]'
