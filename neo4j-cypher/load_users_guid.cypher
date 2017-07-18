LOAD CSV WITH HEADERS FROM "file:///users_guid.csv" AS row
CREATE (:User {name : trim(row.name), PO : toBoolean(row.PO), EO : toBoolean(row.EO), active : toBoolean(row.active),	phone : trim(row.phone),	crphone : trim(row.crphone),	email : trim(row.email), address : trim(row.address),	firstname : trim(row.firstname), lastname : trim(row.lastname),	fullname : trim(row.fullname), hidden : toBoolean(row.hidden),	comment : trim(row.comment), obj_guid:right(left(row.GUID,37),36)} );
