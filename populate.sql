CREATE DATABASE StudentRecords;

USE StudentRecords;
-- DROP DATABASE StudentRecords;

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
    fam_income INT
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
    PRIMARY KEY(hs_id),
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
    crs_code VARCHAR(20) NOT NULL AUTO_INCREMENT,
    crs_currver DATE,
    crs_name VARCHAR(60),
    crs_units INT,
    crs_desc TEXT,
    crs_prereq VARCHAR(20),
    crs_type VARCHAR(30),
    crs_group VARCHAR(30),
    crrs_instr VARCHAR(50),
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


