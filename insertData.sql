
INSERT INTO hospital.doctor(firstName,lastName,specialty) VALUES("Steven","Strange", "Neurosurgeon");
INSERT INTO hospital.doctor(firstName,lastName,specialty) VALUES("Jekyll", "Hyde", "Physician");
INSERT INTO hospital.doctor(firstName,lastName,specialty) VALUES("Gregory", "House", "Nephrologist");
INSERT INTO hospital.doctor(firstName,lastName,specialty) VALUES("Julius", "Hibbert", "Physician");

INSERT INTO hospital.patient (firstName, lastName, street, city, st, zip, sex, age, insurance) VALUES ("Amy","Smith","123 Main St", "Greensboro", "NC", "27403","F",20, "Some Insurance");
INSERT INTO hospital.patient (firstName, lastName, street, city, st, zip, sex, age, insurance) VALUES ("Bob","Dale","315 Main St", "Greensboro", "NC", "27403","M",25, "Other Insurance");
INSERT INTO hospital.patient (firstName, lastName, street, city, st, zip, sex, age, insurance) VALUES ("Cody","Allen","210 School St", "Greensboro", "NC", "27405","F",20, "Alt Insurance");
INSERT INTO hospital.patient (firstName, lastName, street, city, st, zip, sex, age, insurance) VALUES ("Cindy","Allen","210 School St", "Greensboro", "NC", "27405","M",20, "Alt Insurance");

COMMIT;