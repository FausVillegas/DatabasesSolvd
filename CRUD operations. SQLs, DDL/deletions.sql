delete from operating_systems
where id and (name like "Windows %" or name like "macOS %");

delete from contacts 
where phones_id=1 and name="Lauti";

delete from phone_types
where type="FeaturePhone";

delete from contact_information
where users_id=(SELECT id FROM users WHERE name = 'Bruno');

delete from phones
where operating_systems_id=(SELECT id FROM operating_systems WHERE name = 'iOS %');

delete from batteries
where capacity_mAh<4500;

delete from cameras
where resolution_MP<6;

delete from users 
where id and last_name="Raimondi";

delete from phone_accesories
where name="speaker";

delete from contacts
where phones_id=(SELECT id FROM phones WHERE brand = 'Samsung' and model = 'S22');

#delete all
delete from users where id;
delete from contact_information where id;
delete from phones where id;
delete from phone_types where id;
delete from displays where id;
delete from cameras where id;
delete from batteries where id;
delete from phones_has_phone_accesories where phones_id;
delete from phone_accesories where id;
delete from operating_systems where id;
delete from contacts where id;