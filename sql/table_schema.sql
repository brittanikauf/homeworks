-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_No" int   NOT NULL,
    "Dept_Name" string   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Dept_Employees" (
    "Emp_No" int   NOT NULL,
    "Dept_No" int   NOT NULL,
    "From_Date" datetime   NOT NULL,
    "To_Date" datetime   NOT NULL,
    CONSTRAINT "pk_Dept_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Dept_Manager" (
    "Dept_No" int   NOT NULL,
    "Emp_No" int   NOT NULL,
    "From_Date" datetime   NOT NULL,
    "To_Date" datetime   NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Employees" (
    "Emp_No" int   NOT NULL,
    "Birth_Date" datetime   NOT NULL,
    "First_Name" string   NOT NULL,
    "Last_Name" string   NOT NULL,
    "Gender" string   NOT NULL,
    "Hire_date" datetime   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_No" int   NOT NULL,
    "Salary" int   NOT NULL,
    "From_Date" datetime   NOT NULL,
    "To_Date" datetime   NOT NULL
);

CREATE TABLE "Titles" (
    "Emp_No" int   NOT NULL,
    "Title" string   NOT NULL,
    "From_Date" datetime   NOT NULL,
    "To_Date" datetime   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Emp_No"
     )
);

ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Dept_Employees" ("Emp_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Dept_Manager" ("Emp_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_From_Date_To_Date" FOREIGN KEY("From_Date", "To_Date")
REFERENCES "Dept_Employees" ("From_Date", "To_Date");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_From_Date_To_Date" FOREIGN KEY("From_Date", "To_Date")
REFERENCES "Dept_Employees" ("From_Date", "To_Date");

