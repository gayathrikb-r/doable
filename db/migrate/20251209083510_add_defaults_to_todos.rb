class AddDefaultsToTodos < ActiveRecord::Migration[8.1]
  def change
    change_column_default :todos, :completed, false
    change_column_null :todos  ,:completed,false,false

    change_column_default :todos, :priority, 1
    change_column_null :todos, :priority,false,1
  end
end
