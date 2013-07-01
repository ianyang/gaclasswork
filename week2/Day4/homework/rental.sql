CREATE TABLE building (
	id INTEGER PRIMARY KEY AUTOINCREMENT
  , name TEXT
  , address TEXT
)
;

CREATE TABLE unit (
	id INTEGER PRIMARY KEY AUTOINCREMENT
  , number TEXT
  , sqf INTEGER
  , rent INTEGER
  , building_id INTEGER
)
;

CREATE TABLE tenant (
	id INTEGER PRIMARY KEY AUTOINCREMENT
  , name TEXT
  , phone TEXT
  , unit_id INTEGER
)
;

SELECT tenant.name, tenant.phone, unit.number FROM unit INNER JOIN tenant ON unit.id = tenant.unit_id;
SELECT sum(unit.rent) FROM unit INNER JOIN tenant ON unit.id = tenant.unit_id;
SELECT sum(unit.sqf) FROM unit INNER JOIN tenant ON unit.id = tenant.unit_id;