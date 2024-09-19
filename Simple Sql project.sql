create database school;
use school;
create table students(
student_id int primary key auto_increment,
first_name varchar(50),
Last_name varchar(50),
Emailaddress varchar(50) not null
);
create table course(
course_id int  primary key auto_increment,
student_id int,
course_name varchar(50),
foreign key school_course_students(student_id)
references students(student_id)
);

create table enrollment(
Registration_id int primary key auto_increment,
course_id int,
Course_fee int,
student_id int,
foreign key fk_registration_enrollment_course(course_id)
references  course(course_id)
on update no action
);

alter table course
add column first_name varchar(50),
add column last_name  varchar(50);



alter table students
add column date_of_birth datetime;

alter table course
add column first_name varchar(50), 
add column last_name  varchar(50);



insert into students values
(19941, 'Henry', 'James', 'henryjames@gmail.com', '1995-01-22'),
(19942, 'Cooper', 'Brown', 'cooperbrown@gmail.com', '1996-01-11'),
(19943, 'Bradley', 'Tom', 'tombradley@gmail.com', '1997-02-15'),
(19944, 'Brad', 'John', 'johnbrad@gmail.com', '1998-02-24'),
(19945, 'Dave', 'Batitsta', 'davebatista@gmail.com', '1999-08-28');

insert into course values
(20441, 19941, 'Henry', 'James', 'Business_math'),
(20442, 19942, 'Cooper', 'Brown', 'Descriptive_statistics'),
(20443, 19943, 'Bradley', 'Tom', 'History'),
(20444, 19944, 'Brad', 'John', 'Geography'),
(204445, 19945, 'Dave', 'Batista', 'Literature');

insert into enrollment values
(207774, 20441, 19941, 20),
(207775, 20442, 19942, 30),
(207776, 20443, 19943, 40),
(207777, 20444, 19944, 50),
(207778, 204445, 19945, 60);

drop table enrollment;









