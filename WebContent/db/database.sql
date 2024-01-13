create table kp_registration
(
id number(9) primary key,
firstname varchar(50),
lastname varchar(50),
mobile_no varchar(15),
dob varchar(50),
city varchar(30),
email_id varchar(80),
password varchar(25),
gender varchar(20),
nw_password varchar(20),
status varchar(20)
);

insert into kp_registration values(1,'Deendayal','kumawat','9602063435','1-june-1993','Jaipur','kkumawat1111@gmail.com','abc','male');

create table kp_phonebook
(
u_id number(9) primary key,
name varchar(50),
contact_no varchar(15),
birth_date varchar(25),
email varchar(80),
id number(9),
FOREIGN KEY (id) REFERENCES kp_registration(id)
);
create sequence kp_id_seq;
create sequence Ukp_id_seq;
//Sequences for kp_registration table
1.kp_id_seq

//Sequences for kp_phonebook table
2.Ukp_id_seq