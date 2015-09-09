# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150909003518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "activities", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "slug", limit: 100
  end

  create_table "activities_facilities", force: :cascade do |t|
    t.integer "facility_id"
    t.integer "activity_id"
  end

# Could not dump table "facilities" because of following StandardError
#   Unknown type 'geometry(Point,26986)' for column 'geom'

  create_table "facility_types", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "icon", limit: 100
  end

  create_table "park_images", force: :cascade do |t|
    t.string   "image",             limit: 100
    t.string   "caption"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "park_images_parks", force: :cascade do |t|
    t.integer "park_id"
    t.integer "park_image_id"
  end

# Could not dump table "parks" because of following StandardError
#   Unknown type 'geometry(MultiPolygon,26986)' for column 'geom'

  create_table "spatial_ref_sys", primary_key: "srid", force: :cascade do |t|
    t.string  "auth_name", limit: 256
    t.integer "auth_srid"
    t.string  "srtext",    limit: 2048
    t.string  "proj4text", limit: 2048
  end

end
