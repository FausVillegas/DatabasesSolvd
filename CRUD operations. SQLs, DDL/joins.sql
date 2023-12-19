SELECT u.id, u.name as user_name, ci.email, p.brand, p.model ,pt.type, d.inches_size , cam.resolution_MP as camera_resolution_MP, b.capacity_mAh, os.name as OS , pa.name as accesorie, c.name as contact_name 
FROM users u 
JOIN contact_information ci ON u.id = ci.users_id 
JOIN phones p ON u.id = p.users_id 
JOIN phones_has_phone_accesories pha ON p.id = pha.phones_id 
JOIN phone_accesories pa ON pha.phone_accesories_id = pa.id 
JOIN contacts c ON p.id = c.phones_id
JOIN phone_types pt ON pt.id = p.phone_types_id
JOIN displays d ON d.id = p.displays_id
JOIN cameras cam ON cam.id = p.cameras_id
JOIN batteries b ON b.id = p.batteries_id
JOIN operating_systems os ON os.id = p.operating_systems_id;

SELECT u.name, ci.email FROM users u JOIN contact_information ci ON u.id = ci.users_id;

#inner
SELECT u.name, ci.email FROM users u INNER JOIN contact_information ci ON u.id = ci.users_id;

#left
SELECT u.name,ci.email FROM users u LEFT JOIN contact_information ci ON u.id = ci.users_id;

#right
SELECT u.name,ci.email FROM users u RIGHT JOIN contact_information ci ON u.id = ci.users_id;

#full
SELECT brand,model,name FROM phones FULL JOIN contacts;
