class CreateUser < ActiveRecord::Migration
  def up
      create_table :users do |t|
          t.string :name
      end
  end

  def down
      drop table :users
  end
end
