-- migrate:up
create table users(
    id bigint not null auto_increment primary key,
    username varchar(255),
    email varchar(255) not null unique,
    password varchar(255),
    role_id bigint,
    foreign key(role_id)
        references roles(id)
        on delete set null
);

-- migrate:down
drop table users;
