-- migrate:up
create table roles(
    id bigint not null auto_increment primary key,
    value varchar(255)
);

-- migrate:down
drop table roles;
