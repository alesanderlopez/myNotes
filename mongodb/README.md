# Mongodb

## Backup
```bash
mongoexport --collection collection --out collection.json
mongoimport --db db --collection collection --file /opt/backups/collection.json

mongodump -d database -o folder_db
mongorestore --collection people --db accounts dump/accounts/people.bson
```