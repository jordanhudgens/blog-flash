FactoryGirl.define do
  factory :post do
    title "My Great Post"
    description "My amazing description"
  end

  factory :second_post, class: Post do
    title "Second Post"
    description "Another description"
  end
end