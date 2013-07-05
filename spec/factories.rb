FactoryGirl.define do
  factory :user do
    name     "Joe"
    email    "joe@joe.com"
    password_digest "password1234"
    password "password1234"
  end

  factory :mytale do
    user_id 1
    summary "I am the best!"
    content "Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear. But for some reason, you and I react the exact same way to water. We swallow it too fast, we choke. We get some in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on the same curve, just on opposite ends."
    main_character "Fridge"
    main_character_ gender "male"
    title "The Fridge goes home"
  end

  factory :story do
    summary "Having fun with the bears"
    content "There were once three bears, who lived in a wood, Their porridge was thick, and their chairs and beds good. The biggest bear, Bruin, was surly and rough; His wife, Mrs. Bruin, was called Mammy Muff. Their son, Tiny-cub, was like Dame Goose's lad; He was not very good, nor yet very bad. Now Bruin, the biggest--the surly old bear-- Had a great granite bowl, and a cast-iron chair. Mammy Muffs bowl and chair you would no doubt prefer-- They were both made of brick-bats, but both suited his. Young Tiny-cub's bowl, chair, and bed were the best,-- This, big bears and baby bears freely confessed. Mr. B----, with his wife and his son, went one day To take a short stroll, and a visit to pay. He left the door open, 'For,' said he, 'no doubt If our friend should call in, he will find us all out.'' It was only two miles from dark Hazel-nut Wood, In which the great house of the three Bruins stood, That there lived a young lad, daring, funny, and fair, And from having bright curls, he was called Harry. He had roamed through the wood to see what he could see, And he saw going walking the Bruins all three. Said he to himself, 'To rob bears is no sin; The three bears have gone out, so I think I'll go in.' He entered their parlor, and he saw a great bowl, And in it a spoon like a hair-cutter's pole. 'That porridge,' said he 'may stay long enough there, It tastes like the food of the surly old bear,' He tried Mammy Muff's, and he said, 'Mrs. B----, I think your taste and my taste will never agree.' Then he tried Tiny-Cub's bowl, and said, 'This is nice; I will put in some salt, and of bread a thick slice.' The porridge he eat soon made his so great, The chair that he sat on broke down with his weight; The bottom fell out, and he cried in dismay, 'This is Tiny-cub's chair, and oh, what will he say? His papa is, I know, the most savage of bears,-- His mamma is a fury; but for his who cares? I'm sure I do not; and then, as for his son, That young bear, Tiny-cub--from him shall I run? No, not I, indeed; but I will not sit here-- I shall next break the floor through--that's what I most fear;' So up-stairs he ran, and there three beds he found He looked under each one, and he looked all around; But no one he saw, so he got into bed-- It was surly old Bruin's, and well stuffed with lead. Mammy Muffs next he tried; it was stuffed with round stones, So he got into Tiny-cub's and rested his bones. Harry was asleep when the three bears came in."
    main_character "Big Bear"
    main_character_gender "Female"
    title "Big Bear Goes home"

    factory :ethinicity do
      group "latino"
    end

    factory :people_images do
      url "http://www.mwtech.com/rw/photos/GoogleEarth/Google%20Earth%20Chicago.jpg"
    end
  end
end

