-- DROP DATABASE StudentRecords;
CREATE DATABASE StudentRecords;

USE StudentRecords;

----------------------------------------------------------------------------------------------------

INSERT INTO bio (bio_fname, bio_mname, bio_lname, bio_gender, bio_bday) VALUES
("Sandra", "Rodrigo", "Bullok", "Female", "1980-11-13"),
("Whammy", "Hieu", "Jackman", "Male", "2002-01-02"),
("Olivia", "Rodrigo", "Duterte", "Female", "1990-03-13"),
("Taylor", "Lautner", "Sheesh", "Non-Binary", "1995-06-10"),
("Zendaya", "Holland", "Park", "Female", "1992-09-10"),
("Zack", "Tabudlo", "Apron", "Male", "2001-12-10"),
("Ariana", "Falls", "Venti", "Female", "1987-02-14");

INSERT INTO location (loc_street, loc_city, loc_country) VALUES
("Navarra Street", "Quezon City", "Philippines"),
("Espana Avenue", "Quezon City", "Philippines"),
("P. Florentino Street", "Manila City", "Philippines"),
("Bagumbuhay Street", "Manila City", "Philippines"),
("Matalino Street", "Makati City", "Philippines"),
("Maginhawa Street", "Makati City", "Philippines"),
("L'oreal Street", "Makati City", "Philippines");

INSERT INTO application (app_fchoice, app_schoice) VALUES
("Bachelor of Science in Pharmacy", "Bachelor of Science in Computer Science"),
("Bachelor of Science in Physics", "Bachelor of Science in Computer Science"),
("Bachelor of Science in Physics", "Bachelor of Science in Physical Education"),
("Bachelor of Arts in Filipino", "Bachelor of Arts in Communication Arts"),
("Bachelor of Science in Computer Science", "Bachelor of Arts in Filipino"),
("Bachelor of Arts in Literature", "Bachelor of Science in Pharmacy");

INSERT INTO family (fam_mother, fam_father, fam_income) VALUES
("Elsa H. Rodrigo", "Narciso A. Bullok", 1000000),
("Tran A. Hieu", "Hugh C. Jackman", 250000),
("Elsa H. Rodrigo", "Rudy E. Duterte", 335000),
("Margeary Z. Lautner", "Tom Z. Sheesh", 2600000),
("Alexandra X. Holland", "Jing-nae Park", 15000000),
("Matutina P. Tabudlo", "Keech N. Apron", 150000),
("Baga T. Falls", "Cinco H. Venti", 7000000);

INSERT INTO scholarship (schlr_name, schlr_type) VALUES
("Entrance Merit Scholarship", "Merit-based"),
("POEA Scholarship", "Needs-based"),
("DOST Scholarship", "Merit-based"),
("nan", "nan"),
("DOST Scholarship", "Needs-based");

INSERT INTO highschool (hs_name, hs_street, hs_country) VALUES
("Mataas na Paaralan ng Mababang Bundok", "Mababang Bundok Street", "Philippines"),
("Mataas na Paaralan ng Lungsod ng Maynila", "Mababang Bundok Street", "Philippines"),
("International School of the National Artistic Arts University", "International Street", "Philippines");

INSERT INTO admission (adm_year, adm_sem) VALUES
("2001-01-01", 1),
("2002-01-01", 1);

INSERT INTO program (pgm_name, pgm_desc, pgm_units) VALUES
("Bachelor of Science in Computer Science", "Aims to provide knowledge in Computer Science", 37),
("Bachelor of Science in Physics", "Aims to provide knowledge in Physics", 39);

INSERT INTO college (coll_name, coll_building, coll_dean, coll_deptaff, coll_deptchair) VALUES
("College of Information and Computing Sciences", "Blessed Pio Georgio Frassati", "Juan Luna", "Department of Computer Science", "Jose Rizal"),
("College of Science", "Main Building", "Apolinario Mabini", "Department of Physics", "Andres Bonifacio");

