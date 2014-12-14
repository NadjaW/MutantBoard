class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :name
      t.string :superpower
      t.text :cv

      t.timestamps
    end
  end
end
