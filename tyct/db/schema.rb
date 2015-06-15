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

ActiveRecord::Schema.define(version: 20150604221739) do

  create_table "Administrator", primary_key: "adminID", force: true do |t|
    t.integer "userID", null: false
  end

  add_index "Administrator", ["userID"], name: "userID", using: :btree

  create_table "Comment", primary_key: "commentID", force: true do |t|
    t.integer   "userID",                   null: false
    t.integer   "communityID",              null: false
    t.string    "comment",     limit: 1500, null: false
    t.timestamp "date",                     null: false
  end

  add_index "Comment", ["communityID"], name: "communityID", using: :btree
  add_index "Comment", ["userID"], name: "userID", using: :btree

  create_table "Community", primary_key: "communityID", force: true do |t|
    t.integer "postalCode",                null: false
    t.string  "communityName", limit: 200, null: false
  end

  create_table "GrantRound", primary_key: "roundID", force: true do |t|
    t.integer   "communityID", null: false
    t.timestamp "endDate",     null: false
    t.timestamp "startDate",   null: false
  end

  add_index "GrantRound", ["communityID"], name: "communityID", using: :btree

  create_table "PhoneNumber", primary_key: "phoneID", force: true do |t|
    t.integer "userID",      null: false
    t.integer "phoneNumber", null: false
  end

  add_index "PhoneNumber", ["userID"], name: "userID", using: :btree

  create_table "Project", primary_key: "projectID", force: true do |t|
    t.integer "roundID",                        null: false
    t.string  "applicantName",     limit: 300,  null: false
    t.string  "applicantEmail",    limit: 300,  null: false
    t.string  "projectBlurb",      limit: 2000, null: false
    t.string  "fundsBlurb",        limit: 2000, null: false
    t.string  "organizationBlurb", limit: 2000, null: false
    t.string  "status",            limit: 30,   null: false
  end

  add_index "Project", ["roundID"], name: "roundID", using: :btree

  create_table "ProjectNotes", primary_key: "noteID", force: true do |t|
    t.integer "projectID",              null: false
    t.integer "userID",                 null: false
    t.string  "note",      limit: 2000, null: false
  end

  add_index "ProjectNotes", ["projectID"], name: "projectID", using: :btree
  add_index "ProjectNotes", ["userID"], name: "userID", using: :btree

  create_table "ProjectWebsite", primary_key: "websiteID", force: true do |t|
    t.integer "projectID",               null: false
    t.string  "siteAddress", limit: 300, null: false
  end

  add_index "ProjectWebsite", ["projectID"], name: "projectID", using: :btree

  create_table "Ratings", primary_key: "ratingID", force: true do |t|
    t.integer "projectID", null: false
    t.integer "userID",    null: false
    t.integer "rating",    null: false
  end

  add_index "Ratings", ["projectID"], name: "projectID", using: :btree
  add_index "Ratings", ["userID"], name: "userID", using: :btree

  create_table "User", primary_key: "userID", force: true do |t|
    t.integer "communityID"
    t.string  "firstName",       limit: 30,  null: false
    t.string  "lastName",        limit: 30,  null: false
    t.string  "password_digest", limit: 70,  null: false
    t.string  "email",           limit: 200, null: false
    t.integer "postalCode",                  null: false
    t.string  "suburb",          limit: 100, null: false
    t.string  "city",            limit: 100, null: false
    t.string  "streetAddress",   limit: 200, null: false
  end

  add_index "User", ["communityID"], name: "communityID", using: :btree
  add_index "User", ["userID"], name: "userID", using: :btree

  create_table "grant_rounds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
