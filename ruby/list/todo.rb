class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(chore)
    @list << chore
    @list
  end

  def delete_item(chore)
    @list.delete(chore)
    @list
  end

  def get_item(index)
    @list[index]
  end
end
