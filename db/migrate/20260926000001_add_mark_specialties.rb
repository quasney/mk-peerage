class AddMarkSpecialties < ActiveRecord::Migration[7.0]
  def change
    mark_order = Peer.orders.index(:mark)

    [
      'Combat Archery',
      'Siege',
      'Target Archery',
      'Thrown Weapons'
    ].each do |specialty_name|
      Specialty.find_or_create_by(
        name: specialty_name,
        peerage_type: mark_order
      )
    end
  end
end
