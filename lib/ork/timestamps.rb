module Ork
  module Timestamps
    VERSION = '0.0.2'

    def self.included(klass)
      raise Ork::NotOrkObject unless klass.include? Ork::Document

      klass.class_eval do |base|
        attribute :created_at, accessors: :reader
        attribute :updated_at, accessors: :reader

        def created_at=(a)
          @attributes[:created_at] = Time.parse a.to_s
        end

        def updated_at=(a)
          @attributes[:updated_at] = Time.parse a.to_s
        end

        def save_with_timestamps
          self.created_at = Time.now if self.new?
          self.updated_at = Time.now

          save_without_timestamps
        end

        alias :save_without_timestamps :save
        alias :save :save_with_timestamps
      end
    end
  end
end

