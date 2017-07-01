class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.integer    :contact_pattern
      t.string     :family_name
      t.string     :first_name
      t.string     :family_name_kana
      t.string     :first_name_kana
      t.string     :email
      t.string     :phone_number
      t.text       :free_field
      t.timestamps
    end
  end
end
