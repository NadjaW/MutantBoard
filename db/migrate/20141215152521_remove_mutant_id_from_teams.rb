class RemoveMutantIdFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :mutant_id
  end
end
