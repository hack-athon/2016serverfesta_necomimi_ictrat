class CreateEegs < ActiveRecord::Migration
  def change
    create_table :eegs do |t|
      t.integer :delta
      t.integer :theta
      t.integer :lowalpha
      t.integer :highalpha
      t.integer :lowbeta
      t.integer :highbeta
      t.integer :lowgamma
      t.integer :midgamma
      t.integer :attention
      t.integer :meditation

      t.timestamps null: false
    end
  end
end
