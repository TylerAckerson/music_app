# == Schema Information
#
# Table name: tracks
#
#  id       :integer          not null, primary key
#  album_id :integer          not null
#  ttype    :string
#  lyrics   :text
#  name     :string           not null
#

class Track < ActiveRecord::Base
  TTYPES = %w{regular bonus}

  validates :name, :album_id, :ttype, presence: true

  validates :ttype, inclusion: { in: TTYPES }

  belongs_to :album,
    class_name: "Album",
    foreign_key: :album_id,
    primary_key: :id

  has_one :band,
    through: :album,
    source: :band

end
