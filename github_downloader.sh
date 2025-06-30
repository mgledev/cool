#!/bin/bash
mkdir -p ~/Pulpit/github
cd ~/Pulpit/github
gh repo list mgledev --limit 1000 --json nameWithOwner,sshUrl --jq '.[] | .sshUrl' | while read repo; do
  git clone "$repo"
done
