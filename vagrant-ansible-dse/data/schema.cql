CREATE KEYSPACE testdb WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TYPE telephone (
  country_code text,
  area_code text,
  number text
);

CREATE TYPE address (
  street text,
  city text,
  zip_code int
);

CREATE TABLE users (
  userid uuid PRIMARY KEY,
  first_name text,
  last_name text,
  user_type text,
  business_name text,
  emails set<text>,
  phones map<text, telephone>
);
