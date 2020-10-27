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
class Trivium < ApplicationRecord
end
