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

require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
