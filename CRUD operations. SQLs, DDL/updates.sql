update users
set name="Bruno",age=15
where id = 7;

update batteries
set capacity_mAh= 0
where id>10;

update `db_solvd`.`phone_accesories`
set `description`="A pair of small loudspeaker drivers worn on or around the head over a user's ears."
where id and `name`="headphones";

update phones
set model="S23 plus"
where id and model="S23";

UPDATE phones
SET operating_systems_id = (SELECT id FROM operating_systems WHERE name = 'Android 13')
WHERE id AND brand = 'Samsung';

update displays
set inches_size = 6.5
where inches_size = 6.1;

update contacts
set phone_number="55555"
where name="Matias";

update contacts
set name="Matias Raimondi"
where phone_number="55555";

update contact_information
set phone_number=77777
where users_id=(SELECT id FROM users WHERE name = 'Manuel');

update contact_information
set email="raimondi@gmail.com"
where users_id=(SELECT id FROM users WHERE name = 'Manuel');

update contact_information
set email="villeasbruno@gmail.com"
where users_id=(SELECT id FROM users WHERE name = 'Bruno');

update contact_information
set email="villeasfausto@gmail.com"
where users_id=(SELECT id FROM users WHERE name = 'Fausto');

select * from operating_systems;
select * from contact_information;
select * from contacts;
select * from users;
select * from phones;
select * from phone_accesories;