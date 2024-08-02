drop table payment;
drop table orders;
drop table delivery_partner;
drop table food;
drop table restaurant;
drop table phone;
drop table email;
drop table customers;
CREATE TABLE customers (
  cid VARCHAR(5) PRIMARY KEY,
  fname VARCHAR(20) NOT NULL,
  lname VARCHAR(20),
  email VARCHAR(30) UNIQUE
);

create table email(
	email varchar(30) references customers(email),
	dob date,
	street varchar(20),
	city varchar(20),
	pincode number(6)
);
create table phone(
	cid varchar(5) references customers(cid),
	phone number(10) primary key
);

CREATE TABLE restaurant (
    REST_ID number(5) PRIMARY KEY,
    REST_NAME VARCHAR(100),
    LOCALITY VARCHAR(100),
    RES_PHNO VARCHAR(15),
    RATING DECIMAL(2, 1)
);

CREATE TABLE Food (
    REST_ID number(5),
    FOOD_NAME VARCHAR(100),
    PRICE DECIMAL(5, 2),
    FOREIGN KEY (REST_ID) REFERENCES Restaurant(REST_ID)
);
CREATE TABLE DELIVERY_PARTNER (
    DP_ID number(5) PRIMARY KEY,
    F_NAME VARCHAR(50),
    L_NAME VARCHAR(50),
    DP_PHNO number(10),
    DP_AADHAR number(12),
    DP_RATING DECIMAL(3,2)
);

create table orders(
	order_no varchar(5) primary key ,
	cid varchar(5) references customers(cid),
	rest_id number(5) references restaurant(rest_id),
	order_date date,
	tot_amt number(5),
	pay_id number(5) unique,
	dp_id number(5) references delivery_partner(dp_id)
);
CREATE TABLE PAYMENT (
    PAY_ID number(5) references orders(pay_id),
    ORDER_NO varchar(5) references orders(order_no) on delete cascade,
    CID varchar(5) references customers(cid),
    STATUS VARCHAR(20),
    PAY_MODE VARCHAR(20)
);

insert into customers values('c100','Kayalvizhi','Balamurugan','kayal@gmail.com');
insert into email values('kayal@gmail.com','15-OCT-2002','K Pudur','Madurai',625007);
insert into phone values('c100',9943556809);

INSERT INTO customers VALUES('c101', 'Arun', 'Kumar', 'arun.kumar@gmail.com');
INSERT INTO customers VALUES('c102', 'Divya', 'Srinivasan', 'divya.srinivasan@gmail.com');
INSERT INTO customers VALUES('c103', 'Ravi', 'Shankar', 'ravi.shankar@gmail.com');
INSERT INTO customers VALUES('c104', 'Lakshmi', 'Priya', 'lakshmi.priya@gmail.com');
INSERT INTO customers VALUES('c105', 'Vijay', 'Subramanian', 'vijay.subramanian@gmail.com');


INSERT INTO email VALUES('arun.kumar@gmail.com', '10-MAR-1992', 'Anna Nagar', 'Chennai', 600040);
INSERT INTO email VALUES('divya.srinivasan@gmail.com', '18-JUL-1985', 'Gandhi Road', 'Coimbatore', 641009);
INSERT INTO email VALUES('ravi.shankar@gmail.com', '25-DEC-1980', 'Valluvar Street', 'Trichy', 620018);
INSERT INTO email VALUES('lakshmi.priya@gmail.com', '07-AUG-1995', 'Nehru Street', 'Salem', 636007);
INSERT INTO email VALUES('vijay.subramanian@gmail.com', '13-MAY-1988', 'Periyar Nagar', 'Madurai', 625020);


INSERT INTO phone VALUES('c101', 9876543210);
INSERT INTO phone VALUES('c102', 8765432109);
INSERT INTO phone VALUES('c103', 7654321098);
INSERT INTO phone VALUES('c104', 6543210987);
INSERT INTO phone VALUES('c105', 5432109876);


