# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "my_servers", force: :cascade do |t|
#   t.string   "name"
#   t.string   "domain"
#   t.string   "ip"
#   t.string   "netmask"
#   t.string   "network"
#   t.string   "router"
#   t.string   "ns1"
#   t.string   "ns2"
#   t.string   "so"
#   t.string   "version"
#   t.string   "arch"
#   t.string   "function"
#   t.string   "user"
#   t.string   "password"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
10.times do |s|
  MyServer.create!(
    name: "maceio",
    domain: "saude.al.gov.br",
    ip: "172.16.0.#{s}",
    netmask: "255.255.255.0",
    network: "172.16.0.0",
    router: "172.16.0.254",
    ns1: "172.16.0.253",
    ns2: "172.16.0.252",
    so: "CentOS",
    version: "7",
    arch: "x86_64",
    function: "Web Server",
    user: "root",
    password: "@dev123"
  )
end
