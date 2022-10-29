# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_29_204145) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "projects", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date "start_date"
    t.date "end_date"
    t.string "remote_id"
    t.string "more_info"
    t.string "project_handle"
    t.integer "team_id"
    t.index ["team_id"], name: "index_projects_on_team_id"
  end

  create_table "reports", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "screenshots", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_updates", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.integer "week"
    t.integer "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "team_id"
    t.string "email"
    t.index ["team_id"], name: "index_team_updates_on_team_id"
  end

  create_table "teams", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "parent_team_id"
    t.integer "team_updates_count", default: 0
    t.index ["name"], name: "index_teams_on_name", unique: true
    t.index ["parent_team_id"], name: "index_teams_on_parent_team_id"
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "email"
  end

  create_table "work_items", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item_key"
    t.string "project"
    t.text "summary"
    t.string "status"
    t.integer "statusCategory"
    t.integer "week"
    t.integer "year"
    t.string "reporter"
    t.string "assignee"
    t.integer "num_people"
    t.string "people"
    t.integer "workItemType", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "fix_version"
    t.datetime "updated"
    t.datetime "created"
    t.string "objective"
    t.boolean "customer_facing", default: true
    t.integer "team_id"
    t.string "product"
    t.index ["item_key"], name: "index_work_items_on_item_key"
    t.index ["team_id"], name: "index_work_items_on_team_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
