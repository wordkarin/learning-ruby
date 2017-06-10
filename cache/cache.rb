class Cache
  def initialize(max_size)
    @max_size = size
    @size = 0
    # something about my hash and something about my nodes in a doubly linked list.
  end

  def put(item)
    # if my item is not in the hash keys, I will:
      # add the item into my linked list at the front, it'll point at the item that was at the front, update the thing that was at the front to know that it's left pointer is now to the new item, and add the item to my hash with the object as it's new value; and if the size was already 10, remove the
    # if my item IS in the hash keys, I need to move it to the front, and update the node to the left to point at the node to the right; and update the node at the right to point to the left.
    #if my item is at the end of the linked list, move to the front, update the node to the left to be the end.
  end

end