INSERT INTO course (crs_currver, crs_code, crs_name, crs_units, crs_desc, crs_prereq, crs_type, crs_group, crs_instr) VALUES
("1996-01-01", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh"),
("1996-01-01", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla"),
("2001-01-01", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh"),
("2001-01-01", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla"),
("2001-01-01", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Madeline Eniledam"),
("1996-01-01", "PHYS112", "Quantum Mechanics", 3, "Studies quantum mechanics", "PHYS111", "Lecture", "Professional", "Albert Trebla"),
("2001-01-01", "CS109", "Algorithms and Complexity", 3, "Studies algorithms and complexity", "CS108", "Lecture", "Professional", "Henry Yrneh"),
("2001-01-01", "PE4", "Physical Education 4", 3, "Studies Physical Education", "PE3", "Laboratory", "General", "Albus Subla"),
("2001-01-01", "RW2", "Works of Rizal", 3, "Studies the Works of Rizal", "RW1", "Lecture", "General", "Henry Yrneh"),
("1996-01-01", "FIL23", "Filipino Literature", 3, "Studies Philippine Literature", "CS109", "Lecture", "General", "Josie Eisoj");

INSERT INTO year (year_sem, year_schyr) VALUES
(1, "2002-01-01"),
(2, "2002-01-01"),
(1, "2001-01-01"),
(2, "2001-01-01"),
(2, "2003-01-01");

INSERT INTO building (bldg_name, bldg_room) VALUES
("Blessed Pio Georgio Frassati", "Room A"),
("Main Building", "Room B"),
("Main Building", "Room C"),
("Main Building", "Field A"),
("Blessed Pio Georgio Frassati", "Room D");

INSERT INTO tuition (tui_fee, tui_misc, tui_lab, tui_ppu) VALUES
(37000, 2500, 10000, 1000),
(39000, 5000, 20000, 1000);

INSERT INTO student (bio_id, loc_id, stud_ees, app_id, fam_id, schlr_id, hs_id, stud_hsg, adm_id, pgm_id, coll_id, crs_id, year_id, bldg_id, tui_id) VALUES
(1, 1, 92, 1, 1, 1, 1, 92, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 77, 2, 2, 2, 1, 80, 1, 2, 2, 2, 2, 2, 2),
(3, 3, 80, 3, 3, 3, 2, 98, 2, 1, 1, 3, 1, 1, 1),
(4, 4, 84, 4, 4, 4, 3, 70, 2, 2, 2, 4, 2, 2, 2),
(5, 5, 90, 5, 5, 4, 3, 75, 2, 1, 1, 3, 1, 1, 1),
(6, 6, 95, 5, 6, 5, 1, 90, 2, 2, 2, 5, 2, 2, 2),
(7, 7, 92, 6, 7, 4, 3, 92, 1, 1, 1, 3, 1, 1, 1),
(2, 2, 77, 2, 2, 2, 1, 80, 1, 2, 2, 6, 3, 3, 2),
(3, 3, 80, 3, 3, 3, 2, 98, 2, 1, 1, 7, 3, 1, 1),
(6, 6, 95, 5, 6, 5, 1, 90, 2, 2, 2, 8, 4, 4, 2),
(7, 7, 92, 6, 7, 4, 3, 92, 1, 1, 1, 9, 4, 5, 1),
(1, 1, 92, 1, 1, 1, 1, 92, 1, 1, 1, 10, 5, 5, 1),
(2, 2, 77, 2, 2, 2, 1, 80, 1, 2, 2, 6, 3, 2, 2);

SELECT * FROM course;

-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

CREATE TABLE student (
    stud_id INT NOT NULL AUTO_INCREMENT,
    stud_fname VARCHAR,
    stud_mname VARCHAR,
    stud_lname VARCHAR,
    stud_gender VARCHAR,
    stud_bday DATE,
    stud_street VARCHAR,
    stud_city VARCHAR,
    stud_country VARCHAR,
    stud_ees INT,
    stud_app_fchoice VARCHAR,
    stud_app_schoice VARCHAR,
    stud_mother VARCHAR,
    stud_father VARCHAR,
    stud_fam_income INT,
    stud_schlr_name VARCHAR,
    stud_schlr_type VARCHAR,
    stud_hs_name VARCHAR,
    stud_hs_street VARCHAR,
    stud_hs_country VARCHAR,
    stud_hs_grade INT,
    PRIMARY KEY(stud_id)
);

CREATE TABLE admission (
    adm_id INT NOT NULL AUTO_INCREMENT,
    adm_year DATE,
    adm_sem INT,
    adm_pgm_name VARCHAR,
    adm_pgm_desc TEXT,
    adm_pgm_units INT,
    PRIMARY KEY(adm_id)
);

CREATE TABLE college (
    coll_id INT NOT NULL AUTO_INCREMENT,
    coll_name VARCHAR,
    coll_building VARCHAR,
    coll_dean VARCHAR,
    coll_deptaff VARCHAR,
    coll_deptchair VARCHAR,
    PRIMARY KEY(coll_id)
);

CREATE TABLE course (
    crs_id INT NOT NULL AUTO_INCREMENT,
    crs_code VARCHAR,
    crs_currver DATE,
    crs_name VARCHAR,
    crs_units INT,
    crs_desc TEXT,
    crs_prereq VARCHAR,
    crs_type VARCHAR,
    crs_group VARCHAR,
    crs_instr VARCHAR,
    crs_sem INT,
    crs_schyr DATE,
    crs_bldg_name VARCHAR,
    crs_bldg_room VARCHAR,
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
    enr_course_price FLOAT,
    PRIMARY KEY(stud_id, adm_id, coll_id, crs_id)
);
