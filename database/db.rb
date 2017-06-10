require 'pg'

def get_conn():
    return PG.connect( host: 'localhost', dbname: 'bank' )

get_conn().exec( "create table if not exists account (name varchar(64) primary key, balance int not null default 0)" )
get_conn().exec( "insert into account values ('miles', 0), ('karin', 1000) on conflict(name) do update set balance = excluded.balance")

