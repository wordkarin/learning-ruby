require './db'
require 'timeout'
# assume that database table called account has two columns called "name" and "balance"

def get_total_balance(names)
  #given string names, find the total balance from the database table and return it
    db = get_conn
    balances = names.map do |name|
        db.exec_params('SELECT balance FROM account where name = $1', [name])[0]['balance'].to_i
    end
    db.close
    return balances.sum
end


def transfer(name1, name2, amount)
  #if name1 has more than the amount, remove amount from name1's balance, and add it to name2's balance
  db = get_conn
  begin
      db.exec("BEGIN");
      balance1 = db.exec_params('SELECT balance FROM account WHERE name =$1 for update', [name1])[0]['balance'].to_i
      balance2 = db.exec_params('SELECT balance FROM account WHERE name =$1 for update', [name2])[0]['balance'].to_i

      if balance1 >= amount
        db.exec_params('UPDATE account SET balance = $1 WHERE name =$2', [balance1 - amount,name1])
        if rand(0..1) > 0
            db.exec_params('UPDATE account SET balance = $1 WHERE name =$2', [balance2 + amount, name2])
            db.exec("COMMIT")
        else
            db.exec("ROLLBACK")
        end
      end
    print "s"
  rescue
    db.exec("ROLLBACK")
    print "f"
  ensure
      db.close
  end
end

def run_simulation(name1, name2)
    10.times do 
      transfer(name1, name2, 2)
    end
    #transfer(name2, name1, 3)
    10.times do
      transfer(name1, name2, 2)
    end

end

puts get_total_balance(['karin', 'miles'])
num = 10
num.times do
    fork {run_simulation("karin", "miles")}
end
ts = (1..num).map {Thread.new{run_simulation("karin", "miles")}}
num.times {Process.wait}
ts.each {|t| t.join}
puts get_total_balance(['karin', 'miles'])
