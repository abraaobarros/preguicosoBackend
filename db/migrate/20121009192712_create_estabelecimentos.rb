class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :key
      t.string :logo_url

      t.timestamps
    end
  end
end
