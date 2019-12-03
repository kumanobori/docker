SET CHARSET UTF8;

drop table if exists m_prefecture cascade;
drop table if exists m_region cascade;

create table m_region(
id tinyint primary key,
name varchar(3) not null
);

create table m_prefecture(
id tinyint not null primary key,
region_id tinyint not null,
name varchar(4) not null,
foreign key (region_id) references m_region(id)
); 
