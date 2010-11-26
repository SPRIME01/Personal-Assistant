require 'spec_helper'

describe "tasks/new.html.haml" do
  before(:each) do
    assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :list_id => 1,
      :group_id => 1,
      :user_id => 1,
      :category_id => 1,
      :repeatable => false
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_name", :name => "task[name]"
      assert_select "textarea#task_description", :name => "task[description]"
      assert_select "input#task_list_id", :name => "task[list_id]"
      assert_select "input#task_group_id", :name => "task[group_id]"
      assert_select "input#task_user_id", :name => "task[user_id]"
      assert_select "input#task_category_id", :name => "task[category_id]"
      assert_select "input#task_repeatable", :name => "task[repeatable]"
    end
  end
end
