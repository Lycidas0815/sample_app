FactoryGirl.define do
  factory :user do
    name     "Nico Ecker"
    email    "Nico.Ecker@palysio.de"
    password "foobar"
    password_confirmation "foobar"
  end
end