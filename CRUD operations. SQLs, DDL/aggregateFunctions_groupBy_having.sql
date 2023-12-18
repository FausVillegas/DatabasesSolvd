###################### whitout having
select u.name,count(DISTINCT p.model) as quantity_phones from users u 
left join phones p on p.users_id = u.id
group by name;

# I added the age column in the alterers
update users set age=19 where id and name="Fausto";
update users set age=23 where id and name="Manuel";
select name,avg(age) from users
group by name;

select p.brand,count(c.id) as total_contacts FROM phones p 
join contacts c on c.phones_id = p.id
group by brand;

select u.name, count(p.id) as phones_quantity from users u
join phones p ON p.users_id = u.id
group by name;

select pa.name,count(pha.phone_accesories_id) from phone_accesories pa
join phones_has_phone_accesories pha on pha.phone_accesories_id = pa.id
group by name;

select p.model,count(pha.phones_id) as quantity_accesories from phones_has_phone_accesories pha
join phones p on pha.phones_id = p.id
group by p.model;

select os.name,count(p.operating_systems_id) as phones_with_os from operating_systems os
join phones p on p.operating_systems_id = os.id
group by name;

#################### whit having

select p.brand,count(c.id) as total_contacts FROM phones p 
join contacts c on c.phones_id = p.id
group by brand
having count(c.id)>=3;

select b.capacity_mAh,count(p.batteries_id) from batteries b
join phones p on p.batteries_id = b.id
group by capacity_mAh
having capacity_mAh<5000;

select u.name, count(p.id) as phones_quantity from users u
join phones p on p.users_id = u.id
group by name
having count(p.id)<5;

select p.brand,avg(b.capacity_mAh) from phones p
join batteries b on b.id = p.batteries_id
group by brand
having avg(b.capacity_mAh)>4000;

insert into `db_solvd`.`users`(`name`,`last_name`)value("Fausto","Rodriguez");
select name,count(name) as users_with_name from users
group by name
having count(name)>1;

insert into `db_solvd`.`phone_accesories`(`name`,`description`)value("phone cover","A hard shell-like case that snaps onto the phone.");
insert into `db_solvd`.`phones_has_phone_accesories`(`phones_id`,`phone_accesories_id`)value((SELECT id FROM phones WHERE model = 'S23'),(SELECT id FROM phone_accesories WHERE name = 'phone cover'));
select p.model,count(pha.phones_id) as quantity_accesories from phones_has_phone_accesories pha
join phones p on pha.phones_id = p.id
group by p.model
having count(pha.phones_id)>1;

select pt.type,count(p.phone_types_id) as phone_quantity from phone_types pt
join phones p on p.phone_types_id = pt.id
group by pt.type
having pt.type="SmartPhone" or pt.type="FeaturePhone";


select * from phone_types;
select * from operating_systems;
select * from contacts;
select * from contact_information;
select * from users;
select * from phones;



