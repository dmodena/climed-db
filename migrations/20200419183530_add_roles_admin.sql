-- migrate:up
insert into roles (value) values ('admin');

-- migrate:down
delete from roles where value = 'admin';
