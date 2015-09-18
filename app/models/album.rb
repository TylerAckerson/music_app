# == Schema Information
#
# Table name: albums
#
#  id      :integer          not null, primary key
#  name    :string           not null
#  band_id :integer          not null
#  setting :string           not null
#

class Album < ActiveRecord::Base
  SETTINGS = %w{live studio}

  validates :name, :band_id, :setting, presence: true
  validates :setting, inclusion: { in: SETTINGS }

  belongs_to :band,
    class_name: "Band",
    foreign_key: :band_id,
    primary_key: :id

  has_many :tracks,
    class_name: "Track",
    foreign_key: :album_id,
    primary_key: :id,
    dependent: :destroy

end
