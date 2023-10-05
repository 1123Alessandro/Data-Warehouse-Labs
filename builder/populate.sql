-- DROP DATABASE StudentRecords;
CREATE DATABASE StudentRecords;

USE StudentRecords;

CREATE TABLE student (
    stud_id INT NOT NULL AUTO_INCREMENT,
    stud_fname VARCHAR(45),
    stud_mname VARCHAR(45),
    stud_lname VARCHAR(45),
    stud_gender VARCHAR(45),
    stud_bday DATE,
    stud_street VARCHAR(45),
    stud_city VARCHAR(45),
    stud_country VARCHAR(45),
    stud_ees INT,
    stud_app_fchoice VARCHAR(45),
    stud_app_schoice VARCHAR(45),
    stud_mother VARCHAR(45),
    stud_father VARCHAR(45),
    stud_fam_income INT,
    stud_schlr_name VARCHAR(45),
    stud_schlr_type VARCHAR(45),
    stud_hs_name VARCHAR(45),
    stud_hs_street VARCHAR(45),
    stud_hs_country VARCHAR(45),
    stud_hs_grade INT,
    PRIMARY KEY(stud_id)
);

CREATE TABLE admission (
    adm_id INT NOT NULL AUTO_INCREMENT,
    adm_year DATE,
    adm_sem INT,
    adm_pgm_name VARCHAR(45),
    adm_pgm_desc TEXT,
    adm_pgm_units INT,
    PRIMARY KEY(adm_id)
);

CREATE TABLE college (
    coll_id INT NOT NULL AUTO_INCREMENT,
    coll_name VARCHAR(45),
    coll_building VARCHAR(45),
    coll_dean VARCHAR(45),
    coll_deptaff VARCHAR(45),
    coll_deptchair VARCHAR(45),
    PRIMARY KEY(coll_id)
);

CREATE TABLE course (
    crs_id INT NOT NULL AUTO_INCREMENT,
    crs_code VARCHAR(45),
    crs_currver DATE,
    crs_name VARCHAR(45),
    crs_units INT,
    crs_desc TEXT,
    crs_prereq VARCHAR(45),
    crs_type VARCHAR(45),
    crs_group VARCHAR(45),
    crs_instr VARCHAR(45),
    crs_sem INT,
    crs_schyr DATE,
    crs_bldg_name VARCHAR(45),
    crs_bldg_room VARCHAR(45),
    PRIMARY KEY(crs_id)
);

CREATE TABLE enrollment (
    stud_id INT REFERENCES student(stud_id),
    adm_id INT REFERENCES admission(adm_id),
    coll_id INT REFERENCES college(coll_id),
    crs_id INT REFERENCES course(crs_id),
    enr_tuition_fee INT,
    enr_misc_fee INT,
    enr_lab_fee INT,
    enr_ppu INT,
    PRIMARY KEY(stud_id, adm_id, coll_id, crs_id)
);

----------------------------------------------------------------------------------------------------

INSERT INTO student (stud_fname, stud_mname, stud_lname, stud_gender, stud_bday, stud_street, stud_city, stud_country, stud_ees, stud_app_fchoice, stud_app_schoice, stud_mother, stud_father, stud_fam_income, stud_schlr_name, stud_schlr_type, stud_hs_name, stud_hs_street, stud_hs_country, stud_hs_grade) VALUES
("Sandra", "Rodrigo", "Bullok", "Female", "13-Nov-80", "Navarra Street", "Quezon City", "Philippines", 92, "Bachelor of Science in Pharmacy", "Bachelor of Science in Computer Science", "Elsa H. Rodrigo", "Narciso A. Bullok", 1000000, "Entrance Merit Scholarship", "Merit-based", "Mataas na Paaralan ng Mababang Bundok", "Mababang Bundok Street", "Philippines", 92),
("Whammy", "Hieu", "Jackman", "Male", "2-Jan-02", "Espana Avenue", "Quezon City", "Philippines", 77, "Bachelor of Science in Physics", "Bachelor of Science in Computer Science", "Tran A. Hieu", "Hugh C. Jackman", 250000, "POEA Scholarship", "Needs-based", "Mataas na Paaralan ng Mababang Bundok", "Mababang Bundok Street", "Philippines", 80),
("Olivia", "Rodrigo", "Duterte", "Female", "13-Mar-90", "P. Florentino Street", "Manila City", "Philippines", 80, "Bachelor of Science in Physics", "Bachelor of Science in Physical Education", "Elsa H. Rodrigo", "Rudy E. Duterte", 335000, "DOST Scholarship", "Merit-based", "Mataas na Paaralan ng Lungsod ng Maynila", "Mababang Bundok Street", "Philippines", 98),
("Taylor", "Lautner", "Sheesh", "Non-Binary", "10-Jun-95", "Bagumbuhay Street", "Manila City", "Philippines", 84, "Bachelor of Arts in Filipino", "Bachelor of Arts in Communication Arts", "Margeary Z. Lautner", "Tom Z. Sheesh", 2600000, "nan", "nan", "International School of the National Artistic Arts University", "International Street", "Philippines", 70),
("Zendaya", "Holland", "Park", "Female", "10-Sep-92", "Matalino Street", "Makati City", "Philippines", 90, "Bachelor of Science in Computer Science", "Bachelor of Arts in Filipino", "Alexandra X. Holland", "Jing-nae Park", 15000000, "nan", "nan", "International School of the National Artistic Arts University", "International Street", "Philippines", 75),
("Zack", "Tabudlo", "Apron", "Male", "10-Dec-01", "Maginhawa Street", "Makati City", "Philippines", 95, "Bachelor of Science in Computer Science", "Bachelor of Arts in Filipino", "Matutina P. Tabudlo", "Keech N. Apron", 150000, "DOST Scholarship", "Needs-based", "Mataas na Paaralan ng Mababang Bundok", "Mababang Bundok Street", "Philippines", 90),
("Ariana", "Falls", "Venti", "Female", "14-Feb-87", "L'oreal Street", "Makati City", "Philippines", 92, "Bachelor of Arts in Literature", "Bachelor of Science in Pharmacy", "Baga T. Falls", "Cinco H. Venti", 7000000, "nan", "nan", "International School of the National Artistic Arts University", "International Street", "Philippines", 92);

