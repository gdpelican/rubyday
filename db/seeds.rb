require './models/singer'
require './models/song'

Singer.delete_all
Song.delete_all

lionel  = Singer.create name: "Lionel Richie"
michael = Singer.create name: "Michael Bolton"
bonnie  = Singer.create name: "Bonnie Tyler"
cascada = Singer.create name: "Cascada"

Song.create singer: lionel,  duration: 241, title: "Hello", lyrics: "I've been alone with you Inside my mind And in my dreams I've kissed your lips A thousand times I sometimes see you Pass outside my door Hello! Is it me you're looking for? I can see it in your eyes I can see it in your smile You're all I've ever wanted And my arms are open wide 'cause you know just what to say And you know just what to do And I want to tell you so much I love you I long to see the sunlight in your hair And tell you time and time again How much I care Sometimes I feel my heart will overflow Hello! I've just got to let you know 'cause I wonder where you are And I wonder what you do Are you somewhere feeling lonely? Or is someone loving you? Tell me how to win your heart For I haven't got a clue But let me start by saying I love you Hello! Is it me you're looking for? 'cause I wonder where you are And I wonder what you do Are you somewhere feeling lonely? Or is someone loving you? Tell me how to win your heart For I haven't got a clue But let me start by saying I love you"
Song.create singer: lionel,  duration: 277, title: "Dancing on the Ceiling", lyrics: "What is happening here Something's going on that's not quite clear Somebody turn on the lights We're gonna have a party It's starting tonight Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling The room is hot and that's good Some of my friends came by from the neighborhood The people startin' a climb the walls Ooh it looks like everybody is having a ball Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Come on! Everybody start to lose control When the music is right If you see somebody hangin' around Don't get uptight The only thing we want to do tonight Is go 'round and 'round And turn upside down Come on! Let's get down! So come on! Let's get loose Don't hold back 'Cause ain't no use Hard to keep your feet on the ground 'Cause when we like to party We only want to get down Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Say what? Can't stop now Just getting started Everybody clap your hands Come on Everybody let's dance (Oh, oh, oh, oh) Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling Oh, what a feeling When we're dancing on the ceiling baby baby We gonna dance all night Read more: Lionel Richie - Dancing On The Ceiling Lyrics | MetroLyrics "
Song.create singer: michael, duration: 244, title: "When a Man Loves a Woman", lyrics: "When a man loves a woman Can't keep his mind on nothing else He'll trade the world For the good thing he's found If she's bad he can't see it She can do no wrong Turn his back on his best friend If he put her down When a man loves a woman Spend his very last dime Trying to hold on to what he needs He'd give up all his comfort Sleep out in the rain If she said that's the way it ought to be Well, this man loves a woman I gave you everything I had Trying to hold on to your precious love Baby, please don't treat me bad When a man loves a woman Down deep in his soul She can bring him such misery If she plays him for a fool He's the last one to know Loving eyes can't ever see When a man loves a woman He can do no wrong He can never own some other girl Yes when a man loves a woman I know exactly how he feels 'Cause baby, baby, baby, you're my world When a man loves a woman"
Song.create singer: bonnie,  duration: 332, title: "Total Eclipse of the Heart", lyrics: "(Turn around) Every now and then I get a little bit lonely And you're never coming round  (Turn around) Every now and then I get a little bit tired Of listening to the sound of my tears (Turn around) Every now and then I get a little bit nervous That the best of all the years have gone by (Turn around) Every now and then I get a little bit terrified And then I see the look in your eyes (Turn Around, bright eyes) Every now and then I fall apart (Turn Around, bright eyes) Every now and then I fall apart (Turn around) Every now and then I get a little bit restless And I dream of something wild (Turn around) Every now and then I get a little bit helpless And I'm lying like a child in your arms (Turn around) Every now and then I get a little bit angry And I know I've got to get out and cry (Turn around) Every now and then I get a little bit terrified But then I see the look in your eyes (Turn Around, bright eyes) Every now and then I fall apart Turn around, bright eyes Every now and then I fall apart And I need you now tonight And I need you more than ever And if you only hold me tight We'll be holding on forever And we'll only be making it right 'Cause we'll never be wrong Together we can take it to the end of the line Your love is like a shadow on me all of the time (All of the time) I don't know what to do and I'm always in the dark We're living in a powder keg and giving off sparks I really need you tonight Forever's gonna start tonight (Forever's gonna start tonight) Once upon a time I was falling in love But now I'm only falling apart There's nothing I can do A total eclipse of the heart Once upon a time there was light in my life But now there's only love in the dark Nothing I can say A total eclipse of the heart (Turn Around, bright eyes) (Turn Around, bright eyes) (Turn around) Every now and then I know you'll never be the boy You always wanted to be (Turn around) But every now and then I know you'll always be the only boy Who wanted me the way that I am (Turn around) Every now and then I know there's no one in the universe As magical and wondrous as you (Turn around) Every now and then I know there's nothing any better There's nothing that I just wouldn't do (Turn Around, bright eyes) Every now and then I fall apart (Turn Around, bright eyes) Every now and then I fall apart And I need you now tonight And I need you more than ever And if you only hold me tight We'll be holding on forever And we'll only be making it right 'Cause we'll never be wrong Together we can take it to the end of the line Your love is like a shadow on me all of the time (All of the time) I don't know what to do I'm always in the dark Living in a powder keg and giving off sparks I really need you tonight Forever's gonna start tonight (Forever's gonna start tonight) Once upon a time I was I was falling in love But now I'm only falling apart There's nothing I can do A total eclipse of the heart Once upon a time there was light in my life But now there's only love in the dark Nothing I can say A total eclipse of the heart A total eclipse of the heart A total eclipse of the heart (Turn Around, bright eyes) (Turn Around, bright eyes) (Turn around)"
Song.create singer: cascada, duration: 215, title: "Everytime We Touch", lyrics: "I still hear your voice, when you sleep next to me. I still feel your touch in my dream. Forgive me my weakness, but I don't know why Without you it's hard to survive. 'Cause every time we touch, I get this feeling. And every time we kiss, I swear I could fly. Can't you feel my heart beat fast, I want this to last. Need you by my side. 'Cause every time we touch, I feel the static. And every time we kiss, I reach for the sky. Can't you feel my heart beat so... I can't let you go. Want you in my life. Your arms are my castle, your heart is my sky. They wipe away tears that I cry. The good and the bad times, we've been through them all. You make me rise when I fall. 'Cause every time we touch, I get this feeling. And every time we kiss, I swear I could fly. Can't you feel my heart beat fast, I want this to last. Need you by my side. 'Cause every time we touch, I feel the static. And every time we kiss, I reach for the sky. Can't you feel my heart beat so... I can't let you go. Want you in my life. 'Cause every time we touch, I get this feeling. And every time we kiss, I swear I could fly. Can't you feel my heart beat fast, I want this to last. Need you by my side."