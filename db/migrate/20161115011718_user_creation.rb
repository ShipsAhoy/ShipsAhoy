class UserCreation < ActiveRecord::Migration[5.0]

    def up
        create_table :users do |t|
            t.string :name
        end
    end

    def down
        drop table :users
    end
end
