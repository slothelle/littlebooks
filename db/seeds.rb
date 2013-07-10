Gender.delete_all
Story.delete_all
Character.delete_all
PeopleImage.delete_all
BackgroundImage.delete_all
Mytale.delete_all
MytalesCharacter.delete_all
MytaleImage.delete_all

girl = Gender.create!(sex: "female")
boy = Gender.create!(sex: "male")

PeopleImage.create!(gender: boy, url: "boy-1.png")
PeopleImage.create!(gender: boy, url: "boy-2.png")
PeopleImage.create!(gender: boy, url: "boy-3.png")
PeopleImage.create!(gender: boy, url: "boy-4.png")
PeopleImage.create!(gender: boy, url: "boy-5.png")
PeopleImage.create!(gender: girl, url: "girl-1.png")
PeopleImage.create!(gender: girl, url: "girl-2.png")
PeopleImage.create!(gender: girl, url: "girl-3.png")
PeopleImage.create!(gender: girl, url: "girl-4.png")
PeopleImage.create!(gender: girl, url: "girl-5.png")

# Goldenhair and the Three Bears
three_bears = Story.new(:source_link=>"hi", :attribution => "hi", :title => "Goldilocks and the Three Bears", :summary => "A wayward child wanders into the forest, finds some porridge, and meets some bears.", :content => "The Story of the Three Bears...
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
    Mr. Bruin, with his wife and his son, went one day
    To take a short stroll, and a visit to pay.
    He left the door open, 'For,' said he, 'no doubt
    If our friend should call in, he will find us all out.''
    It was only two miles from dark Hazel-nut Wood,
    In which the great house of the three Bruins stood,
    That there lived a young miss, daring, funny, and fair,
    And from having bright curls, she was called Goldilocks.
    She had roamed through the wood to see what she could see,
    And she saw going walking the Bruins all three.
    Said she to herself, 'To rob bears is no sin;
    The three bears have gone out, so I think I'll go in.'
    She entered their parlor, and she saw a great bowl,
    And in it a spoon like a hair-cutter's pole.
    'That porridge,' said she 'may stay long enough there,
    It tastes like the food of the surly old bear,'
    She tried Mammy Muff's, and she said, 'Mrs. Bruin,
    I think your taste and my taste will never agree.'
    Then she tried Tiny-Cub's bowl, and said, 'This is nice;
    I will put in some salt, and of bread a thick slice.'
    The porridge she ate soon made her so great,
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
    That Goldilocks dreamt of hot water, and woke.
    She opened her eyes, and she saw the three bears,
    And said, 'Let me go, please, I'll soon run down stairs.'
    But big Bruin was angry, and shouted out, 'No!
    You had no right to come hither, and now you shan't go.
    What we mean to do with you, ere long you shall find;
    You can lie there and cry till I make up my mind.'
    To Mammy and Tiny then did big Bruin roar,
    'Go and block up the chimney and nail up the door;
    This Goldilocks now has got into a scrape,
    And if I can help it, she shall not escape.''
    But Goldilocks saw that a window was there,
    (It was always kept open to let in fresh air),
    So she jumped out of bed-to the window she ran,
    Saying 'Three bears, good-bye! Catch me now if you can!'
    To the window the bears ran as fast as they could,
    But Goldilocks flew like the wind through the wood.
    She said the bears' breath had filled her with steam,
    But when she grew older she said 'twas a dream,
    And no doubt she was right to take such a view;
    Still, some part of the story is certainly true,
    For unto this day there is no one who dares,
    To say that there never existed THREE BEARS.")
goldy = Character.create(name: "Goldilocks", gender: girl, story: three_bears)
three_bears.update_attributes(character: goldy)
#p three_bears
three_bears.save!

#Little Red Riding Hood
little_red = Character.create!(name: "Little Red Riding Hood", gender: girl)
little_red_riding = Story.new(title: "Little Red Riding Hood", content: "Once upon a time there lived in a village a country girl, who was the sweetest little creature that ever was seen; her mother naturally loved her with excessive fondness, and her grandmother doted on her still more. The good woman had made for her a pretty little red-coloured hood, which so much became the little girl, that every one called her Little Red Riding Hood.

One day her mother having made some cheesecakes, said to her, 'Go, my child, for I hear grandmother is ill. Take some of these cakes, and a little pot of butter.' Little Red Riding Hood straight set out with a basket filled with the cakes and the pot of butter, for her grandmother's house, which was in a village a little way off the town that her mother lived in. As she was crossing a wood, which lay in her road, she met a large wolf, which had a great mind to eat her up, but dared not, for fear of some wood-cutters, who were at work near them in the forest. Yet the wolf spoke to her, and asked her whither she was going. The little girl, who did not know the danger of talking to a wolf, replied: 'I am going to see my grandmamma, and carry these cakes and a pot of butter.' 'Does grandmamma live far off?' said the wolf. 'Oh yes!' answered Little Red Riding Hood; 'beyond the mill you see yonder, at the first house in the village.' 'Well,' said the wolf, 'I will take this way, and you take that, and see which will be there the soonest.'

The wolf set out full speed, running as fast as could be, and taking the nearest way, while the little girl took the longest; and as she went along began to gather nuts, run after butterflies, and make nose-gays of such flowers as she found within her reach. The wolf got to the dwelling of the grandmother first, and knocked at the door. 'Who is there?' said some voice in the house. 'It is your grandchild, Little Red Riding Hood,' said the wolf, speaking like the little girl as well as he could. 'I have brought you some cheesecakes, and a little pot of butter, that mamma has sent you.' The good old woman, who was ill in bed, called out, 'Pull the bobbin, and the latch will go up.' The wolf pulled the bobbin, and the door went open. The wolf then jumped upon the poor old grandmother, and ate poor grandmother up in a moment, for it was three days since the wolf had tasted any food. The wolf then shut the door, and laid down in the bed, and waited for Little Red Riding Hood, who very soon after reached the house. Tap! tap! 'Who is there?' cried the wolf. She was at first a little afraid at hearing the gruff voice of the wolf, but she thought that perhaps her grandmother had got a cold, so she answered: 'It is your grandchild, Little Red Riding Hood. Mamma has sent you some cheesecakes, and a little pot of butter.' The wolf cried out in a softer voice, 'Pull the bobbin, and the latch will go up.' Little Red Riding Hood pulled the bobbin, and the door went open. When she came into the room, the wolf hid under the bedclothes, and said to her, trying to speak in a feeble voice: 'Put the basket on the stool, my dear, and take off your clothes, and come into bed.' Little Red Riding Hood, who always used to do as she was told, straight undressed herself, and stepped into bed; but she thought it strange to see how her grandmother looked in her nightclothes, so she said to her: 'Dear me, grandmamma, what great arms you have got!' 'They are so much the better to hug you, my child,' replied the wolf. 'But grandmamma,' said the little girl, 'what great ears you have got!' 'They are so much the better to hear you, my child,' replied the wolf. 'But then, grandmamma, what great eyes you have got!' said the little girl. 'They are so much the better to see you, my child,' replied the wolf. 'And grandmamma, what great teeth you have got!' said the little girl, who now began to be rather afraid. 'They are to eat you up,' said the wolf; and saying these words, the wicked creature fell upon Little Red Riding Hood. Realizing what was happening, Little Red Riding Hood hopped out of bed and dressed herself. The she ran home to the safety of her mother.", summary: "What happens when you stray from the path while visiting grandmother?", source_link: "Magic", attribution: "Banana")

little_red_riding.update_attributes(character: little_red)
little_red_riding.save!

little_red_riding.background_image = (BackgroundImage.create(url: "house.jpg", story: little_red_riding))
three_bears.background_image = (BackgroundImage.create(url: "bears.jpg", story: three_bears))

little_red_riding.save
three_bears.save
#Rapunzel
rapun = little_red = Character.create!(name: "Rapunzel", gender: girl)
rapunzel = Story.create("There were once a man and a woman who had long in vain wished for a child. At length the woman hoped that God was about to grant her desire. These people had a little window at the back of their house from which a splendid garden could be seen, which was full of the most beautiful flowers and herbs. It was, however, surrounded by a high wall, and no one dared to go into it because it belonged to an enchantress, who had great power and was dreaded by all the world. One day the woman was standing by this window and looking down into the garden, when she saw a bed which was planted with the most beautiful rampion (rapunzel), and it looked so fresh and green that she longed for it, she quite pined away, and began to look pale and miserable. Then her husband was alarmed, and asked: 'What ails you, dear wife?' 'Ah,' she replied, 'if I can't eat some of the rampion, which is in the garden behind our house, I shall die.' The man, who loved her, thought: 'Sooner than let your wife die, bring her some of the rampion yourself, let it cost what it will.' At twilight, he clambered down over the wall into the garden of the enchantress, hastily clutched a handful of rampion, and took it to his wife. She at once made herself a salad of it, and ate it greedily. It tasted so good to her—so very good, that the next day she longed for it three times as much as before. If he was to have any rest, her husband must once more descend into the garden. In the gloom of evening therefore, he let himself down again; but when he had clambered down the wall he was terribly afraid, for he saw the enchantress standing before him. 'How can you dare,' said she with angry look, 'descend into my garden and steal my rampion like a thief? You shall suffer for it!' 'Ah,' answered he, 'let mercy take the place of justice, I only made up my mind to do it out of necessity. My wife saw your rampion from the window, and felt such a longing for it that she would have died if she had not got some to eat.' Then the enchantress allowed her anger to be softened, and said to him: 'If the case be as you say, I will allow you to take away with you as much rampion as you will, only I make one condition, you must give me the child which your wife will bring into the world; it shall be well treated, and I will care for it like a mother.' The man in his terror consented to everything, and when the woman was brought to bed, the enchantress appeared at once, gave the child the name of Rapunzel, and took it away with her.
Rapunzel grew into the most beautiful child under the sun. When she was twelve years old, the enchantress shut her into a tower, which lay in a forest, and had neither stairs nor door, but quite at the top was a little window. When the enchantress wanted to go in, she placed herself beneath it and cried:
 'Rapunzel, Rapunzel,
  Let down your hair to me.'
Rapunzel had magnificent long hair, fine as spun gold, and when she heard the voice of the enchantress she unfastened her braided tresses, wound them round one of the hooks of the window above, and then the hair fell twenty ells down, and the enchantress climbed up by it.
After a year or two, it came to pass that the king's son rode through the forest and passed by the tower. Then he heard a song, which was so charming that he stood still and listened. This was Rapunzel, who in her solitude passed her time in letting her sweet voice resound. The king's son wanted to climb up to her, and looked for the door of the tower, but none was to be found. He rode home, but the singing had so deeply touched his heart, that every day he went out into the forest and listened to it. Once when he was thus standing behind a tree, he saw that an enchantress came there, and he heard how she cried:
 'Rapunzel, Rapunzel,
  Let down your hair to me.'
Then Rapunzel let down the braids of her hair, and the enchantress climbed up to her. 'If that is the ladder by which one mounts, I too will try my fortune,' said he, and the next day when it began to grow dark, he went to the tower and cried:
 'Rapunzel, Rapunzel,
  Let down your hair to me.'
Immediately the hair fell down and the king's son climbed up.
At first Rapunzel was terribly frightened when a man, such as her eyes had never yet beheld, came to her; but the king's son began to talk to her quite like a friend, and told her that his heart had been so stirred that it had let him have no rest, and he had been forced to see her. Then Rapunzel lost her fear, and when he asked her if she would take him for her husband, and she saw that he was young and handsome, she thought: 'He will love me more than old Dame Gothel does'; and she said yes, and laid her hand in his. She said: 'I will willingly go away with you, but I do not know how to get down. Bring with you a skein of silk every time that you come, and I will weave a ladder with it, and when that is ready I will descend, and you will take me on your horse.' They agreed that until that time he should come to her every evening, for the old woman came by day. The enchantress remarked nothing of this, until once Rapunzel said to her: 'Tell me, Dame Gothel, how it happens that you are so much heavier for me to draw up than the young king's son—he is with me in a moment.' 'Ah! you wicked child,' cried the enchantress. 'What do I hear you say! I thought I had separated you from all the world, and yet you have deceived me!' In her anger she clutched Rapunzel's beautiful tresses, wrapped them twice round her left hand, seized a pair of scissors with the right, and snip, snap, they were cut off, and the lovely braids lay on the ground. And she was so pitiless that she took poor Rapunzel into a desert where she had to live in great grief and misery.
On the same day that she cast out Rapunzel, however, the enchantress fastened the braids of hair, which she had cut off, to the hook of the window, and when the king's son came and cried:
 'Rapunzel, Rapunzel,
  Let down your hair to me.'
she let the hair down. The king's son ascended, but instead of finding his dearest Rapunzel, he found the enchantress, who gazed at him with wicked and venomous looks. 'Aha!' she cried mockingly, 'you would fetch your dearest, but the beautiful bird sits no longer singing in the nest; the cat has got it, and will scratch out your eyes as well. Rapunzel is lost to you; you will never see her again.' The king's son was beside himself with pain, and in his despair he leapt down from the tower. He escaped with his life, but the thorns into which he fell pierced his eyes. Then he wandered quite blind about the forest, ate nothing but roots and berries, and did naught but lament and weep over the loss of his dearest wife. Thus he roamed about in misery for some years, and at length came to the desert where Rapunzel, with the twins to which she had given birth, a boy and a girl, lived in wretchedness. He heard a voice, and it seemed so familiar to him that he went towards it, and when he approached, Rapunzel knew him and fell on his neck and wept. Two of her tears wetted his eyes and they grew clear again, and he could see with them as before. He led her to his kingdom where he was joyfully received, and they lived for a long time afterwards, happy and contented.",summary: "How far will you let your hair down?", source_link: "Hair", attribution: "Length")
