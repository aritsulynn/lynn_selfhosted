#!/bin/bash
mongosh -- "$MONGO_INITDB_DATABASE" <<EOF
    var user = '$MONGO_INITDB_USERNAME';
    var passwd = '$MONGO_INITDB_PASSWORD';

    db.createUser({
      user: user,
      pwd: passwd,
      roles: [{ role: "readWrite", db: "$MONGO_INITDB_DATABASE" }]
    });
EOF