def test_data do
  [
    %{title: "Longsword", price: 50, magic: false},
    %{title: "Healing potion", price: 60, magic: true},
    %{title: "Rope", price: 10, magic: false},
    %{title: "Dragon's Spear", price: 100, magic: true},
  ]
end

@enchanter_name "Edwin"

def enchant_for_sale([]), do: []
def enchant_for_save([item | incoming_items]) do
  new_item = %{
    title: "#{@enchanter_name}'s #{item.title}",
    price: item.price * 3,
    magic: true
  }
  [new_item | enchant_for_save(incoming_itens)]
end
