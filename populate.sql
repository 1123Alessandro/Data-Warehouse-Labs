-- DROP DATABASE StudentRecords;
CREATE DATABASE StudentRecords;

USE StudentRecords;

CREATE TABLE bio (
    bio_id INT NOT NULL AUTO_INCREMENT,
    bio_fname VARCHAR(20),
    bio_mname VARCHAR(20),
    bio_lname VARCHAR(20),
    bio_gender VARCHAR(10),
    bio_bday DATE,
    PRIMARY KEY (bio_id)
);

CREATE TABLE location (
    loc_id INT NOT NULL AUTO_INCREMENT,
    loc_street VARCHAR(50),
    loc_city VARCHAR(50),
    loc_country VARCHAR(50),
    PRIMARY KEY(loc_id)
);

CREATE TABLE application (
    app_id INT NOT NULL AUTO_INCREMENT,
    app_fchoice VARCHAR(80),
    app_schoice VARCHAR(80),
    PRIMARY KEY(app_id)
);

CREATE TABLE family (
    fam_id INT NOT NULL AUTO_INCREMENT,
    fam_mother VARCHAR(70),
    fam_father VARCHAR(70),
    fam_income INT,
    PRIMARY KEY(fam_id)
);

CREATE TABLE scholarship (
    schlr_id INT NOT NULL AUTO_INCREMENT,
    schlr_name VARCHAR(60),
    schlr_type VARCHAR(60),
    PRIMARY KEY(schlr_id)
);

CREATE TABLE highschool (
    hs_id INT NOT NULL AUTO_INCREMENT,
    hs_name VARCHAR(60),
    hs_street VARCHAR(60),
    hs_country VARCHAR(50),
    PRIMARY KEY(hs_id)
);

CREATE TABLE admission (
    adm_id INT NOT NULL AUTO_INCREMENT,
    adm_year DATE,
    adm_sem INT,
    PRIMARY KEY(adm_id)
);

CREATE TABLE program (
    pgm_id INT NOT NULL AUTO_INCREMENT,
    pgm_name VARCHAR(70),
    pgm_desc TEXT,
    pgm_units INT,
    PRIMARY KEY(pgm_id)
);

CREATE TABLE college (
    coll_id INT NOT NULL AUTO_INCREMENT,
    coll_name VARCHAR(60),
    coll_building VARCHAR(60),
    coll_dean VARCHAR(50),
    coll_deptaff VARCHAR(60),
    coll_deptchair VARCHAR(50),
    PRIMARY KEY(coll_id)
);

CREATE TABLE course (
    crs_code VARCHAR(20) NOT NULL,
    crs_currver DATE,
    crs_name VARCHAR(60),
    crs_units INT,
    crs_desc TEXT,
    crs_prereq VARCHAR(20),
    crs_type VARCHAR(30),
    crs_group VARCHAR(30),
    crs_instr VARCHAR(50),
    PRIMARY KEY(crs_code)
);

CREATE TABLE year (
    year_id INT NOT NULL AUTO_INCREMENT,
    year_sem INT,
    year_schyr DATE,
    PRIMARY KEY(year_id)
);

CREATE TABLE building (
    bldg_id INT NOT NULL AUTO_INCREMENT,
    bldg_name VARCHAR(70),
    bldg_room VARCHAR(30),
    PRIMARY KEY(bldg_id)
);

CREATE TABLE tuition (
    tui_id INT NOT NULL AUTO_INCREMENT,
    tui_fee INT,
    tui_misc INT,
    tui_lab INT,
    tui_ppu INT,
    PRIMARY KEY(tui_id)
);

