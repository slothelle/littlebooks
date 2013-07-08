Gender.delete_all
Story.delete_all
Character.delete_all
PeopleImage.delete_all

girl = Gender.create(sex: "female")
boy = Gender.create(sex: "male")

PeopleImage.create(gender: boy, url: "boy-1.png")
PeopleImage.create(gender: boy, url: "boy-2.png")
PeopleImage.create(gender: boy, url: "boy-3.png")
PeopleImage.create(gender: boy, url: "boy-4.png")
PeopleImage.create(gender: boy, url: "boy-5.png")
PeopleImage.create(gender: girl, url: "girl-1.png")
PeopleImage.create(gender: girl, url: "girl-2.png")
PeopleImage.create(gender: girl, url: "girl-3.png")
PeopleImage.create(gender: girl, url: "girl-4.png")
PeopleImage.create(gender: girl, url: "girl-5.png")

# Goldenhair and the Three Bears
three_bears = Story.new(:source_link=>"hi", :attribution => "hi", :title => "Goldenhair and the Three Bears", :summary => "A wayward child wanders into the forest, finds some porridge, and meets some bears.", :content => "_THE STORY OF_ THE THREE BEARS.
    There were once three bears, who lived in a wood,
    Their porridge was thick, and their chairs and beds good.
    The biggest bear, Bruin, was surly and rough;
    His wife, Mrs. Bruin, was called Mammy Muff.
    Their son, Tiny-cub, was like Dame Goose's lad;
    He was not very good, nor yet very bad.
    Now Bruin, the biggest-the surly old bear-
    Had a great granite bowl, and a cast-iron chair.
    Mammy Muffs bowl and chair you would no doubt prefer-
    They were both made of brick-bats, but both suited her.
    Young Tiny-cub's bowl, chair, and bed were the best,-
    This, big bears and baby bears freely confessed.
    Mr. B, with his wife and his son, went one day
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
    She tried Mammy Muff's, and she said, 'Mrs. B,
    I think your taste and my taste will never agree.'
    Then she tried Tiny-Cub's bowl, and said, 'This is nice;
    I will put in some salt, and of bread a thick slice.'
    The porridge she eat soon made her so great,
    The chair that she sat on broke down with her weight;
    The bottom fell out, and she cried in dismay,
    'This is Tiny-cub's chair, and oh, what will he say?
    His papa is, I know, the most savage of bears,-
    His mamma is a fury; but for her who cares?
    I'm sure I do not; and then, as for her son,
    That young bear, Tiny-cub-from him shall I run?
    No, not I, indeed; but I will not sit here-
    I shall next break the floor through-that's what I most fear;'
    So up-stairs she ran, and there three beds she found
    She looked under each one, and she looked all around;
    But no one she saw, so she got into bed-
    It was surly old Bruin's, and well stuffed with lead.
    Mammy Muffs next she tried; it was stuffed with round stones,
    So she got into Tiny-cub's and rested her bones.
    Goldenhair was asleep when the three bears came in.
    Said Big Bruin, 'I'm hungry-to eat, let's begin-
    WHO HAS BEEN TO MY PORRIDGE?' he roared with such might;
    His voice was like wind down the chimney at night.
    'WHO HAS BEEN TO MY PORRIDGE?' growled out Mrs. B;
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
    So she jumped out of bed-to the window she ran,
    Saying 'Three bears, good-bye! Catch me now if you can!'
    To the window the bears ran as fast as they could,
    But Goldenhair flew like the wind through the wood.
    She said the bears' breath had filled her with steam,
    But when she grew older she said 'twas a dream,
    And no doubt she was right to take such a view;
    Still, some part of the story is certainly true,
    For unto this day there is no one who dares,
    To say that there never existed THREE BEARS.")
goldy = Character.create(name: "Goldenhair", gender: girl, story: three_bears)
three_bears.update_attributes(character: goldy)
three_bears.save

# Little Red Riding Hood
little_red_riding = Story.create(title: "Little Red Riding Hood", content: "Once upon a time there lived in a village a country girl, who was the sweetest little creature that ever was seen; her mother naturally loved her with excessive fondness, and her grandmother doted on her still more. The good woman had made for her a pretty little red-coloured hood, which so much became the little girl, that every one called her Little Red Riding Hood.

One day her mother having made some cheesecakes, said to her, 'Go, my child, and see how your grandmother does, for I hear she is ill; carry her some of these cakes, and a little pot of butter.' Little Red Riding Hood straight set out with a basket filled with the cakes and the pot of butter, for her grandmother's house, which was in a village a little way off the town that her mother lived in. As she was crossing a wood, which lay in her road, she met a large wolf, which had a great mind to eat her up, but dared not, for fear of some wood-cutters, who were at work near them in the forest. Yet he spoke to her, and asked her whither she was going. The little girl, who did not know the danger of talking to a wolf, replied: 'I am going to see my grandmamma, and carry these cakes and a pot of butter.' 'Does she live far off?' said the wolf. 'Oh yes!' answered Little Red Riding Hood; 'beyond the mill you see yonder, at the first house in the village.' 'Well,' said the wolf, 'I will take this way, and you take that, and see which will be there the soonest.'

The wolf set out full speed, running as fast as he could, and taking the nearest way, while the little girl took the longest; and as she went along began to gather nuts, run after butterflies, and make nose-gays of such flowers as she found within her reach. The wolf got to the dwelling of the grandmother first, and knocked at the door. 'Who is there?' said some voice in the house. 'It is your grandchild, Little Red Riding Hood,' said the wolf, speaking like the little girl as well as he could. 'I have brought you some cheesecakes, and a little pot of butter, that mamma has sent you.' The good old woman, who was ill in bed, called out, 'Pull the bobbin, and the latch will go up.' The wolf pulled the bobbin, and the door went open. The wolf then jumped upon the poor old grandmother, and ate her up in a moment, for it was three days since he had tasted any food. The wolf then shut the door, and laid himself down in the bed, and waited for Little Red Riding Hood, who very soon after reached the house. Tap! tap! 'Who is there?' cried he. She was at first a little afraid at hearing the gruff voice of the wolf, but she thought that perhaps her grandmother had got a cold, so she answered: 'It is your grandchild, Little Red Riding Hood. Mamma has sent you some cheesecakes, and a little pot of butter.' The wolf cried out in a softer voice, 'Pull the bobbin, and the latch will go up.' Little Red Riding Hood pulled the bobbin, and the door went open. When she came into the room, the wolf hid himself under the bedclothes, and said to her, trying all he could to speak in a feeble voice: 'Put the basket on the stool, my dear, and take off your clothes, and come into bed.' Little Red Riding Hood, who always used to do as she was told, straight undressed herself, and stepped into bed; but she thought it strange to see how her grandmother looked in her nightclothes, so she said to her: 'Dear me, grandmamma, what great arms you have got!' 'They are so much the better to hug you, my child,' replied the wolf. 'But grandmamma,' said the little girl, 'what great ears you have got!' 'They are so much the better to hear you, my child,' replied the wolf. 'But then, grandmamma, what great eyes you have got!' said the little girl. 'They are so much the better to see you, my child,' replied the wolf. 'And grandmamma, what great teeth you have got!' said the little girl, who now began to be rather afraid. 'They are to eat you up,' said the wolf; and saying these words, the wicked creature fell upon Little Red Riding Hood, and ate her up in a moment.", summary: "What happens when you stray from the path while visiting grandmother?")
little_red = Character.create(name: "Little Red Riding Hood", gender: girl, story: little_red_riding)
little_red_riding.update_attributes(character: little_red)