INSERT INTO admission (adm_year, adm_sem, adm_pgm_name, adm_pgm_desc, adm_pgm_units) VALUES
("2001", 1, "Bachelor of Science in Computer Science", "Aims to provide knowledge in Computer Science", 37),
("2001", 1, "Bachelor of Science in Physics", "Aims to provide knowledge in Physics", 39),
("2002", 1, "Bachelor of Science in Computer Science", "Aims to provide knowledge in Computer Science", 37),
("2002", 1, "Bachelor of Science in Physics", "Aims to provide knowledge in Physics", 39);

INSERT INTO college (coll_name, coll_building, coll_dean, coll_deptaff, coll_deptchair) VALUES
("College of Information and Computing Sciences", "Blessed Pio Georgio Frassati", "Juan Luna", "Department of Computer Science", "Jose Rizal"),
("College of Science", "Main Building", "Apolinario Mabini", "Department of Physics", "Andres Bonifacio");

INSERT INTO course (crs_code, crs_currver, crs_name, crs_units, crs_desc, crs_prereq, crs_type, crs_group, crs_instr, crs_sem, crs_schyr, crs_bldg_name, crs_bldg_room) VALUES
("1996", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh", 1, "2002", "Blessed Pio Georgio Frassati", "Room A"),
("1996", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla", 2, "2002", "Main Building", "Room B"),
("2001", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh", 1, "2002", "Blessed Pio Georgio Frassati", "Room A"),
("2001", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla", 2, "2002", "Main Building", "Room B"),
("2001", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Madeline Eniledam", 2, "2002", "Main Building", "Room B"),
("1996", "PHYS112", "Quantum Mechanics", 3, "Studies quantum mechanics", "PHYS111", "Lecture", "Professional", "Albert Trebla", 1, "2001", "Main Building", "Room C"),
("2001", "CS109", "Algorithms and Complexity", 3, "Studies algorithms and complexity", "CS108", "Lecture", "Professional", "Henry Yrneh", 1, "2001", "Blessed Pio Georgio Frassati", "Room A"),
("2001", "PE4", "Physical Education 4", 3, "Studies Physical Education", "PE3", "Laboratory", "General", "Albus Subla", 2, "2001", "Main Building", "Field A"),
("2001", "RW2", "Works of Rizal", 3, "Studies the Works of Rizal", "RW1", "Lecture", "General", "Henry Yrneh", 2, "2001", "Blessed Pio Georgio Frassati", "Room D"),
("1996", "FIL23", "Filipino Literature", 3, "Studies Philippine Literature", "CS109", "Lecture", "General", "Josie Eisoj", 2, "2003", "Blessed Pio Georgio Frassati", "Room D"),
("1996", "PHYS112", "Quantum Mechanics", 3, "Studies quantum mechanics", "PHYS111", "Lecture", "Professional", "Albert Trebla", 1, "2001", "Main Building", "Room B");

INSERT INTO enrollment (stud_id, adm_id, coll_id, crs_id, enr_tuition_fee, enr_misc_fee, enr_lab_fee, enr_ppu) VALUES
(1, 1, 1, 1, 37000, 2500, 10000),
(2, 2, 2, 2, 39000, 5000, 20000),
(3, 3, 1, 3, 37000, 2500, 10000),
(4, 4, 2, 4, 39000, 5000, 20000),
(5, 3, 1, 3, 37000, 2500, 10000),
(6, 4, 2, 5, 39000, 5000, 20000),
(7, 1, 1, 3, 37000, 2500, 10000),
(2, 2, 2, 6, 39000, 5000, 20000),
(3, 3, 1, 7, 37000, 2500, 10000),
(6, 4, 2, 8, 39000, 5000, 20000),
(7, 1, 1, 9, 37000, 2500, 10000),
(1, 1, 1, 10, 37000, 2500, 10000),
(2, 2, 2, 11, 39000, 5000, 20000);

