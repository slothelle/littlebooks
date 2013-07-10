FactoryGirl.define do
  factory :user do
    name     "Joe"
    email    "joe@joe.com"
    password "password1234"
  end

  factory :user_two, parent: :user do
    name     "Joe"
    email    "joe1@joe.com"
    password "password1234"
  end

  factory :user_three, parent: :user do
    name     "Joe"
    email    "joe2@joe.com"
    password "password1234"
  end

  factory :user_four, parent: :user do
    name     "Joe"
    email    "joe3@joe.com"
    password "password1234"
  end

  factory :invalid_user, parent: :user do
    name     "Joe"
    password "password1234"
  end

  factory :mytales_character do
    name          "Eggbert"
    gender_id     1
    mytale_id     1
    character_id  1
  end

  factory :character do
    name "Colinpants"
    gender_id 1
    story_id 1
  end

  factory :story do
    title "Goldenhair and the Three Bears"
    summary "A wayward child wanders into the forest, finds some porridge, and meets some bears."
    content "There were once three bears, who lived in a wood, Their porridge was thick, and their chairs and beds good. The biggest bear, Bruin, was surly and rough; His wife, Mrs. Bruin, was called Mammy Muff. Their son, Tiny-cub, was like Dame Goose's lad; He was not very good, nor yet very bad. Now Bruin, the biggest-the surly old bear- Had a great granite bowl, and a cast-iron chair. Mammy Muffs bowl and chair you would no doubt prefer- They were both made of brick-bats, but both suited his. Young Tiny-cub's bowl, chair, and bed were the best,- This, big bears and baby bears freely confessed. Mr. B, with his wife and his son, went one day To take a short stroll, and a visit to pay. He left the door open, 'For,' said he, 'no doubt If our friend should call in, he will find us all out.'' It was only two miles from dark Hazel-nut Wood, In which the great house of the three Bruins stood, That there lived a young lad, daring, funny, and fair, And from having bright curls, he was called Colinpants. He had roamed through the wood to see what he could see, And he saw going walking the Bruins all three."
    character
    source_link "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    attribution "Parturient Ornare"
  end

  factory :mytale do
    id 1
    title "Colinpants and the Three Bears"
    summary "A wayward child wanders into the forest, finds some porridge, and meets some bears."
    content "There were once three bears, who lived in a wood, Their porridge was thick, and their chairs and beds good. The biggest bear, Bruin, was surly and rough; His wife, Mrs. Bruin, was called Mammy Muff. Their son, Tiny-cub, was like Dame Goose's lad; He was not very good, nor yet very bad. Now Bruin, the biggest-the surly old bear- Had a great granite bowl, and a cast-iron chair. Mammy Muffs bowl and chair you would no doubt prefer- They were both made of brick-bats, but both suited his. Young Tiny-cub's bowl, chair, and bed were the best,- This, big bears and baby bears freely confessed. Mr. B, with his wife and his son, went one day To take a short stroll, and a visit to pay. He left the door open, 'For,' said he, 'no doubt If our friend should call in, he will find us all out.'' It was only two miles from dark Hazel-nut Wood, In which the great house of the three Bruins stood, That there lived a young lad, daring, funny, and fair, And from having bright curls, he was called Colinpants. He had roamed through the wood to see what he could see, And he saw going walking the Bruins all three."
    story_id 1
    mytales_character
  end

  factory :girl, parent: :gender do
    sex "female"
  end

  factory :gender do
    sex "male"
  end

  factory :people_image do
    url "http://www.mwtech.com/rw/photos/GoogleEarth/Google%20Earth%20Chicago.jpg"
    gender
  end

  factory :mytale_image do
    people_image_id 1
    mytale_id 1
  end
end
