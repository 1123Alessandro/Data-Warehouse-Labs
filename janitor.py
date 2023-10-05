import pandas as pd
import numpy as np

data = pd.read_csv('StudentData.csv')
arr = np.array(data)

# column indices per table
student = arr[:, 0:20]
student_attributes = [
        ('stud_fname', 'VARCHAR'),
        ('stud_mname', 'VARCHAR'),
        ('stud_lname', 'VARCHAR'),
        ('stud_gender', 'VARCHAR'),
        ('stud_bday', 'DATE'),
        ('stud_street', 'VARCHAR'),
        ('stud_city', 'VARCHAR'),
        ('stud_country', 'VARCHAR'),
        ('stud_ees', 'INT'),
        ('stud_app_fchoice', 'VARCHAR'),
        ('stud_app_schoice', 'VARCHAR'),
        ('stud_mother', 'VARCHAR'),
        ('stud_father', 'VARCHAR'),
        ('stud_fam_income', 'INT'),
        ('stud_schlr_name', 'VARCHAR'),
        ('stud_schlr_type', 'VARCHAR'),
        ('stud_hs_name', 'VARCHAR'),
        ('stud_hs_street', 'VARCHAR'),
        ('stud_hs_country', 'VARCHAR'),
        ('stud_hs_grade', 'INT')
        ]


admission = arr[:, 20:25]
admission_attributes = [
        ('adm_year', 'DATE'),
        ('adm_sem', 'INT'),
        ('adm_pgm_name', 'VARCHAR'),
        ('adm_pgm_desc', 'TEXT'),
        ('adm_pgm_units', 'INT')
        ]


college = arr[:, 25:30]
college_attributes = [
        ('coll_name', 'VARCHAR'),
        ('coll_building', 'VARCHAR'),
        ('coll_dean', 'VARCHAR'),
        ('coll_deptaff', 'VARCHAR'),
        ('coll_deptchair', 'VARCHAR')
        ]


course = arr[:, 30:43]
course_attributes = [
        ('crs_code', 'VARCHAR'),
        ('crs_currver', 'DATE'),
        ('crs_name', 'VARCHAR'),
        ('crs_units', 'INT'),
        ('crs_desc', 'TEXT'),
        ('crs_prereq', 'VARCHAR'),
        ('crs_type', 'VARCHAR'),
        ('crs_group', 'VARCHAR'),
        ('crs_instr', 'VARCHAR'),
        ('crs_sem', 'INT'),
        ('crs_schyr', 'DATE'),
        ('crs_bldg_name', 'VARCHAR'),
        ('crs_bldg_room', 'VARCHAR')
        ]