INSERT INTO Restaurant VALUES(1, 'The Spice House', 'T Nagar, Chennai', '123-456-7890', 4.5);
INSERT INTO Restaurant VALUES(2, 'Curry Palace', 'R S Puram, Coimbatore', '098-765-4321', 4.2);
INSERT INTO Restaurant VALUES(3, 'Tandoori Delight', 'Gandhipuram, Coimbatore', '567-890-1234', 4.0);
INSERT INTO Restaurant VALUES(4, 'Riyaz Parotta', 'Anna Nagar, Madurai', '234-567-8901', 4.8);
INSERT INTO Restaurant VALUES(5, 'Konnar Kadai', 'Simmakkal, Madurai', '345-678-9012', 4.3);
INSERT INTO Restaurant VALUES(6, 'Biryani Bistro', 'Vadavalli, Coimbatore', '456-789-0123', 4.6);
INSERT INTO Restaurant VALUES(7, 'Maharaja Feast', 'Velachery, Chennai', '678-901-2345', 4.7);
INSERT INTO Restaurant VALUES(8, 'Dosa Delight', 'KK Nagar, Trichy', '789-012-3456', 4.4);
INSERT INTO Restaurant VALUES(9, 'Chaat Chaska', 'Thillai Nagar, Trichy', '890-123-4567', 4.1);
INSERT INTO Restaurant VALUES(10, 'Rasoi Royale', 'Peelamedu, Coimbatore', '901-234-5678', 4.9);

INSERT INTO Food VALUES(1, 'Butter Chicken', 250.00);
INSERT INTO Food VALUES(1, 'Paneer Tikka', 200.00);
INSERT INTO Food VALUES(1, 'Chicken Tikka Masala', 220.00);
INSERT INTO Food VALUES(1, 'Naan', 40.00);
INSERT INTO Food VALUES(1, 'Gulab Jamun', 60.00);

INSERT INTO Food VALUES(2, 'Chicken Biryani', 180.00);
INSERT INTO Food VALUES(2, 'Veg Biryani', 150.00);
INSERT INTO Food VALUES(2, 'Raita', 30.00);
INSERT INTO Food VALUES(2, 'Papad', 20.00);
INSERT INTO Food VALUES(2, 'Mango Lassi', 50.00);

INSERT INTO Food VALUES(3, 'Tandoori Chicken', 220.00);
INSERT INTO Food VALUES(3, 'Chole Bhature', 120.00);
INSERT INTO Food VALUES(3, 'Paneer Butter Masala', 180.00);
INSERT INTO Food VALUES(3, 'Jeera Rice', 90.00);
INSERT INTO Food VALUES(3, 'Rasgulla', 60.00);

INSERT INTO Food VALUES(4, 'Hyderabadi Biryani', 240.00);
INSERT INTO Food VALUES(4, 'Mutton Rogan Josh', 280.00);
INSERT INTO Food VALUES(4, 'Chicken 65', 190.00);
INSERT INTO Food VALUES(4, 'Paratha', 50.00);
INSERT INTO Food VALUES(4, 'Jalebi', 70.00);

INSERT INTO Food VALUES(5, 'Masala Dosa', 100.00);
INSERT INTO Food VALUES(5, 'Idli Sambar', 80.00);
INSERT INTO Food VALUES(5, 'Vada', 50.00);
INSERT INTO Food VALUES(5, 'Upma', 90.00);
INSERT INTO Food VALUES(5, 'Filter Coffee', 40.00);

INSERT INTO Food VALUES(6, 'Fish Curry', 210.00);
INSERT INTO Food VALUES(6, 'Prawn Masala', 260.00);
INSERT INTO Food VALUES(6, 'Crab Masala', 280.00);
INSERT INTO Food VALUES(6, 'Rasam', 60.00);
INSERT INTO Food VALUES(6, 'Payasam', 80.00);

INSERT INTO Food VALUES(7, 'Dal Makhani', 160.00);
INSERT INTO Food VALUES(7, 'Aloo Paratha', 90.00);
INSERT INTO Food VALUES(7, 'Bhindi Masala', 130.00);
INSERT INTO Food VALUES(7, 'Lassi', 50.00);
INSERT INTO Food VALUES(7, 'Rabri', 100.00);

INSERT INTO Food VALUES(8, 'Chicken 65', 190.00);
INSERT INTO Food VALUES(8, 'Mutton Korma', 300.00);
INSERT INTO Food VALUES(8, 'Egg Curry', 150.00);
INSERT INTO Food VALUES(8, 'Pulao', 120.00);
INSERT INTO Food VALUES(8, 'Halwa', 70.00);

