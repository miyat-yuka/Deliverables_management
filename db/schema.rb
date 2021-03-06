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

ActiveRecord::Schema.define(version: 2020_02_11_135047) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "kananame"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_id"
    t.bigint "post_id"
    t.index ["company_id"], name: "index_dealers_on_company_id"
    t.index ["post_id"], name: "index_dealers_on_post_id"
  end

  create_table "hards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category"
    t.bigint "user_id"
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "post_id"
    t.index ["post_id"], name: "index_hards_on_post_id"
    t.index ["program_id"], name: "index_hards_on_program_id"
    t.index ["user_id"], name: "index_hards_on_user_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "facility_name", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "tell", null: false
    t.string "registration_date", null: false
    t.string "delivery_date", null: false
    t.string "delivery_note", null: false
    t.string "estimate_sheet", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kananame"
    t.index ["facility_name"], name: "index_posts_on_facility_name"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "thing"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "post_id"
    t.string "model_number"
    t.bigint "category_id"
    t.bigint "program_id"
    t.string "purchase_date"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["post_id"], name: "index_products_on_post_id"
    t.index ["program_id"], name: "index_products_on_program_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "programs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "post_id"
    t.string "software"
    t.string "user"
    t.index ["post_id"], name: "index_programs_on_post_id"
  end

  create_table "sns_credentials", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sns_credentials_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dealers", "companies"
  add_foreign_key "dealers", "posts"
  add_foreign_key "hards", "posts"
  add_foreign_key "hards", "programs"
  add_foreign_key "hards", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "posts"
  add_foreign_key "products", "programs"
  add_foreign_key "products", "users"
  add_foreign_key "programs", "posts"
  add_foreign_key "sns_credentials", "users"
end
