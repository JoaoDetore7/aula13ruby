require 'sequel'

Sequel.migration do
  change do
    create_table :users do
      primary_key :id
      String :name, size: 100, null: false
      Integer :age, null: false
      Boolean :active, default: true
    end
  end
end