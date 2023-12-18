insert into `db_solvd`.`users`(
	`name`,
    `last_name`
)value(
	"Fausto",
    "Villegas"
);

insert into `db_solvd`.`contact_information`(
	`email`,
    `phone_number`,
    `users_id`
)value(
	"faustovillegas@gmail.com",
    11111,
    (SELECT id FROM users WHERE name = 'Fausto')
);

insert into `db_solvd`.`users`(
	`name`,
    `last_name`
)value(
	"Manuel",
    "Raimondi"
);

insert into `db_solvd`.`contact_information`(
	`email`,
    `phone_number`,
    `users_id`
)value(
	"manuelraimondi@gmail.com",
    222222,
    (SELECT id FROM users WHERE name = 'Manuel')
);

insert into `db_solvd`.`operating_systems`(
	`name`
)value(
	"Windows 10"
);

insert into `db_solvd`.`operating_systems`(
	`name`
)value(
	"Android 12"
);

insert into `db_solvd`.`operating_systems`(
	`name`
)value(
	"iOS 17"
);

insert into `db_solvd`.`operating_systems`(
	`name`
)value(
	"Android 13"
);

insert into `db_solvd`.`batteries`(
	`capacity_mAh`
)value(
	4700
);

insert into `db_solvd`.`batteries`(
	`capacity_mAh`
)value(
	5500
);

insert into `db_solvd`.`cameras`(
	`resolution_MP`
)value(
	6.1
);

insert into `db_solvd`.`phone_accesories`(
	`name`,
    `description`
)value(
	"headphones",
    "A device for listening to audio signals such as music or speech."
);

insert into `db_solvd`.`phone_types`(
	`type`
)value(
	"SmartPhone"
);

insert into `db_solvd`.`phone_types`(
	`type`
)value(
	"FeaturePhone"
);

insert into `db_solvd`.`displays`(
	`inches_size`
)value(
	6.1
);

insert into `db_solvd`.`phones`(
	`brand`,
    `model`,
    `phone_types_id`,
    `displays_id`,
    `cameras_id`,
    `batteries_id`,
    `users_id`,
    `operating_systems_id`
)value(
	"Samsung",
    "S23",
    (SELECT id FROM phone_types WHERE type = 'SmartPhone'),
    (SELECT id FROM displays WHERE inches_size=6.1),
    (SELECT id FROM cameras WHERE resolution_MP=6.1),
    (SELECT id FROM batteries WHERE capacity_mAh=4700),
    (SELECT id FROM users WHERE name = 'Fausto'),
    (SELECT id FROM operating_systems WHERE name = 'Android 12')
);

insert into `db_solvd`.`phones_has_phone_accesories`(
	`phones_id`,
    `phone_accesories_id`
)value(
	(SELECT id FROM phones WHERE brand = 'Samsung' and model = 'S23'),
	(SELECT id FROM phone_accesories WHERE name = 'headphones')
);

insert into `db_solvd`.`contacts`(
	`name`,
    `phone_number`,
    `phones_id`
)value(
	"Matias",
	"33333",
    (SELECT id FROM phones WHERE model = 'S23')
);

insert into `db_solvd`.`contacts`(
	`name`,
    `phone_number`,
    `phones_id`
)value(
	"Antonio",
	"99999",
    (SELECT id FROM phones WHERE model = 'S23')
);

insert into `db_solvd`.`contacts`(
	`name`,
    `phone_number`,
    `phones_id`
)value(
	"Lauti",
	"44444",
    (SELECT id FROM phones WHERE model = 'S23')
);