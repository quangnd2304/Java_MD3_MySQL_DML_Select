create table Catalog(
	catalogid int primary key auto_increment,
    catalogname nvarchar(50)    
);
create table product(
	productid int primary key auto_increment,
    productname nvarchar(50),
    price float,
    catalogid int,
    foreign key(catalogid) references catalog(catalogid)
);
insert into catalog(catalogname)
values('Quần áo'),('Áo sơ mi'),('Váy');
insert into product(productname,price,catalogid)
values('Áo polo',10,1),('Váy nữ abc',20,3),('Áo chưa biết tên',30,null);
select * from product;
select * from catalog;