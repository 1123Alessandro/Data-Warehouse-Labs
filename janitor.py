import pandas as pd
import numpy as np

data = pd.read_csv('StudentData.csv')
arr = np.array(data)

# column indices per table
student = arr[:, 0:20]
student_attributes = [
        # put shit here
        ]


college = arr[:, 25:30]
college_attributes = [
        ('coll_name', 'VARCHAR'),
        ('coll_building', 'VARCHAR'),
        ('coll_dean', 'VARCHAR'),
        ('coll_deptaff', 'VARCHAR'),
        ('coll_deptchair', 'VARCHAR')
        ]
