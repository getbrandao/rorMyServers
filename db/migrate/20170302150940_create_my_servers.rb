class CreateMyServers < ActiveRecord::Migration[5.0]
  def change
    create_table :my_servers do |t|
      t.string :name
      t.string :domain
      t.string :ip
      t.string :netmask
      t.string :network
      t.string :router
      t.string :ns1
      t.string :ns2
      t.string :so
      t.string :version
      t.string :arch
      t.string :function
      t.string :user
      t.string :password

      t.timestamps
    end
  end
end