CREATE TABLE student (
    stud_id INT NOT NULL AUTO_INCREMENT,
    stud_ees INT NOT NULL,
    stud_hsg INT NOT NULL,
    bio_id INT REFERENCES bio(bio_id),
    loc_id INT REFERENCES location(loc_id),
    app_id INT REFERENCES application(app_id),
    fam_id INT REFERENCES family(fam_id),
    schlr_id INT REFERENCES scholarship(schlr_id),
    hs_id INT REFERENCES highschool(hs_id),
    adm_id INT REFERENCES admission(adm_id),
    pgm_id INT REFERENCES program(pgm_id),
    coll_id INT REFERENCES college(coll_id),
    crs_code VARCHAR(20) REFERENCES course(crs_code),
    year_id INT REFERENCES year(year_id),
    bldg_id INT REFERENCES building(bldg_id),
    tui_id INT REFERENCES tuition(tui_id),
    PRIMARY KEY(stud_id)
);

----------------------------------------------------------------------------------------------------

INSERT INTO bio (bio_fname, bio_mname, bio_lname, bio_gender, bio_bday) VALUES
("Sandra", "Rodrigo", "Bullok", "Female", "13-Nov-80"),
("Whammy", "Hieu", "Jackman", "Male", "2-Jan-02"),
("Olivia", "Rodrigo", "Duterte", "Female", "13-Mar-90"),
("Taylor", "Lautner", "Sheesh", "Non-Binary", "10-Jun-95"),
("Zendaya", "Holland", "Park", "Female", "10-Sep-92"),
("Zack", "Tabudlo", "Apron", "Male", "10-Dec-01"),
("Ariana", "Falls", "Venti", "Female", "14-Feb-87");

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
("2001", 1),
("2002", 1);

INSERT INTO program (pgm_name, pgm_desc, pgm_units) VALUES
("Bachelor of Science in Computer Science", "Aims to provide knowledge in Computer Science", 37),
("Bachelor of Science in Physics", "Aims to provide knowledge in Physics", 39);

INSERT INTO college (coll_name, coll_building, coll_dean, coll_deptaff, coll_deptchair) VALUES
("College of Information and Computing Sciences", "Blessed Pio Georgio Frassati", "Juan Luna", "Department of Computer Science", "Jose Rizal"),
("College of Science", "Main Building", "Apolinario Mabini", "Department of Physics", "Andres Bonifacio");

INSERT INTO course (crs_currver, crs_code, crs_name, crs_units, crs_desc, crs_prereq, crs_type, crs_group, crs_instr) VALUES
("1996", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh"),
("1996", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla"),
("2001", "CS110", "Theory of Computation", 3, "Studies the theory of computation", "CS109", "Lecture", "Professional", "Henry Yrneh"),
("2001", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Albert Trebla"),
("2001", "PHYS110", "Statistical Mechanics", 3, "Studies statistical mechanics", "PHYS109", "Laboratory", "Professional", "Madeline Eniledam"),
("1996", "PHYS112", "Quantum Mechanics", 3, "Studies quantum mechanics", "PHYS111", "Lecture", "Professional", "Albert Trebla"),
("2001", "CS109", "Algorithms and Complexity", 3, "Studies algorithms and complexity", "CS108", "Lecture", "Professional", "Henry Yrneh"),
("2001", "PE4", "Physical Education 4", 3, "Studies Physical Education", "PE3", "Laboratory", "General", "Albus Subla"),
("2001", "RW2", "Works of Rizal", 3, "Studies the Works of Rizal", "RW1", "Lecture", "General", "Henry Yrneh"),
("1996", "FIL23", "Filipino Literature", 3, "Studies Philippine Literature", "CS109", "Lecture", "General", "Josie Eisoj");

INSERT INTO year (year_sem, year_schyr) VALUES
("1st Semester", "2002"),
("2nd Semester", "2002"),
("1st Semester", "2001"),
("2nd Semester", "2001"),
("2nd Semester", "2003");

INSERT INTO building (bldg_name, bldg_room) VALUES
("Blessed Pio Georgio Frassati", "Room A"),
("Main Building", "Room B"),
("Main Building", "Room C"),
("Main Building", "Field A"),
("Blessed Pio Georgio Frassati", "Room D");

INSERT INTO tuition (tui_fee, tui_misc, tui_lab, tui_ppu) VALUES
(37000, 2500, 10000, 1000),
(39000, 5000, 20000, 1000);
