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
  #if name1 has more than the amount, remove amount from name1's banace, and add it to name2's balance
end

def run_simulation(name1, name2)
  puts get_total_balance(['karin'])
  puts get_total_balance(['karin', 'miles'])

  transfer(name1, name2, 20)
end

t1 = Thread.new{run_simulation("karin", "miles")}
t1.join
