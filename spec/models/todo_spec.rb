require "rails_helper"

describe Todo, "#completed?" do
  it "returns false if completed_at is nil" do
    not_completed_todo = Todo.new completed_at: nil

    expect(not_completed_todo).not_to be_completed
  end

  it "returns true if completed_at is set" do
    completed_todo = Todo.new completed_at: Time.current

    expect(completed_todo).to be_completed
  end
end