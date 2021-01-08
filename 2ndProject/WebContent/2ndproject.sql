select * from kakaoMEMBER;
select name, phone, email from kakaomember where id='//' and pw='//';

select name, phone, email from kakaomember where id='[[' and pw='[[';
delete from kakaomember where id is NULL;
 


drop table kakaomember cascade constraints;
drop table kakaodata cascade constraints;
drop table emotion cascade constraints;
drop table keyword cascade constraints;
drop table kakaoresult cascade constraints;
drop table saveinfo cascade constraints;


CREATE TABLE kakaomember(
id varchar2(30),
pw varchar2(30),
name varchar2(30),
phone varchar2(50),
email varchar2(50)
);

CREATE TABLE kakaodata(
term_hour varchar2(10),
term_minute varchar2(10),
term_seconds varchar2(10),
conv_count1 varchar2(10),
conv_count2 varchar2(10),
morn_count1 varchar2(10),
morn_count2 varchar2(10),
night_count1 varchar2(10),
night_count2 varchar2(10),
kikicount varchar2(10)
);

CREATE TABLE emotion(
worry varchar2(10),
angry varchar2(10),
sad varchar2(10),
happy varchar2(10)
);

CREATE TABLE keyword(
worry1 varchar2(50),
worry2 varchar2(50),
worry3 varchar2(50),
angry1 varchar2(50),
angry2 varchar2(50),
angry3 varchar2(50),
sad1 varchar2(50),
sad2 varchar2(50),
sad3 varchar2(50),
happy1 varchar2(50),
happy2 varchar2(50),
happy3 varchar2(50)
);

CREATE TABLE kakaoresult(
id varchar2(30),
partner varchar2(30),
relation varchar2(50),
temper number,
savedate date
);


CREATE TABLE saveinfo(
id varchar2(30),
partner varchar2(30),
temper number,
intimacy number,
relation varchar2(30)
);
