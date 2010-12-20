# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :event do |f|
  f.name "MyString"
  f.start_at "2010-12-20 07:20:02"
  f.end_at "2010-12-20 07:20:02"
  f.all_day false
end
