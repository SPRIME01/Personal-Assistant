# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :task do |f|
  f.name "MyString"
  f.description "MyText"
  f.due_by "2010-11-26 11:35:19"
  f.list_id 1
  f.group_id 1
  f.user_id 1
  f.category_id 1
  f.repeatable false
end
