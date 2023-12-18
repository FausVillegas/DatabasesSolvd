alter table users
add column age int;

alter table phone_accesories
add column price decimal(10,2);

alter table cameras
add column quantity int;

alter table displays
add column resolution varchar(45);

alter table db_solvd.phones_has_phone_accesories
add column quantity int;
