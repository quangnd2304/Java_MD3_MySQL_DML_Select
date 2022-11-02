-- Lấy tất cả thông tin sinh viên
select * from student;
-- Lấy thông tin sinh viên bao gồm mã, tên, tuổi
select student.studentid,student.studentname,student.age
from student;
select s.studentid,s.studentname,s.age
from student s;
-- In ra số tuổi cao nhất, nhỏ nhất, trung bình, tổng của các sinh viên
select max(s.age) as 'Tuổi lớn nhất',min(s.age) as 'Tuổi nhỏ nhất',avg(s.age),sum(s.age)
from student s;
-- Lấy tổng số sinh viên trong bảng student
select count(s.studentId) from Student s;
-- Lấy tất cả mã sinh viên trong bảng marks
select distinct m.StudentId
from marks m;
-- Lấy tuổi sinh viên cộng thêm 10
select s.age+10
from student s;
-- Lấy thông tin sản phẩm gồm mã sản phẩm, tên, giá và tên danh mục
select p.productid,p.productname,p.price,c.catalogname
from product p join catalog c on c.catalogid = p.catalogid;

select p.productid,p.productname,p.price,c.catalogname
from product p left join catalog c on p.catalogid = c.catalogid;

select p.productid,p.productname,p.price,c.catalogname
from product p right join catalog c on p.catalogid = c.catalogid;

select p.productid,p.productname,p.price,c.catalogname
from product p left join catalog c on p.catalogid = c.catalogid
union
select p.productid,p.productname,p.price,c.catalogname
from product p  right join catalog c on c.catalogid = p.catalogid;

-- Lây thông tin sinh viên gồm mã, tên, điểm thi, tên môn học
select s.studentid,s.studentname,m.Mark,su.SubjectName
from student s join marks m on s.studentid = m.studentid join subjects su on m.subjectid=su.subjectid;

select c.catalogid,p.productid
from catalog c join product p on c.catalogname = p.productname;
-- In thông tin sinh viên gồm mã, tên, giới tính (Nam/Nữ)
select s.studentId,s.studentname,case (s.gender) when 1 then 'Nam' else 'Nữ' end	
from student s;
-- Lấy thông tin sinh viên có tuổi lớn hơn 22
select *
from student s
where s.age>=22;
-- Lấy thông tin sinh viên có tuổi khác 22
select * 
from student s
where s.age <> 22;
-- Lấy thông tin sinh viên có tuổi lớn hơn 22 và có giới tính là 1
select s.studentId,s.studentname,s.age,case s.gender when 1 then 'Nam' else 'Nữ' end as 'gender',s.address,s.studentstatus
from student s
where s.age>=22 and s.gender=1;
-- Lấy thông tin sinh viên có độ tuổi từ 22 đến 24
select *
from student s
where s.age between 22 and 24;
-- lấy thông tin sinh viên có tuổi là 21,23,24
select *
from student s
where s.age in (21,23,24);
-- Lấy thông tin sinh viên co tên bắt đầu là ký tự P
select *
from student s
where s.studentname like 'P%';
-- Lấy thông tin sinh viên có ký tự thứ 2 là g
select *
from Student s
where s.studentName like '_g%';
-- Lấy thông tin sinh viên có ký tự đầu tiên nằm trong khoảng a-m
select *
from student s
where s.studentname between 'a%' and 'm%';
-- Tính tuổi trung bình của các sinh viên theo giới tính
select s.gender,avg(s.age)
from student s
where s.gender = 1
group by s.gender;
-- Lấy nhóm sinh vien có độ tuổi trung bình lớn hơn 22
select s.gender,avg(s.age) as 'TB'
from student s
group by s.gender
having avg(s.age)>22;
-- Nhóm sinh viên theo cả giới tính và địa chỉ
select s.gender,s.address
from student s
group by s.gender,s.address;
select * from student;
insert into student(studentName,age,gender,address,studentstatus)
values('Nguyễn Thị Lan Anh',21,0,'Nghệ An',1);
-- Lấy thông tin sinh viên và sắp xếp theo tuổi giảm dần
select *
from student s
order by s.age DESC;
-- Lấy thông tin sinh viên sắp xếp theo tuổi tăng dần và mã giảm dần
select *
from student s
order by s.age,s.studentid DESC;
-- Lấy thông tin sinh viên sắp xếp theo tên tăng dần
select *
from student s
order by s.studentname;
-- Lấy thông tin 3 sinh viên đầu tiên
select *
from student s
limit 3;
-- Lấy thông tin 3 sinh viên từ vị trí 2
select *
from student s
limit 2,3



