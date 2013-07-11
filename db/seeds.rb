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
three_bears.save

#Little Red Riding Hood
little_red = Character.create!(name: "Little Red Riding Hood", gender: girl)
little_red_riding = Story.new(title: "Little Red Riding Hood", content: "Once upon a time there lived in a village a country girl, who was the sweetest little creature that ever was seen; her mother naturally loved her with excessive fondness, and her grandmother doted on her still more. The good woman had made for her a pretty little red-coloured hood, which so much became the little girl, that every one called her Little Red Riding Hood.

One day her mother having made some cheesecakes, said to her, 'Go, my child, for I hear grandmother is ill. Take some of these cakes, and a little pot of butter.' Little Red Riding Hood straight set out with a basket filled with the cakes and the pot of butter, for her grandmother's house, which was in a village a little way off the town that her mother lived in. As she was crossing a wood, which lay in her road, she met a large wolf, which had a great mind to eat her up, but dared not, for fear of some wood-cutters, who were at work near them in the forest. Yet the wolf spoke to her, and asked her whither she was going. The little girl, who did not know the danger of talking to a wolf, replied: 'I am going to see my grandmamma, and carry these cakes and a pot of butter.' 'Does grandmamma live far off?' said the wolf. 'Oh yes!' answered Little Red Riding Hood; 'beyond the mill you see yonder, at the first house in the village.' 'Well,' said the wolf, 'I will take this way, and you take that, and see which will be there the soonest.'

The wolf set out full speed, running as fast as could be, and taking the nearest way, while the little girl took the longest; and as she went along began to gather nuts, run after butterflies, and make nose-gays of such flowers as she found within her reach. The wolf got to the dwelling of the grandmother first, and knocked at the door. 'Who is there?' said some voice in the house. 'It is your grandchild, Little Red Riding Hood,' said the wolf, speaking like the little girl as well as he could. 'I have brought you some cheesecakes, and a little pot of butter, that mamma has sent you.' The good old woman, who was ill in bed, called out, 'Pull the bobbin, and the latch will go up.' The wolf pulled the bobbin, and the door went open. The wolf then jumped upon the poor old grandmother, and ate poor grandmother up in a moment, for it was three days since the wolf had tasted any food. The wolf then shut the door, and laid down in the bed, and waited for Little Red Riding Hood, who very soon after reached the house. Tap! tap! 'Who is there?' cried the wolf. She was at first a little afraid at hearing the gruff voice of the wolf, but she thought that perhaps her grandmother had got a cold, so she answered: 'It is your grandchild, Little Red Riding Hood. Mamma has sent you some cheesecakes, and a little pot of butter.' The wolf cried out in a softer voice, 'Pull the bobbin, and the latch will go up.' Little Red Riding Hood pulled the bobbin, and the door went open. When she came into the room, the wolf hid under the bedclothes, and said to her, trying to speak in a feeble voice: 'Put the basket on the stool, my dear, and take off your clothes, and come into bed.' Little Red Riding Hood, who always used to do as she was told, straight undressed herself, and stepped into bed; but she thought it strange to see how her grandmother looked in her nightclothes, so she said to her: 'Dear me, grandmamma, what great arms you have got!' 'They are so much the better to hug you, my child,' replied the wolf. 'But grandmamma,' said the little girl, 'what great ears you have got!' 'They are so much the better to hear you, my child,' replied the wolf. 'But then, grandmamma, what great eyes you have got!' said the little girl. 'They are so much the better to see you, my child,' replied the wolf. 'And grandmamma, what great teeth you have got!' said the little girl, who now began to be rather afraid. 'They are to eat you up,' said the wolf; and saying these words, the wicked creature fell upon Little Red Riding Hood. Realizing what was happening, Little Red Riding Hood hopped out of bed and dressed herself. The she ran home to the safety of her mother.", summary: "What happens when you stray from the path while visiting grandmother?", source_link: "Magic", attribution: "Banana")

little_red_riding.update_attributes(character: little_red)

little_red_riding.background_image = (BackgroundImage.create(url: "house.jpg", story: little_red_riding))
three_bears.background_image = (BackgroundImage.create(url: "bears.jpg", story: three_bears))

little_red_riding.save
three_bears.save
# #Rapunzel
rapun = Character.create!(name: "Rapunzel", gender: girl)
rapunzel = Story.new(title: "Rapunzel", content: "There were once a man and a woman who had long in vain wished for a child. At length the woman hoped that God was about to grant her desire. These people had a little window at the back of their house from which a splendid garden could be seen, which was full of the most beautiful flowers and herbs. It was, however, surrounded by a high wall, and no one dared to go into it because it belonged to an enchantress, who had great power and was dreaded by all the world. One day the woman was standing by this window and looking down into the garden, when the woman saw a bed which was planted with the most beautiful plant known as rapunzel, and it looked so fresh and green that she longed for it, she quite pined away, and began to look pale and miserable. Then her husband was alarmed, and asked: 'What ails you, dear wife?', 'Ah,' she replied, 'if I can't eat some of the rapunzel plants, which are in the garden behind our house, I shall die.' The man, who loved Rapunzel, thought, 'Sooner than let your wife die, bring her some of the rapunzel yourself, let it cost what it will.' At twilight, he clambered down over the wall into the garden of the enchantress, hastily clutched a handful of rapunzel leaves, and took it to his wife. She at once made herself a salad of it, and ate it greedily. It tasted so good to her so very good, that the next day she longed for it three times as much as before. If he was to have any rest, her husband must once more descend into the garden. In the gloom of evening therefore, he let himself down again; but when he had clambered down the wall he was terribly afraid, for he saw the enchantress standing before him. 'How can you dare,' said she with angry look, 'descend into my garden and steal my rapunzel plants like a thief? You shall suffer for it!' 'Ah,' answered he, 'let mercy take the place of justice, I only made up my mind to do it out of necessity. My wife saw your rapunzel plants from the window, and felt such a longing for it that she would have died if she had not got some to eat.' Then the enchantress allowed her anger to be softened, and said to him: 'If the case be as you say, I will allow you to take away with you as much rapunzel plants as you will, only I make one condition, you must give me the child which your wife will bring into the world; it shall be well treated, and I will care for it like a mother.' The man in his terror consented to everything, and when the woman was brought to bed, the enchantress appeared at once, gave the child the name of Rapunzel, and took it away with her. Rapunzel grew into the most beautiful child under the sun. When she was twelve years old, the enchantress shut Rapunzel into a tower, which lay in a forest, and had neither stairs nor door, but quite at the top was a little window. To summon Rapunzel from the tower the enchantress would cry, 'Rapunzel, Rapunzel,  Let down your hair to me.' Rapunzel had magnificent long hair, fine as spun gold, and when she heard the voice of the enchantress she unfastened her braided tresses, wound them round one of the hooks of the window above, and then the hair fell eighty feet down, and the enchantress climbed up by it.After a year or two, it came to pass that the king's son rode through the forest and passed by the tower. Then the prince heard a song, which was so charming that he stood still and listened. This was Rapunzel, who in her solitude passed her time in letting her sweet voice resound. The king's son wanted to climb up to her, and looked for the door of the tower, but none was to be found. The prince rode home, but the singing had so deeply touched the prince's heart, that every day the prince went out into the forest and listened to it. Once when the prince was thus standing behind a tree, the enchantress appeared, and the prince heard how the woman cried, 'Rapunzel, Rapunzel,  Let down your hair to me.'Then Rapunzel let down the braids of her hair, and the enchantress climbed up to her. 'If that is the ladder by which one mounts, I too will try my fortune,' said the king's son, and the next day when it began to grow dark, the prince went to the tower and cried: 'Rapunzel, Rapunzel, Let down your hair to me.' Immediately the hair fell down and the king's son climbed up. At first Rapunzel was terribly frightened when a man, such as her eyes had never yet beheld, appeared; but the king's son began to talk quite like a friend. The prince's heart had been so stirred that it had let the prince have no rest. The king's son had been forced by feelings to visit Rapunzel. Then Rapunzel lost her fear, and when the king's son asked for her hand in marriage , and she saw that the prince was young and handsome, she thought, 'The prince will love me more than old Dame Gothel does' and she said yes, and laid her hand in his. She said: 'I will willingly go away with you, but I do not know how to get down. Bring with you a skein of silk every time that you come, and I will weave a ladder with it, and when that is ready I will descend, and you will take me on your horse.' They agreed that until that time the prince should come to her every evening, for the old woman came by day. The enchantress remarked nothing of this, until once Rapunzel said: 'Tell me, Dame Gothel, how it happens that you are so much heavier for me to draw up than the young king's son 'Ah! you wicked child,' cried the enchantress. 'What do I hear you say! I thought I had separated you from all the world, and yet you have deceived me!' In anger the enchantress clutched Rapunzel's beautiful tresses, wrapped them twice round her left hand, seized a pair of scissors with the right, and snip, snap, they were cut off, and the lovely braids lay on the ground. And she was so pitiless that she took poor Rapunzel into a desert where she had to live in great grief and misery. On the same day that she cast out Rapunzel, however, the enchantress fastened the braids of hair, which had been cut off, to the hook of the window, and when the king's son came and cried: 'Rapunzel, Rapunzel, Let down your hair to me.'  The hair came down from the top of the tower. The king's son ascended, but instead of finding his dearest Rapunzel, the enchantress was there. The evil woman gazed at the prince with wicked and venomous looks. 'Aha!' she cried mockingly, 'you would fetch your dearest, but the beautiful bird sits no longer singing in the nest; the cat has got it, and will scratch out your eyes as well. Rapunzel is lost to you; you will never see her again.' The king's son was overcome with pain, and leapt down from the tower. The prince escaped, but the during the fall, the thorns near the ground below the tower pierced the son's eyes. Then the prince wandered quite blind about the forest, ate nothing but roots and berries, and did naught but lament and weep over the thought of Rapunzel. Thus the prince roamed about in misery for some years, and at length came to the desert where Rapunzel, with the twins to which she had given birth, lived in wretchedness. The prince heard a voice and it seemed so familiar. The prince went towards it, and when upon reaching it, Rapunzel knew him and fell on the prince's neck and wept. Two of her tears wetted the prince's eyes and they grew clear again. The king's son could see with them as before. The prince led her to the kingdom where they were joyfully received, and they lived for a long time afterwards, happy and contented.", summary: "How far will you let your hair down?", source_link: "Hair", attribution: "Length")

rapunzel.update_attributes(character: rapun)

rapunzel.background_image = (BackgroundImage.create!(url: "rapunzel.jpg", story: rapunzel))

rapunzel.save
#Jack and the Beanstalk
jack = Character.create!(name: "Jack", gender: boy)
jack_bean = Story.new(title: "Jack and the Beanstalk", content: "There was once upon a time a poor widow who had an only son named Jack, and a cow named Milky. And all they had to live on was the milk the cow gave every morning which they carried to the market and sold. But one morning Milky gave no milk and they didn't know what to do.    'What shall we do, what shall we do?' said the widow, wringing her hands.'Cheer up, mother, I'll go and get work somewhere,' said Jack. 'We've tried that before, and nobody would take you,'' said his mother; 'we must sell Milky, and with the money do something, start shop, or something.' 'All right, mother,' says Jack; 'it's market day today, and I'll soon sell Milky, and then we'll see what we can do.' So he took the cow's halter in his hand, and off he starts. He hadn't gone far when he met a funny looking old man who said to him: 'Good morning, Jack.' 'Good morning to you,' said Jack, and wondered how he knew his name. 'Well, Jack, and where are you off to?' said the man. 'I'm going to market to sell our cow here.' 'Oh, you look the proper sort of chap to sell cows,' said the man; 'I wonder if you know how many beans make five.' 'Two in each hand and one in your mouth,' says Jack, as sharp as a needle. 'Right you are,' said the man, 'and here they are the very beans themselves,' he went on pulling out of his pocket a number of strange looking beans. 'As you are so sharp,' says he, 'I don't mind doing a swop with you your cow for these beans.' 'Walker!' says Jack; 'wouldn't you like it?' 'Ah! you don't know what these beans are,' said the man; 'if you plant them over-night, by morning they grow right up to the sky.' 'Really?' says Jack; 'you don't say so.' 'Yes, that is so, and if it doesn't turn out to be true you can have your cow back.' 'Right,' says Jack, and hands him over Milky's halter and pockets the beans. Back goes Jack home, and as he hadn't gone very far it wasn't dusk by the time he got to his door. 'What back, Jack?' said his mother; 'I see you haven't got Milky, so you've sold her. How much did you get for her?' 'You'll never guess, mother,' says Jack. 'No, you don't say so. Good boy! Five pounds, ten, fifteen, no, it can't be twenty.' 'I told you you couldn't guess, what do you say to these beans; they're magical, plant them overnight and ...' 'What!' says Jack's mother, 'have you been such a fool, such a dolt, such an idiot, as to give away my Milky, the best milker in the parish, and prime beef to boot, for a set of paltry beans. Take that! Take that! Take that! And as for your precious beans here they go out of the window. And now off with you to bed. Not a sup shall you drink, and not a bit shall you swallow this very night.' So Jack went upstairs to his little room in the attic, and sad and sorry he was, to be sure, as much for his mother's sake, as for the loss of his supper. At last he dropped off to sleep. When he woke up, the room looked so funny. The sun was shining into part of it, and yet all the rest was quite dark and shady. So Jack jumped up and dressed himself and went to the window. And what do you think he saw? why, the beans his mother had thrown out of the window into the garden, had sprung up into a big beanstalk which went up and up and up till it reached the sky. So the man spoke truth after all. The beanstalk grew up quite close past Jack's window, so all he had to do was to open it and give a jump on to the beanstalk which was made like a big plaited ladder. So Jack climbed and he climbed and he climbed and he climbed and he climbed and he climbed and he climbed till at last he reached the sky. And when he got there he found a long broad road going as straight as a dart. So he walked along and he walked along and he walked along till he came to a great big tall house, and on the doorstep there was a great big tall woman. 'Good morning, mum,' says Jack, quite polite like. 'Could you be so kind as to give me some breakfast.' For he hadn't had anything to eat, you know, the night before and was as hungry as a hunter. 'It's breakfast you want, is it?' says the great big tall woman, 'it's breakfast you'll be if you don't move off from here. My man is an ogre and there's nothing he likes better than boys broiled on toast. You'd better be moving on or he'll soon be coming.' 'Oh! please mum, do give me something to eat, mum. I've had nothing to eat since yesterday morning, really and truly, mum,' says Jack. 'I may as well be broiled, as die of hunger.' Well, the ogre's wife wasn't such a bad sort, after all. So the  took Jack into the kitchen, and gave him a junk of bread and cheese and a jug of milk. But Jack hadn't half finished these when thump! thump! thump! the whole house began to tremble with the noise of someone coming. 'Goodness gracious me! It's my old man,' said the ogre's wife, 'what on earth shall I do? Here, come quick and jump in here.'And she bundled Jack into the oven just as the ogre came in. He was a big one, to be sure. On the ogre's belt were three calves strung up by the heels, and the ogre unhooked them and threw them down on the table and said: 'Here, wife, broil me a couple of these for breakfast. Ah what's this I smell? Fee fi fo fum, I smell the blood of an English man, Be he alive, or be he dead I'll have his bones to grind my bread.' 'Nonsense, dear,' said his wife, 'you're dreaming. Or perhaps you smell the scraps of that little boy you liked so much for yesterday's dinner. Here, go you and have a wash and tidy up, and by the time you come back your breakfast'll be ready for you.' So the ogre went off, and Jack was just going to jump out of the oven and run off when the woman told him not. 'Wait till my husband is asleep,' says she; 'that big guy always has a snooze after breakfast.' Well, the ogre ate breakfast, and after that went to a big chest and takes out of it a couple of bags of gold and sits down counting them.  The ogre at last fell sleep and began to nod. The ogre started to snore till the whole house shook again. Then Jack crept out on tiptoe from his oven, and as he was passing the ogre he took one of the bags of gold under his arm, and off he pelters till he came to the beanstalk, and then he threw down the bag of gold which of course fell in to his mother's garden, and then he climbed down and climbed down till at last he got home and told his mother and showed her the gold and said: 'Well, mother, wasn't I right about the beans. They are really magical, you see.' So they lived on the bag of gold for some time, but at last they came to the end of that so Jack made up his mind to try his luck once more up at the top of the beanstalk. So one fine morning he got up early, and got on to the beanstalk, and he climbed and he climbed and he climbed and he climbed and he climbed and he climbed till at last he got on the road again and came to the great big tall house he had been to before. There, sure enough, was the great big tall woman astanding on the door step. 'Good morning, mum,' says Jack, as bold as brass, 'could you be so good as to give me something to eat?' 'Go away, my boy,' said the big, tall ogre's wife, 'or else my guy will eat you up for breakfast. But aren't you the youngster who came here once before? Do you know, that very day, my man missed one of our bags of gold.' 'That's strange, mum,' says Jack, 'I dare say I could tell you something about that but I'm so hungry I can't speak till I've had something to eat.' Feeling bad for Jack, the big tall wife took him in and gave him something to eat. But he had scarcely begun munching it as slowly as he could when thump! thump! thump! they heard the giant's footstep, and his wife hid Jack away in the oven. All happened as it did before. In came the ogre as he did before, said: 'Fee fi fo fum, I smell the blood of an English man'. The ogre ate breakfast of three broiled oxen and said: 'Wife, bring me the hen that lays the golden eggs.'' So the ogre's wife brought it, and the ogre said: 'Lay,' and it laid an egg all of gold. And then the ogre began to nod asleep, and to snore till the house shook. Then Jack crept out of the oven on tiptoe and caught hold of the golden hen, and was off before you could say 'Jack Robinson.'' But this time the hen gave a cackle which woke the ogre, and just as Jack got out of the house he heard him calling: 'Wife, wife, what have you done with my golden hen?' And the wife said: 'Why, my dear?' But that was all Jack heard, for he rushed off to the beanstalk and climbed down like a house on fire. And when he got home he showed his mother the wonderful hen and said 'Lay,' to it; and it laid a golden egg every time he said 'Lay.' Well, Jack was not content, and it wasn't very long before he determined to have another try at his luck up there at the top of the beanstalk. So one fine morning, he got up early, and went on to the beanstalk, and he climbed and he climbed and he climbed and he climbed till he got to the top. But this time he knew better than to go straight to the ogre's house. And when he got near it he waited behind a bush till he saw the ogre's wife come out with a pail to get some water, and then he crept into the house and got into the copper. He hadn't been there long when he heard thump! thump! thump! as before, and in come the ogre and his wife. 'Fee fi fo fum, I smell the blood of an English man,' cried out the ogre; 'I smell him, wife, I smell him.' 'Do you, my dearie?'' says the ogre's wife. 'Then if it's that little rogue that stole your gold and the hen that laid the golden eggs he's sure to have got into the oven.' And they both rushed to the oven. But Jack wasn't there, luckily, and the ogre's wife said: 'There you are again with your fee fi fo fum. Why of course it's the laddie you caught last night that I've broiled for your breakfast. How forgetful I am, and how careless you are not to tell the difference between a live un and a dead un.' So the ogre sat down to the breakfast and ate it, but every now and then he would mutter: 'Well, I could have sworn...' and he'd get up and search the larder and the cupboards, and everything, only luckily he didn't think of the copper. After breakfast was over, the ogre called out: 'Wife, wife, bring me my golden harp.'' So she brought it and put it on the table before him. Then he said: 'Sing!' and the golden harp sang most beautifully. And it went on singing till the ogre fell asleep, and commenced to snore like thunder. Then Jack lifted up the copper lid very quietly and got down like a mouse and crept on hands and knees till he got to the table when he got up and caught hold of the golden harp and dashed with it towards the door. But the harp called out quite loud: 'Master! Master!' and the ogre woke up just in time to see Jack running off with his harp. Jack ran as fast as he could, and the ogre came rushing after, and would soon have caught him only Jack had a start and dodged him a bit and knew where he was going. When he got to the beanstalk the ogre was not more than twenty yards away when suddenly he saw Jack disappear like, and when he got up to the end of the road he saw Jack underneath climbing down for dear life. Well, the ogre didn't like trusting himself to such a ladder, and he stood and waited, so Jack got another start. But just then the harp cried out: 'Master! master!' and the ogre swung himself down on to the beanstalk which shook with his weight. Down climbs Jack, and after him climbed the ogre. By this time Jack had climbed down and climbed down and climbed down till he was very nearly home. So he called out: 'Mother! mother! bring me an axe, bring me an axe.' And his mother came rushing out with the axe in her hand. As his mother came to the beanstalk the sight was shocking. His mother stood stock still with fright for there the ogre was just coming down below the clouds. But Jack jumped down and got hold of the axe and gave a chop at the beanstalk which cut it half in two. The ogre felt the beanstalk shake and quiver so he stopped to see what was the matter. Then Jack gave another chop with the axe, and the beanstalk was cut in two and began to topple over. Then the ogre fell down and broke his crown, and the beanstalk came toppling after. Then Jack showed his mother his golden harp, and what with showing that and selling the golden eggs, Jack and his mother became very rich, and he married a great princess, and they lived happy ever after.'", summary: "Who knew beans could be magical?", source_link: "Lima", attribution: "Beans")

jack_bean.update_attributes(character: jack)

jack_bean.background_image = (BackgroundImage.create!(url: "beanstalk.jpg", story: jack_bean))

jack_bean.save
#frog prince
frog = Character.create!(name: "Princess", gender: girl)
frog_prince = Story.new(title: "The Frog Prince", content: "One fine evening a young princess put on her bonnet and clogs, and went
out to take a walk by herself in a wood; and when she came to a cool
spring of water, that rose in the midst of it, she sat herself down
to rest a while. Now she had a golden ball in her hand, which was her
favourite plaything; and she was always tossing it up into the air, and
catching it again as it fell. After a time she threw it up so high that
she missed catching it as it fell; and the ball bounded away, and rolled
along upon the ground, till at last it fell down into the spring. The
princess looked into the spring after her ball, but it was very deep, so
deep that she could not see the bottom of it. Then she began to bewail
her loss, and said, 'Alas! if I could only get my ball again, I would
give all my fine clothes and jewels, and everything that I have in the
world.'

Whilst she was speaking, a frog put its head out of the water, and said,
'Princess, why do you weep so bitterly?' 'Alas!' said she, 'what can you
do for me, you nasty frog? My golden ball has fallen into the spring.'
The frog said, 'I want not your pearls, and jewels, and fine clothes;
but if you will love me, and let me live with you and eat from off
your golden plate, and sleep upon your bed, I will bring you your ball
again.' 'What nonsense,' thought the princess, 'this silly frog is
talking! That frog can never even get out of the spring to visit me, though
I will need him to get my ball for me, and therefore I will tell him he
shall have what he asks.' So she said to the frog, 'Well, if you will
bring me my ball, I will do all you ask.' Then the frog put his head
down, and dived deep under the water. After a little the frog came
up again, with the ball in his mouth, and threw it on the edge of the
spring. As soon as the young princess saw her ball, she ran to pick
it up; and she was so overjoyed to have it in her hand again, that she
never thought of the frog, but ran home with it as fast as she could.
The frog called after her, 'Stay, princess, and take me with you as you
said,' But she did not stop to hear a word.

The next day, just as the princess had sat down to dinner, she heard a
strange noise tap, tap, plash, plash, as if something was coming up the
marble staircase: and soon afterwards there was a gentle knock at the
door, and a little voice cried out and said:

 'Open the door, my princess dear,
  Open the door to thy true love here!
  And mind the words that thou and I said
  By the fountain cool, in the greenwood shade.'

Then the princess ran to the door and opened it, and there she saw
the frog, whom she had quite forgotten. At this sight she was sadly
frightened, and shutting the door as fast as she could came back to her
seat. The king, seeing that something had frightened her,
asked her what was the matter. 'There is a nasty frog,' said she, 'at
the door, that lifted my ball for me out of the spring this morning: I
told him that we should live together here, thinking that a frog could never get out of the spring; but there he is at the door, and he wants to come
in.'

While she was speaking the frog knocked again at the door, and said:

 'Open the door, my princess dear,
  Open the door to thy true love here!
  And mind the words that thou and I said
  By the fountain cool, in the greenwood shade.'

Then the king said to the young princess, 'As you have given your word
you must keep it; so go and let him in.' She did so, and the frog hopped
into the room, and then straight on tap, tap, plash, plash, from the
bottom of the room to the top, till the frog came up close to the table where
the princess sat. 'Pray lift me upon chair,' said the frog to the princess,
'and let me sit next to you.' As soon as she had done this, the frog
said, 'Put your plate nearer to me, that I may eat out of it.' This
she did, and when he had eaten as much as he could, he said, 'Now I am
tired; carry me upstairs, and put me into your bed.' And the princess,
though very unwilling, took the frog up in her hand, and the frog upon the
pillow of her own bed, where the frog slept all night long. As soon as it was
light the frog jumped up, hopped downstairs, and went out of the house.
'Now, then,' thought the princess, 'at last frog is gone, and I shall be
troubled no more.'

But she was mistaken; for when night came again she heard the same
tapping at the door; and the frog came once more, and said:

 'Open the door, my princess dear,
  Open the door to thy true love here!
  And mind the words that thou and I said
  By the fountain cool, in the greenwood shade.'

And when the princess opened the door the frog came in, and slept upon
her pillow as before, till the morning broke. And the third night the frog did
the same. But when the princess awoke on the following morning she was
astonished to see, instead of the frog, a handsome prince, gazing on her
with the most beautiful eyes she had ever seen, and standing at the head
of her bed.

The princess learned that the prince had been enchanted by a spiteful fairy, who had
changed the prince into a frog.  The frog would have to live in the swamp till
some princess should take the frog out of the spring, and let the frog eat from
her plate, and sleep upon her bed for three nights. 'You,' said the
prince, 'have broken the spell, and now I have nothing to wish for
but that you should go with me into my father's kingdom, where I will
marry you, and love you as long as you live.'

The young princess, you may be sure, was not long in saying 'Yes' to
all this; and as they spoke a gay coach drove up, with eight beautiful
horses, decked with plumes of feathers and a golden harness; and behind
the coach rode the prince's servant, faithful Heinrich, who had bewailed
the misfortunes of his dear master during his enchantment so long and so
bitterly, that his heart had well-nigh burst.

They then took leave of the king, and got into the coach with eight
horses, and all set out, full of joy and merriment, for the prince's
kingdom, which they reached safely; and there they lived happily a great
many years.", summary: "A kiss leads to a magical encounter", source_link: "swamp", attribution: "Chickens")

frog_prince.update_attributes(character: frog)

frog_prince.background_image = (BackgroundImage.create!(url: "frog.jpg", story: frog_prince))

frog_prince.save
