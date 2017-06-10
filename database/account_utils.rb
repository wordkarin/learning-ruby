
# assume that database table called account has two columns called "name" and "balance"

def get_balance(name)
  #given a string name, find the balance from the database table and return it
end


def transfer(name1, name2, amount)
  #if name1 has more than the amount, remove amount from name1's banace, and add it to name2's balance
end

def run_simulation(name1, name2)
  1000.times do
    get_balance(name1)
    get_balance(name2)

    transfer(name1, name2, 20)
  end
end
