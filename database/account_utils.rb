require './db'
# assume that database table called account has two columns called "name" and "balance"

def get_total_balance(names)
  #given string names, find the total balance from the database table and return it
    db = get_conn
    balances = names.map do |name|
        db.exec_params('SELECT balance FROM account where name = $1', [name])[0]['balance'].to_i
    end
    return balances.sum
end


def transfer(name1, name2, amount)
  #if name1 has more than the amount, remove amount from name1's balance, and add it to name2's balance
  db = get_conn
  balance1 = db.exec_params('SELECT balance FROM account WHERE name =$1', [name1])[0]['balance'].to_i
  balance2 = db.exec_params('SELECT balance FROM account WHERE name =$1', [name2])[0]['balance'].to_i

  if balance1 >= amount
    db.exec_params('UPDATE account SET balance = $1 WHERE name =$2', [balance1 - amount,name1])
    db.exec_params('UPDATE account SET balance = $1 WHERE name =$2', [balance2 + amount, name2])
  end
  db.close
end

def run_simulation(name1, name2)
    100.times do 
      transfer(name1, name2, 2)
      transfer(name2, name1, 3)
    end
end

puts get_total_balance(['karin', 'miles'])
threads = (1..10).map {Thread.new{run_simulation("karin", "miles")}}
threads.each {|t| t.join}
puts get_total_balance(['karin', 'miles'])
