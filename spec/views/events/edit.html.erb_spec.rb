require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      user: nil,
      action: "MyString",
      eventable_id: 1,
      eventable_type: "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[user_id]"

      assert_select "input[name=?]", "event[action]"

      assert_select "input[name=?]", "event[eventable_id]"

      assert_select "input[name=?]", "event[eventable_type]"
    end
  end
end
