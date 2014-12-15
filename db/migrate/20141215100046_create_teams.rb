class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :task
      t.references :mutant, index: true

      t.timestamps
    end
  end
end
