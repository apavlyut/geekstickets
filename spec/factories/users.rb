FactoryGirl.define do
  
  factory :user do
    sequence(:name) {|n| "Ivan#{n}" }
    sequence(:email) {|n| "email#{n}@example.com" }
    password 'q1w2e3r4'
    password_confirmation 'q1w2e3r4'
    # points 1000
    # trait :tramp do
    #   points 0
    # end
  end
  #
  # factory :task do
  #   title "Very important task!"
  #   description "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
  #   category
  #   price 0
  #   urgently true
  # end
  #
  # factory :answer do
  #   message "The right answer is binomial theorem."
  #   task
  #   user
  #   trait :with_images do
  #     after(:create) do |answer|
  #       create_list :image, 2, :for_create, imageable: answer
  #     end
  #   end
  # end
  #
  # factory :category do
  #   sequence(:title) {|n| "Math#{n}" }
  #   # avatar_id
  #   # parent_id
  #   sequence(:hashtag_en) {|n| "math#{n}_en" }
  #   sequence(:hashtag_ru) {|n| "math#{n}_ru" }
  #   # default
  # end
  #
  # factory :analysis do
  #   total_users 1
  #   new_users 1
  #   deleted_users 1
  #   max_points_by_user 1
  #   total_points 1
  #   avg_points_per_user 1.5
  #   new_points 1
  #   lost_points 1
  #   transfered_points 1
  #   withdrawn_points 1
  #   bonus_points 1
  #   tasks_count 1
  # end
  #
  # factory :admin_comment do
  #
  # end
  #
  # factory :university do
  #   name "MyString"
  #   city nil
  #   students_count 1
  # end
  #
  # factory :transaction do
  #   points 1
  #   user nil
  #   task nil
  #   transaction_type 1
  # end
  #
  # factory :task_category_vote do
  #   task nil
  #   category nil
  #   user nil
  # end
  #
  # factory :service do
  #   user nil
  #   provider "MyString"
  #   uid "MyString"
  # end
  #
  # factory :region do
  #   name "MyString"
  #   country nil
  # end
  #
  # factory :preference do
  #   key "MyString"
  #   value "MyText"
  #   trait :prices do
  #     key 'task/prices'
  #     value_type 'intArray'
  #     value '0, 150, 300, 500, 990'
  #   end
  # end
  #
  # factory :payment do
  #   amount 100
  #   user
  # end
  #
  # factory :news do
  #   title "MyString"
  #   short_story "MyText"
  #   full_story "MyText"
  #   banner ""
  #   image ""
  #   visible false
  # end
  #
  # factory :mailing_list do
  #   name "MyString"
  #   list_id 1
  # end
  #
  # factory :image do
  #   attachment "#{Rails.root}/spec/support/data/image1.jpg"
  #   trait :for_create do
  #     attachment File.open("#{Rails.root}/spec/support/data/image1.jpg")
  #   end
  # end
  #
  # factory :fb_friend do
  #   user nil
  #   friend_id 1
  # end
  #
  # factory :faculty do
  #   name "MyString"
  #   university nil
  # end
  #
  # factory :country do
  #   name "MyString"
  # end
  #
  # factory :comment do
  #   message "Yep, I'm interested too."
  #   task
  # end
  #
  # factory :city do
  #   name "MyString"
  #   region nil
  # end
  #
  # factory :category_probability do
  #   category nil
  #   probability 1.5
  #   price 1
  # end
end
