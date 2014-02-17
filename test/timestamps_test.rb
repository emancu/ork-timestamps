require_relative 'helper'

class Event
  include Ork::Document
  include Ork::Timestamps

  attribute :name
end

Protest.describe 'Ork::Timestamps' do
  context 'include Ork::Timestamps' do
    test 'raise an error if it is not a Ork::Document' do
      assert_raise Ork::NotOrkObject do
        class NotADocument
          include Ork::Timestamps
        end
      end
    end

    test 'add timestamps attributes' do
      assert Event.attributes.include? :created_at
      assert Event.attributes.include? :updated_at
    end

    context 'created_at' do
      setup do
        @event = Event.new name: 'Birthday'
      end

      test 'is not setted if save was not called' do
        deny @event.created_at
      end

      test 'is setted on creation' do
        @event.save

        assert @event.created_at
      end

      test 'is not updated on each save' do
        @event.save
        prev_created_at = @event.created_at
        @event.save

        assert @event.created_at == prev_created_at
      end

      test 'retrieve the object returns a Time object' do
        @event.save
        same_event = Event[@event.id]

        assert_equal @event.created_at, same_event.created_at
        assert_equal Time, same_event.created_at.class
      end
    end

    context 'updated_at' do
      setup do
        @event = Event.new name: 'Birthday'
      end

      test 'is not setted if save was not called' do
        deny @event.updated_at
      end

      test 'is setted on creation' do
        @event.save

        assert @event.updated_at
      end

      test 'is updated on each save' do
        prev_updated_at = @event.updated_at
        @event.save

        assert @event.updated_at != prev_updated_at
      end

      test 'retrieve the object returns a Time object' do
        @event.save
        same_event = Event[@event.id]

        assert_equal @event.updated_at, same_event.updated_at
        assert_equal Time, same_event.updated_at.class
      end
    end
  end
end
