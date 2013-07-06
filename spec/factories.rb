FactoryGirl.define do
  factory :user do
    name     "Joe"
    email    "joe@joe.com"
    password "password1234"
  end

  factory :mytales_character do
    name          "Eggbert"
    gender_id     1
    mytale_id     1
    character_id  1
  end

  factory :mytale do
    user_id 1
    mytales_character_id 1
    summary "I am the best!"
    content "Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends."
    title "The Fridge goes home"
  end

  factory :ethinicity do
    group "latino"
  end

  factory :people_images do
    url "http://www.mwtech.com/rw/photos/GoogleEarth/Google%20Earth%20Chicago.jpg"
  end
end
