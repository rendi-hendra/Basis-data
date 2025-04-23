create trigger afterupdate_buku
after update on buku for each row
begin
	insert into log_buku set kd_buku=new.kd_buku, action='after update';
end;

create trigger histupdate_buku
before update on buku for each row
begin
	insert into log_buku set kd_buku=old.kd_buku, action='update';
end;

create user 'testing'@'localhost' identified by 'Testing123'

grant select on . to 'testing'@'localhost'

UPDATE mysql.user SET select_priv='y',insert_priv='y'
WHERE user='testing'
