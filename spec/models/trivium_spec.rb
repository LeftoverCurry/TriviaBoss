# == Schema Information
#
# Table name: trivia
#
#  id         :bigint           not null, primary key
#  correct    :string
#  incorrect  :string           is an Array
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Trivium, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
