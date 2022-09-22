require "date"

class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors.add attribute, (options[:message] || "is not an email")
    end
  end
end

class Signup < ApplicationRecord
  validates_presence_of :performer, :perform_date, :email, :round
  validates :email, email: true
  validates :round, inclusion: { in: 1..2, message: "Please only select 1 or 2" }
  belongs_to :performer
  validates :perform_date, comparison: { greater_than_or_equal_to: Date.current }
  validate :is_friday

  private

  def is_friday
    whichday = perform_date.wday
    if whichday != 5
      errors.add(:perform_date, "is not a Friday")
    end
  end
end
