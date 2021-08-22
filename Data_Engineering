CREATE TABLE departments (
    dept_no     VARCHAR(5)      NOT NULL,
    dept_name   VARCHAR(30)     NOT NULL,
    PRIMARY KEY (dept_no),
	UNIQUE   	(dept_name)
);

CREATE TABLE employees (
	emp_no      INT             NOT NULL,
	title_id 	VARCHAR(30)    NOT NULL,
	birth_date  DATE            NOT NULL,
	first_name  VARCHAR(30)     NOT NULL,
	last_name   VARCHAR(30)     NOT NULL,
	sex      VARCHAR(1) 		NOT NULL,
	hire_date   DATE            NOT NULL,
	PRIMARY KEY (emp_no),
	UNIQUE (emp_no)
);

CREATE TABLE dept_manager (
   dept_no      VARCHAR(5)      NOT NULL,
   emp_no       INT             NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     VARCHAR(5)         NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles (
    title_id    VARCHAR(30)     NOT NULL,
	title       VARCHAR(30)     NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no)
);
