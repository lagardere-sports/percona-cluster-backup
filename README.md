# About this repo

This is a docker image which is based on percona and has `gsutils` und `kubectl` installed. 
It has two usecases:
- Create a percona backup and upload it to google cloud storage
- Download a backup from google cloud storage and restore it

kubectl is used to launch containers that might be needed for the backups.
