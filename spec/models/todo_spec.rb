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

describe Todo, "#complete!" do
  it "updates completed_at" do
    todo = Todo.create! completed_at: nil

    todo.complete!

    todo.reload

    expect(todo).to be_completed
  end
end

describe Todo, "#mark_incomplete!" do
  it "sets completed_at to nil" do
    todo = Todo.create! completed_at: Time.current

    todo.mark_incomplete!

    todo.reload

    expect(todo).not_to be_completed
  end
end