INSERT INTO Food VALUES(9, 'Pav Bhaji', 130.00);
INSERT INTO Food VALUES(9, 'Vada Pav', 70.00);
INSERT INTO Food VALUES(9, 'Bhel Puri', 50.00);
INSERT INTO Food VALUES(9, 'Pani Puri', 60.00);
INSERT INTO Food VALUES(9, 'Falooda', 100.00);

INSERT INTO Food VALUES(10, 'Kadai Paneer', 180.00);
INSERT INTO Food VALUES(10, 'Palak Paneer', 170.00);
INSERT INTO Food VALUES(10, 'Butter Naan', 40.00);
INSERT INTO Food VALUES(10, 'Veg Pulao', 110.00);
INSERT INTO Food VALUES(10, 'Rasmalai', 90.00);

INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (1, 'Ravi', 'Kumar', 9876543210, 123456789012, 4.5);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (2, 'Suman', 'Sharma', 9876543211, 234567890123, 4.8);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (3, 'Arjun', 'Verma', 9876543212, 345678901234, 4.2);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (4, 'Anjali', 'Singh', 9876543213, 456789012345, 4.7);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (5, 'Pooja', 'Patel', 9876543214, 567890123456, 4.6);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (6, 'Rahul', 'Gupta', 9876543215, 678901234567, 4.3);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (7, 'Sneha', 'Reddy', 9876543216, 789012345678, 4.9);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (8, 'Vikas', 'Jain', 9876543217, 890123456789, 4.1);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (9, 'Neha', 'Chopra', 9876543218, 901234567890, 4.4);
INSERT INTO DELIVERY_PARTNER (DP_ID, F_NAME, L_NAME, DP_PHNO, DP_AADHAR, DP_RATING) VALUES (10, 'Amit', 'Mehta', 9876543219, 112233445566, 4.7);

INSERT INTO orders VALUES('o1001', 'c101', 1, '12-JUN-2024', 450, 10001, 1);
INSERT INTO orders VALUES('o1002', 'c102', 2, '13-JUN-2024', 380, 10002, 2);
INSERT INTO orders VALUES('o1003', 'c103', 3, '14-JUN-2024', 310, 10003, 3);
INSERT INTO orders VALUES('o1004', 'c104', 4, '15-JUN-2024', 560, 10004, 4);
INSERT INTO orders VALUES('o1005', 'c105', 5, '16-JUN-2024', 430, 10005, 5);
INSERT INTO orders VALUES('o1006', 'c101', 6, '17-JUN-2024', 320, 10006, 6);
INSERT INTO orders VALUES('o1007', 'c102', 7, '18-JUN-2024', 400, 10007, 7);
INSERT INTO orders VALUES('o1008', 'c103', 8, '19-JUN-2024', 370, 10008, 8);
INSERT INTO orders VALUES('o1009', 'c104', 9, '20-JUN-2024', 290, 10009, 9);
INSERT INTO orders VALUES('o1010', 'c105', 10, '21-JUN-2024', 520, 10010, 10);

INSERT INTO PAYMENT VALUES(10001, 'o1001', 'c101', 'Completed', 'Credit Card');
INSERT INTO PAYMENT VALUES(10002, 'o1002', 'c102', 'Completed', 'Debit Card');
INSERT INTO PAYMENT VALUES(10003, 'o1003', 'c103', 'Pending', 'Cash');
INSERT INTO PAYMENT VALUES(10004, 'o1004', 'c104', 'Completed', 'Net Banking');
INSERT INTO PAYMENT VALUES(10005, 'o1005', 'c105', 'Failed', 'UPI');
INSERT INTO PAYMENT VALUES(10006, 'o1006', 'c101', 'Completed', 'Credit Card');
INSERT INTO PAYMENT VALUES(10007, 'o1007', 'c102', 'Pending', 'Debit Card');
INSERT INTO PAYMENT VALUES(10008, 'o1008', 'c103', 'Completed', 'Cash');
INSERT INTO PAYMENT VALUES(10009, 'o1009', 'c104', 'Completed', 'Net Banking');
INSERT INTO PAYMENT VALUES(10010, 'o1010', 'c105', 'Completed', 'UPI');