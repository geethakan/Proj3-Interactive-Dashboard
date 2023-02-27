create table custreview (
   id varchar primary key not null,
   category varchar,
   rank int,
   name varchar,
   location varchar,
   imageurl varchar,
   description varchar,
   latitude float(24),
   longitude float(24),
   rate float(24),
   total_reviews int,
   excellent int,
   very_good int,
   average int,
   poor int,
   terrible int
);