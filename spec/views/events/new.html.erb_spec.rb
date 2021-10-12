require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      user: nil,
      action: "MyString",
      eventable_id: 1,
      eventable_type: "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input[name=?]", "event[user_id]"

      assert_select "input[name=?]", "event[action]"

      assert_select "input[name=?]", "event[eventable_id]"

      assert_select "input[name=?]", "event[eventable_type]"
    end
  end
end
