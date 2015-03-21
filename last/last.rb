def last(*item, last_item)
  if last_item.respond_to?(:index)
    last_item[-1]
  else
    last_item
  end
end
