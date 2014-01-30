# -*- coding: utf-8 -*-
require 'active_model'
require 'rspec/rails/extensions'
require File.expand_path('lib/ascii_string_validator')

class Validatable
  include ActiveModel::Validations
  attr_accessor :name
  validates :name, ascii_string: true
end

describe AsciiStringValidator do

  subject { Validatable.new }

  describe "with a valid campaign name" do
    it "should be valid" do
      names = %w[white black green orange]
      names.each do |valid_name|
        subject.name = valid_name
        expect(subject).to be_valid
      end
    end
  end

  describe "with an invalid campaign" do
    it "should be invalid" do
      names = %w[þø→↓←ŧ¶€ł }{~łĸŋđðßæ}]
      names.each do |invalid_name|
        subject.name = invalid_name
        expect(subject).to be_invalid
      end
    end
  end
end