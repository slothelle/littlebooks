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

  factory :character do
    name "Poopies"
    gender_id 1
  end

  factory :story do
    summary "Donec sed odio dui."
    content "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis, reiciendis, eligendi ad quasi distinctio ex quibusdam nostrum facere animi sit aut delectus magni error! Repudiandae, laborum excepturi eos ut hic! Nullam id dolor id nibh ultricies vehicula ut id elit. Nulla vitae elit libero, a pharetra augue. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    title "Taco Truck"
    character_id 1
    source_link "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    attribution "Parturient Ornare"
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
