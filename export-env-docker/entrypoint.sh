#!/bin/bash

env | sort | grep -e '^ACTIONS_' >> $GITHUB_ENV