CREATE TABLE Students(
 s_id NUMBER(5) NOT NULL PRIMARY KEY,
 user_id NUMBER(5) NOT NULL,
 pass_id VARCHAR(20) NOT NULL,
 ph_no NUMBER(12),
 sub VARCHAR(50),
 sys_date DATE,
 FOREIGN KEY (s_id) REFERENCES Students(s_id) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Faculty(
 f_id NUMBER(5) NOT NULL PRIMARY KEY,
 user_id NUMBER(5) NOT NULL,
 pass_id VARCHAR(20) NOT NULL,
 ph_no NUMBER(12),
 sub VARCHAR(50),
 sys_date DATE,
 s_id NUMBER(5),
 FOREIGN KEY (s_id) REFERENCES Students(s_id) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Parents(
 p_id NUMBER(5) NOT NULL PRIMARY KEY,
 user_id NUMBER(5) NOT NULL,
 pass_id VARCHAR(20) NOT NULL,
 ph_no NUMBER(12),
 s_id NUMBER(5) ,
 sys_date DATE,
 FOREIGN KEY (s_id) REFERENCES Students(s_id) ON DELETE CASCADE ON UPDATE RESTRICT
);

CREATE TABLE Admin(
 a_id NUMBER(5) NOT NULL PRIMARY KEY,
 user_id NUMBER(5) NOT NULL,
 pass_id VARCHAR(20) NOT NULL,
 s_id NUMBER(5),
 p_id NUMBER(5),
 FOREIGN KEY (s_id) REFERENCES Students(s_id),
 FOREIGN KEY (p_id) REFERENCES Parents(p_id) 

);




