class AddCoordinatorToParticipants < ActiveRecord::Migration
  def change
    add_reference :participants, :coordinator, index: true
  end
end
