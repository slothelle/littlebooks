Gender.delete_all
Story.delete_all

Gender.create(sex: "female")
Gender.create(sex: "male")

Story.create(main_character_gender: "male", main_character: "Jack", title: "Jack and the Beanstalk", summary: "A crazy kid gets some magic beans and battles an ogre.", content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, repellendus, nobis esse quas quidem modi ullam vitae rerum odit recusandae eaque iste deleniti earum nulla explicabo eveniet id quos quaerat.')

Story.create(main_character_gender: "female", main_character: "Little Red Riding Hood", title: "Little Red Riding Hood", summary: "A child doesn't listen and wanders off the path.", content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, repellendus, nobis esse quas quidem modi ullam vitae rerum odit recusandae eaque iste deleniti earum nulla explicabo eveniet id quos quaerat.')

Story.create(main_character_gender: "male", main_character: "Bob", title: "bob Goes to the Store", summary: "An enterprising mastermind starts a grocery store chain.", content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error, repellendus, nobis esse quas quidem modi ullam vitae rerum odit recusandae eaque iste deleniti earum nulla explicabo eveniet id quos quaerat.')

Story.create(:main_character_gender => "female", :title => "Three Bears", :main_character => "Goldenhair", :summary => "A wayward child wanders into the forest and meets some bears.", :content => "_THE STORY OF_ THE THREE BEARS.
    There were once three bears, who lived in a wood,
    Their porridge was thick, and their chairs and beds good.
    The biggest bear, Bruin, was surly and rough;
    His wife, Mrs. Bruin, was called Mammy Muff.
    Their son, Tiny-cub, was like Dame Goose's lad;
    He was not very good, nor yet very bad.
    Now Bruin, the biggest--the surly old bear--
    Had a great granite bowl, and a cast-iron chair.
    Mammy Muffs bowl and chair you would no doubt prefer--
    They were both made of brick-bats, but both suited her.
    Young Tiny-cub's bowl, chair, and bed were the best,--
    This, big bears and baby bears freely confessed.
    Mr. B----, with his wife and his son, went one day
    To take a short stroll, and a visit to pay.
    He left the door open, 'For,' said he, 'no doubt
    If our friend should call in, he will find us all out.''
    It was only two miles from dark Hazel-nut Wood,
    In which the great house of the three Bruins stood,
    That there lived a young miss, daring, funny, and fair,
    And from having bright curls, she was called Goldenhair.
    She had roamed through the wood to see what she could see,
    And she saw going walking the Bruins all three.
    Said she to herself, 'To rob bears is no sin;
    The three bears have gone out, so I think I'll go in.'
    She entered their parlor, and she saw a great bowl,
    And in it a spoon like a hair-cutter's pole.
    'That porridge,' said she 'may stay long enough there,
    It tastes like the food of the surly old bear,'
    She tried Mammy Muff's, and she said, 'Mrs. B----,
    I think your taste and my taste will never agree.'
    Then she tried Tiny-Cub's bowl, and said, 'This is nice;
    I will put in some salt, and of bread a thick slice.'
    The porridge she eat soon made her so great,
    The chair that she sat on broke down with her weight;
    The bottom fell out, and she cried in dismay,
    'This is Tiny-cub's chair, and oh, what will he say?
    His papa is, I know, the most savage of bears,--
    His mamma is a fury; but for her who cares?
    I'm sure I do not; and then, as for her son,
    That young bear, Tiny-cub--from him shall I run?
    No, not I, indeed; but I will not sit here--
    I shall next break the floor through--that's what I most fear;'
    So up-stairs she ran, and there three beds she found
    She looked under each one, and she looked all around;
    But no one she saw, so she got into bed--
    It was surly old Bruin's, and well stuffed with lead.
    Mammy Muffs next she tried; it was stuffed with round stones,
    So she got into Tiny-cub's and rested her bones.
    Goldenhair was asleep when the three bears came in.
    Said Big Bruin, 'I'm hungry--to eat, let's begin--
    WHO HAS BEEN TO MY PORRIDGE?' he roared with such might;
    His voice was like wind down the chimney at night.
    'WHO HAS BEEN TO MY PORRIDGE?' growled out Mrs. B----;
    Her voice was like cats fighting up in a tree.
    'WHO HAS BEEN TO MY PORRIDGE AND EATEN IT ALL?'
    Young Tiny-cub said, in a voice very small,
    'WHO HAS BEEN SITTING IN MY GREAT ARM CHAIR?'
    In voice like a thunder-storm, roared the big bear.
    'WHO HAS BEEN SITTING IN MY GOOD ARM CHAIR?'
    Growled out Mammy Muff, like a sow in despair.
    'WHO HAS SAT IN MY NICE CHAIR, AND BROKEN IT DOWN?'
    Young Tiny-cub said, and so fierce was his frown,
    That his mother with pride to his father said, 'There!
    See our pet Tiny-cub can look just like a bear,'
    So roaring, and growling, and frowning, the bears,
    One after the other, came running up-stairs.
    'WHO HAS BEEN UPON MY BED?'' old Bruin roared out,
    In a voice just like rain down a large water-spout.
    'WHO HAS BEEN UPON MY BED?' growled out Mammy Muff,
    In a voice like her husband's, but not quite so rough.
    'WHO IS LYING ON MY BED?' said young Tiny-Cub,
    In a voice like hot water poured into a tub.
    And Tiny-cub's breath was so hot as he spoke,
    That Goldenhair dreamt of hot water, and woke.
    She opened her eyes, and she saw the three bears,
    And said, 'Let me go, please, I'll soon run down stairs.'
    But big Bruin was angry, and shouted out, 'No!
    You had no right to come hither, and now you shan't go.
    What we mean to do with you, ere long you shall find;
    You can lie there and cry till I make up my mind.'
    To Mammy and Tiny then did big Bruin roar,
    'Go and block up the chimney and nail up the door;
    This Goldenhair now has got into a scrape,
    And if I can help it, she shall not escape.''
    But Goldenhair saw that a window was there,
    (It was always kept open to let in fresh air),
    So she jumped out of bed--to the window she ran,
    Saying 'Three bears, good-bye! Catch me now if you can!'
    To the window the bears ran as fast as they could,
    But Goldenhair flew like the wind through the wood.
    She said the bears' breath had filled her with steam,
    But when she grew older she said 'twas a dream,
    And no doubt she was right to take such a view;
    Still, some part of the story is certainly true,
    For unto this day there is no one who dares,
    To say that there never existed THREE BEARS.")
