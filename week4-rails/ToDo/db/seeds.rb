Item.delete_all
List.delete_all

List.create(:name => 'Grocery', :category => 'Personal')
List.create(:name => 'Gadgets', :category => 'Personal')
List.create(:name => 'Homework', :category => 'Work')

Item.create(:name => 'carrots', :due => '8/1/2013', :list_id => '1')
Item.create(:name => 'milk', :due => '8/1/2013', :list_id => '1')
Item.create(:name => 'protein', :due => '8/1/2013', :list_id => '1')
Item.create(:name => 'pebble watch', :due => '8/1/2013', :list_id => '2')
Item.create(:name => 'macbook pro', :due => '8/1/2013', :list_id => '2')
Item.create(:name => 'create todo list', :due => '8/1/2013', :list_id => '3')
Item.create(:name => 'build project', :due => '8/1/2013', :list_id => '3')