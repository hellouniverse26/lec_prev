# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  password   :string
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many(
    :watch_lists,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "WatchList"
  )

  has_many(
    :watch_list_items,
    through: :watch_lists,
    source: :watch_list_items
  )

  has_many(
    :watched_companies,
    through: :watch_list_items,
    source: :company
  )
end
