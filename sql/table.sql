drop table if exists chapter;
create table chapter(
    id int primary key auto_increment,
    user_id int,
    article_id int,
    pid int,
    name varchar(100),
    content text,
    crt timestamp,
    upt timestamp
);
drop table if exists article;
create table article(
    id int primary key auto_increment,
    tile varchar(255),
    tags varchar(1000),
    crt timestamp,
    upt timestamp
);

drop table if exists link_article_tag;
create table link_article_tag(
    article_id int,
    tag_id int,
    crt timestamp,
    upt timestamp,
    primary key key_article_tag(article_id,tag_id)
);

drop table if exists tag;
create table tag(
    id int primary key auto_increment,
    name varchar(50) unique,
    count int,
    crt timestamp,
    upt timestamp
);

drop table if exists user;
create table user(
    id int primary key auto_increment,
    name varchar(50),
    password varchar(50),
    crt timestamp,
    upt timestamp
)