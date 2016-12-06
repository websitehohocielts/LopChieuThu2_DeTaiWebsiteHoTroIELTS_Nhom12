create database ieltsonline;
use ieltsonline;
create table role(
					roleID varchar(45) primary key,
                    roleName varchar(45)
                    );
create table user(
		username varchar(20) primary key,
                password varchar(45),
                hoten varchar(60),
                email varchar(45),
                roleID varchar(45),
                trangthai bit(1),
                thoigianhoatdonglancuoi datetime,
                sodienthoai bigint(20)
                    );
				
create table baihoc(
					id int primary key,
                    tieude varchar(100),
                    noidung longtext,
                    chuyenmuc varchar(45),
                    muc int(11),
                    ngaytao date
					);
create table loaibaitest(
						maloai varchar(45),
                        tenloai varchar(45)
                        );
                        
create table baitest (
		mabaitest int(11) primary key,
		maloaibaitest varchar(45) ,
		thoigianlambai int(11) ,
		filedapan varchar(300) ,
		filedebai varchar(300), 
		share bit(1) ,
		nguoiup varchar(20)
);

create table lambaitest(
						id int(11) primary key,
						mabaitest int(11) ,
						nguoilam varchar(20), 
						thoigianlam datetime ,
						thoigianhoanthanh int(11), 
						diem float
						);
create table tailieu(
					id int(11) primary key,
					tieude varchar(150) ,
					ngayup date ,
					link varchar(250), 
					nguoiup varchar(20), 
					loai int(11) ,
					share bit(1),
					mota longtext
					); 
create table tinnhan (
			id int(11) primary key,
			tieude varchar(250) ,
			usergui varchar(20) ,
			usernhan varchar(20) ,
			noidung varchar(700)	
);

create table traloi(
			id int(11) primary key,
			idtinnhan int(11) ,
			noidungtraloi varchar(700) ,
			thoigian datetime ,
			usergui varchar(20) ,
			usernhan varchar(20)
);

alter table ieltsonline.user add foreign key (roleID) references Role(roleID);
alter table traloi add foreign key(idtinnhan) references tinnhan(id);
alter table traloi add foreign key(usergui) references ieltsonline.user(username);

alter table traloi add foreign key(usernhan) references ieltsonline.user(username);

alter table tinnhan add foreign key(usernhan) references ieltsonline.user(username);




alter table lambaitest add foreign key(mabaitest) references baitest(mabaitest);
alter table lambaitest add foreign key(nguoilam) references user(username);

alter table baitest add foreign key(nguoiup) references user(username);
-- alter table baitest add foreign key(maloaibaitest) references loaibaitest(maloai);

insert into role values ('1','Admin');
insert into role values ('2','User');
insert into ieltsonline.user values ('admin','admin','','',null,1,null,null);

insert into ieltsonline.user values ('cong12','cong12','Hoàng Văn Công','cong12@gmail.com','2',1,null,0968745214);
insert into ieltsonline.user values ('cong19','cong19','Văn Hoàng Công','cong14@gmail.com','2',1,null,0968745214);
