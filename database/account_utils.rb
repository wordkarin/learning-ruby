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
end

def run_simulation(name1, name2)
  puts get_total_balance(['karin', 'miles'])
  transfer(name1, name2, 20)
  puts get_total_balance(['karin', 'miles'])
  puts get_total_balance(['karin'])
  puts get_total_balance(['miles'])
end

t1 = Thread.new{run_simulation("karin", "miles")}
t1.join
