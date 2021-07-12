require "#{Rails.root}/lib/api_errors/bad_request"

class ItemValidator < ActiveModel::Validator
  def validate(record)
    raise ApiErrors::BadRequest.new("Missing 'name' field", 'item') unless record.name
    raise ApiErrors::BadRequest.new("Missing 'short_description' field", 'item') unless record.short_description
    raise ApiErrors::BadRequest.new("Missing 'count' field", 'item') unless record.count
  end
end

class Item < ApplicationRecord
  validates_with ItemValidator
end
