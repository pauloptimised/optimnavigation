require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase

  def test_build_collection
    assert_equal NavigationMenus.size, Menu.build_collection.size
  end

  def test_name_set_correctly
    assert_equal "Bill", Menu.new(name: "Bill").name
  end

  def test_humanized_name
    assert_equal "employee_salary".humanize, Menu.new(name: "employee_salary").humanized_name
  end

  def test_menu_items
    menu = Menu.new(name: "Bill")
    assert menu.menu_items.is_a?(Hash)
  end

end