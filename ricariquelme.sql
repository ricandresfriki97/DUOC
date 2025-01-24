create table linuxmint (
id_linuxmint number  primary key,
 nombredistro varchar2(30),
 basadadistro varchar2(30),
 versiondistro number );
create table arch (
id_arch number  primary key,
 nombredistro varchar2 (30),
 basadadistro varchar2 (30),
 versiondistro number);
create table debian (
id_debian number not null primary key,
nombredistro varchar2(30), 
basadadistro varchar2(30),
versiondistro number);
create table ubuntu (
id_ubuntu number not null primary key,
nombredistro varchar2(30),
basadadistro varchar2(30),
versiondistro number);
create table redhat (
id_redhat number not null primary key,
nombredistro varchar2(30),
basadadistro varchar2(30),
versiondistro number);
create table fedora (
id_fedora number not null primary key,
nombredistro varchar2(30),
basadadistro varchar2(30),
versiondistro number);
create table PC (
id_pc number not null,
cpu_modelo varchar2(30),
gpu_modelo varchar2(30),
AIO_WATERCOOLER_modelo varchar2(30),
fuentealimentacion_modelo varchar2(30),
gabinete_modelo varchar2 (30),
fan_modelo varchar2 (30),
cpu_core number,
gpu_vram number,
Wattfuentealimentacion number,
numero_fan number,
constraint fk_id_distro foreign key (id_distro) references distro(id)
);

insert into linuxmint (id_linuxmint, nombredistro, basadadistro, versiondistro) values(1, 'linuxmint','ubuntu',22);
insert into arch (id_arch , nombredistro, basadadistro, versiondistro) values(1, 'arch', 'arch', 2024);
insert into pc (cpu_modelo,gpu_modelo,aio_watercooler_modelo,fuentealimentacion_modelo,gabinete_modelo,fan_modelo,cpu_core,gpu_vram,wattfuentealimentacion,numero_fan) values('alderlike','RTX4060','ROGRYOIII240ARGB','ROGTHOR850','asusprimeap201black','arctic',20,8,850,3); 
insert into redhat (id_redhat, nombredistro, basadadistro, versiondistro) values(1, 'redhat', 'slackware', 2024);
insert into fedora (id_fedora, nombredistro, basadadistro, versiondistro) values (1, 'fedora' , 'fedora', 41);

SELECT
*
FROM linuxmint 
WHERE basadadistro = 'ubuntu';


SELECT
*
FROM PC
WHERE gabinete_modelo LIKE 'a%';