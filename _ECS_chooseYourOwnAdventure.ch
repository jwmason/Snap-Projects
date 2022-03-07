//chooseYourOwnAdventure.ch
/*has the user undergo a series of choices that will
determine the plot of the story*/

//Title: A Call to Justice

//Declarations

string_t speed;
string_t reqSpeed;
int fast;
int normal;
int slow;
int superslow;
string_t cheat;
string_t nameChoose;
int randnameChoose;
string_t storyans;
string_t storyans1;
string_t storyans2;
string_t storyans3;
string_t tryagainSpeed;
string_t tryagainreqSpeed;
string_t tryagainCheat;
string_t tryagainIntro;
string_t tryagainStory;
string_t tryagainStory1;
string_t tryagainStory2;
string_t tryagainStory3;
string_t tryAgainendans;
int win;
string_t endans;
string_t username1;
string_t username2;
string_t givenName = "Bruce";
string_t givenName2 = "Alfred";
string_t storyName1;
string_t storyName2;
string_t userword;
string_t cheatcode = "CHEAT";

//function that lets the user try to guess the cheat word
void askuser() {
    sleep(1);
    printf("Before we start, would you like to say anything user?\n");
    sleep(2);
    printf("Enter in letters only please.\n");
    scanf("%s", &userword);
    if(userword == cheatcode) {
        sleep(.5);
        printf("...\n");
        sleep(1.5);
        printf("     _____________________________________\n");
        printf("    |                                     |        \n");    
        printf("    |   I see you have used the secret    |        \n");     
        printf("    |   cheat code. Well, you won then.   |      \n");
        printf("    |   You can press F2 to restart, but  |                   \n");
        printf("    |   you already know how to win...    |      \n");
        printf("    |   so I guess you can have fun then. |      \n");
        printf("    |_____    ____________________________|    \n");
        printf(" -   -   /   /           \n");
        printf(" 0 __0  /  /            \n");
        printf(" )|__|(                 \n");
        printf(" 1    1             \n");
        printf(" 1    1           \n");
        printf(" 1    1            \n");
        printf(" 1    1       \n");
        printf(" 1    1       \n");
        exit(1);
    }
        if(userword!=cheatcode){
        sleep(.5);
        printf("Okay...\n");
        sleep(.5);
        printf("I don't know what '%s' means, but let's start.\n", userword);
        sleep(2);
    }
}

//function that lets user determine the speed of the story

void speedOfStory() {

//Speed of Adventure
    sleep(1);
    printf("Please set the speed of the story.\n");
    sleep(2);
    printf("Press 1 to have no delay, or 2 to set speed (set speed is recommended to enhance experience).\n");
    scanf("%s", &speed);

//Loop for numbers not in program (Speed)

    while (speed!="1" && speed!="2") {
        sleep(.5);
        printf("Please choose 1 or 2.\n");
        scanf("%s", &tryagainSpeed);
        if (tryagainSpeed == "1") {
            speed = "1";
        }
        if (tryagainSpeed == "2") {
            speed = "2";
        }
    }

    if (speed == "1") {
        fast = 0;
        normal = 0;
        slow = 0;
        superslow = 0;
    }
    if (speed == "2") {
        sleep(.5);
        printf("1 for fast, 2 for normal, 3 for slow, and 4 for super slow.\n");
        scanf("%d", &reqSpeed);

//Loop for numbers not in program (reqSpeed)

        while (reqSpeed!="4" && reqSpeed!="1" && reqSpeed!="2" && reqSpeed!="3") {
            sleep(.5);
            printf("Please choose 1, 2, 3, or 4.\n");
            scanf("%s", &tryagainreqSpeed);
            if (tryagainreqSpeed == "1") {
                reqSpeed = "1";
            }
            if (tryagainreqSpeed == "2") {
                reqSpeed = "2";
            }
            if (tryagainreqSpeed == "3") {
                reqSpeed = "3";
            }
            if (tryagainreqSpeed == "4") {
                reqSpeed = "4";
            }
        }
        if (reqSpeed == "1") {
            fast = 1.75;
            normal = 2;
            slow = 2.25;
            superslow = 2.5;
        }
        if (reqSpeed == "2") {
            fast = 2.75;
            normal = 3;
            slow = 3.25;
            superslow = 3.5;
        }
        if (reqSpeed == "3") {
            fast = 3.25;
            normal = 3.5;
            slow = 3.75;
            superslow = 4;
        }
        if (reqSpeed == "4") {
            fast = 3.75;
            normal = 4;
            slow = 4.25;
            superslow = 4.5;
        }
    }
}

//function that welcomes the player

void welcome() {

//Welcome
    
    win=0;
    sleep(fast);
    printf("Welcome to 'Choose Your Own Adventure!'\n");
    sleep(normal);
    printf("Would you like to see a roadmap of all the possible options and where they lead?\n");
    sleep(normal);
    printf("Press 1 to see the roadmap, or 2 to play facing the unknown?\n");
    sleep(normal);
    printf("Choose now.\n");
    scanf("%s", &cheat);
}

//function that allows user to see roadmap of all choices

void cheatSheet() {
//Loop for numbers not in program (Roadmap)

    while (cheat!="2" && cheat!="1") {
        sleep(.5);
        printf("Please choose 1 or 2.\n");
        scanf("%s", &tryagainCheat);
        if (tryagainCheat == "1") {
            cheat = "1";
        }
        if (tryagainCheat == "2") {
            cheat = "2";
        }
    }

//Option choice: Roadmap

    if (cheat == "1") {
        printf("                              Roadmap (AKA Cheat Sheet)                                  \n");
        sleep(fast);
        printf("-------------------------------------------------------------------------------------------\n");
        sleep(fast);
        printf("                               *After the Introduction*                                                                  \n");
        sleep(fast);
        printf("        [Press 1]                      [Press 2]                     [Press 3]                   \n");
        sleep(fast);
        printf("            |                              |                             |           \n");
        sleep(fast);
        printf("         Option 1                       Option 2                      Option 3              \n");
        sleep(normal);
        printf("         (Fight)                       (Live Life)                     (Both)                      \n");
        sleep(normal);
        printf("  ____ /    |    \\ ____          ____ /    |    \\ ____          ____ /    |    \\ ____              \n");
        sleep(fast);
        printf("  |         |         |          |         |         |          |         |         |                     \n");
        sleep(fast);
        printf("[Press 1][Press 2][Press 3]    [Press 1][Press 2][Press 3]    [Press 1][Press 2][Press 3]                        \n");
        sleep(normal);
        printf("  |         |         |          |         |         |          |         |         |                              \n");
        sleep(fast);
        printf(" End 1     End 2    End 3        End 4     End 5    End 6      End 7     End 8    End 9                                \n");
        printf("[LOSE]    [WIN]     [LOSE]       [LOSE]   [LOSE]    [WIN]      [LOSE]    [WIN]    [LOSE]                     \n");
        sleep(fast);
        printf("(Fight) (Assasinate)(Run)       (Abandon) (Lethal) (Fight)  (Live Life) (Fight) (New Family)                        \n\n");
        sleep(superslow);
        printf("Begin whenever you're ready.\n\n");
        sleep(normal);
    }
    if (cheat == "2") {
        printf("So...\n");
        sleep(fast);
        printf("I see you have decided to face the unknown. Good luck.\n");
        sleep(fast);
        printf("You'll need it.\n");
        sleep(normal);
    }
    printf("Press 1 to have two given names, or\nPress 2 to pick the names yourself.\n");
    printf("Press 3 to let me pick option 1 or 2 for you.\n");
    sleep(fast);
    printf("('_')/\n");
    sleep(fast);
    printf("Choose now.\n");
    scanf("%s", &nameChoose);
}


//function that allows user to choose name choices

void chooseNames() {
//Loop for numbers not in program (Introduction)

    while (nameChoose!="3" && nameChoose!="1" && nameChoose!="2") {
        sleep(.5);
        printf("Please choose 1, 2, or 3.\n");
        scanf("%s", &tryagainIntro);
        if (tryagainIntro == "1") {
            nameChoose = "1";
        }
        if (tryagainIntro == "2") {
            nameChoose = "2";
        }
    }
    if (nameChoose == "1") {
        storyName1 = givenName;
        storyName2 = givenName2;
    }
    if (nameChoose == "2") {
        sleep(fast);
        printf("Okay. Choose two names.\n");
        scanf("%s", &username1);
        printf("Now the second.\n");
        scanf("%s", &username2);
        storyName1 = username1;
        storyName2 = username2;
    }
    if (nameChoose == "3") {
        randnameChoose = randint(1, 2);
        if (randnameChoose == 1) {
            printf("Let's see...\n");
            sleep(normal);
            printf("Okay, I pick %d.\n", randnameChoose);
            sleep(fast);
            printf("Good luck!\n");
            sleep(normal);
            storyName1 = givenName;
            storyName2 = givenName2;
        }
        if (randnameChoose == 2) {
            printf("Let's see...\n");
            sleep(normal);
            printf("Okay, I pick %d.\n", randnameChoose);
            sleep(fast);
            printf("Good luck!\n");
            sleep(normal);
            printf("Okay. Choose two names.\n");
            scanf("%s", &username1);
            printf("Now the second.\n");
            scanf("%s", &username2);
            storyName1 = username1;
            storyName2 = username2;
        }
    }
}


//function that performs the introduction

void intro() {

//Introduction

    printf("...\n");
    sleep(fast);
    printf("Ok...\n");
    sleep(fast);
    printf("Your two names are %s and %s.\n", storyName1, storyName2);
    sleep(normal);
    printf("%s and %s are actually going to be the names of the two main characters, you being %s.\n", storyName1, storyName2, storyName1);
    sleep(slow);
    printf("Welcome to the story, %s...\n", storyName1);
    sleep(slow);
    printf("It was a dark night, with rain and thunder falling from the colorless night.\n");
    sleep(normal);
    printf("You overlook Trashy Kid City from your mansion. It was dark.\n");
    sleep(normal);
    printf("Too dark.\n");
    sleep(normal);
    printf("You know there is crime in Trashy Kid City. You think,'Of course there's crime in Trashy Kid City!'\n");
    sleep(normal);
    printf("It's full of trashy kids and their leader...\n");
    sleep(slow);
    printf("Trashy Kid %s!\n", storyName2);
    sleep(normal);
    printf("You stand on your couch and shout in your deepest voice,'It's time for justice noobs!'\n");
    sleep(normal);
    printf("You stop and think to yourself...\n");
    sleep(slow);
    printf("'You can't be Trashy Kid Fighter! You own %s-Industries! You have a wife and kids!'\n", storyName1);
    sleep(normal);
    printf("You sigh and think for a moment.\n");
    sleep(normal);
    printf("Press 1 to fight crime as Trashy Kid Fighter,\nPress 2 to leave crime to the police to be with your family,\n");
    printf("Press 3 to try to live two lives, as Trashy Kid Fighter and the owner of %s-Industries!\n", storyName1);
    sleep(normal);
    printf("Choose now.\n");
    scanf("%s", &storyans);
}

//function that loops until an option is chosen

void optionLoop(){
    
//Loop for numbers not in program (Options)

    while (storyans!="3" && storyans!="1" && storyans!="2") {
        sleep(.5);
        printf("Please choose 1, 2, or 3.\n");
        scanf("%s", &tryagainStory);
        if (tryagainStory == "1") {
            storyans = "1";
        }
        if (tryagainStory == "2") {
            storyans = "2";
        }
        if (tryagainStory == "3") {
            storyans = "3";
        }
    }
}
//function that performs option 1

void option1() {

//Option 1

    if (storyans == "1") {
        sleep(fast);
        printf("You say,'Who cares about my family, multimillion dollar industry, or my identity!\n");
        sleep(normal);
        printf("I just wanna fight crime and clap Trashy Kids!\n");
        sleep(normal);
        printf("With that, you jump out the window of your mansion and glide into Trashy Kid City.\n");
        sleep(normal);
        printf("]^--^                         \n");
        printf("](. .)         |    __        \n");
        printf("]  __         _|_  |  |       \n");
        printf("]    |       |  |  |  |  _    \n");
        printf("]    |       |  |  |  | | |   \n");
        printf("]    |       |  |  |  | | |   \n");
        sleep(normal);
        printf("As you glide down unto the city, you land on the highest building.\n");
        sleep(normal);
        printf("You immediately spot the Trashy Kids, and they have taken over the city!\n");
        sleep(normal);
        printf("You scout out the area and you find the main headquarters of the Trashy Kids.\n");
        sleep(normal);
        printf("You know Trashy Kid %s is in there, with multiple Trashy Kids being trashy with him.\n", storyName2);
        sleep(slow);
        printf("You want justice for this trash, but is it worth the risk?\n");
        sleep(normal);
        printf("Press 1 to go in there and clap some Trashy Kids,\nPress 2 to quietly infiltrate the HQ and take out %s, or\n", storyName2);
        printf("Press 3 to let the Trashy Kids take over the city.\n");
        sleep(fast);
        printf("Choose wisely.\n");
        scanf("%s", &storyans1);
        
//Loop for numbers not in program (Endings of Option 1)

        while (storyans1!="3" && storyans1!="1" && storyans1!="2") {
            sleep(.5);
            printf("Please choose 1, 2, or 3.\n");
            scanf("%s", &tryagainStory1);
            if (tryagainStory1 == "1") {
                storyans1 = "1";
            }
            if (tryagainStory1 == "2") {
                storyans1 = "2";
            }
            if (tryagainStory1 == "3") {
                storyans1 = "3";
            }
        }
    

//End 1

        if (storyans1 == "1") {
            sleep(fast);
            printf("You can do this.\n"); 
            sleep(fast);
            printf("You're Trashy Kid Fighter.\n"); 
            sleep(fast);
            printf("You can handle this.\n");
            sleep(fast);
            printf("You stand on the roof of a building hyping yourself up for 10 minutes.\n");
            sleep(fast);
            printf("You gather your gadgets: trash cans, plastic bags, and batarangs made of foil.\n");
            sleep(normal);
            printf("You glide down to the entrance and kick open the door.\n");
            sleep(normal);
            printf("You shout,'Trashy Kid Fighters here to clap noobs!'\n");
            sleep(normal);
            printf("The room is silent\n");
            sleep(slow);
            printf("You look to your left.\n");
            sleep(normal);
            printf("-  -\n");
            printf("0  0\n");
            printf(")__(\n");
            printf("1   1        1------\n");
            printf("1   1        1  )---\n");
            printf("1   1       / /\n");
            printf("1   1------\n");
            printf("1    -------\n");
            sleep(slow);
            printf("You think to yourself,'Okay. Easy claps. I'll just plastic-bag him and take him out.\n");
            sleep(normal);
            printf("You look to your right.\n");
            sleep(normal);
            printf("-  -\n");                       
            printf("0  0\n");
            printf(")__(\n");
            printf("1   1        1------\n");
            printf("1   1        1  )---\n");
            printf("1   1       / /\n");
            printf("1   1------\n");
            printf("1    -------\n");
            sleep(normal);
            printf("Might be a problem, but you're Trashy Kid Fighter! You can take them out!\n");
            sleep(fast);
            printf("Little did you know, there were more.\n");
            sleep(normal);
            printf("-  -\n");
            printf("0  0\n");
            printf(")__(\n");
            printf("1   1        1------\n");
            printf("1   1        1  )---\n");
            printf("1   1       / /\n");
            printf("1   1------\n");
            printf("1    -------\n");
            sleep(normal);
            printf("Oh yea, they also all are armed.\n");
            sleep(fast);
            printf("The whole city hears rapid fire, and everyone knows Trashy Kid Fighter is dead.\n");
            sleep(normal);
            printf("No one comes to your funeral, and your wife and kids leave you to be with Trashy Kid %s.\n", storyName2);
            sleep(slow);
            printf("The End.\n");
        }
            
//End 2

        if (storyans1 == "2") {
            sleep(fast);
            printf("You decide to quietly inflitrate the HQ.\n");
            sleep(normal);
            printf("You glide down to the HQ and sneak into the base through the back.\n");
            sleep(normal);
            printf("You quietly take out the two guards in the back by choking them with your plastic bags.\n");
            sleep(slow);
            printf("You use the keycard off of the unconcious guards, and you enter in the base.\n");
            sleep(slow);
            printf("You are immediately hit with a smell, the smell of trash.\n");
            sleep(normal);
            printf("As you make your way through the base, you ultilize your gadgets to take out Trashy Kids left and right with trash cans, plastic bags, and foil batarangs\n");
            sleep(slow);
            printf("Eventually, you make it to Trashy Kid %s's lair. He smells and looks like trash.\n", storyName2);
            sleep(slow);
            printf("You want justice...\n");
            sleep(normal);
            printf("So you clap %s's cheeks for good, and trashiness dies.\n", storyName2);
            sleep(normal);
            printf("You quietly leave the HQ unspotted and return to your mansion.\n");
            sleep(normal);
            printf("You return to your life and family, and put a towel over Trashy Kid Fighter\n");
            sleep(normal);
            printf("You live happily ever after with your family knowing Trashy Kid City is safe.\n");
            sleep(normal);
            printf("The End.\n");
            win=1;
            
        }

//End 3

        if (storyans1 == "3") {
            sleep(fast);
            printf("You think to yourself,'I can't do this! The Trashy Kids are too powerful, especially with Trashy Kid %s.'\n", storyName2);
            sleep(superslow);
            printf("You slowly begin to leave, and watch the Trashy Kids commit crime over the city.\n");
            sleep(normal);
            printf("You return home to your mansion in your Cart-Mobile.\n");
            sleep(normal);
            printf(" _         \n");
            printf("| |______    \n");
            printf("|       |   \n");
            printf("|_______|  \n");
            printf(" |      |  \n");
            printf(" 0      0  \n");
            sleep(slow);
            printf("Your return to your family and life, leaving your crime fighting days behind.\n");
            sleep(normal);
            printf("As years pass, the Trashy Kids grow even more powerful under the rule of Trashy Kid %s.\n", storyName2);
            sleep(slow);
            printf("Eventually, the Trashy Kids take over the entire region, but they want more.\n");
            sleep(normal);
            printf("The Trashy Kids show up to your doorstep, and clap your cheeks.\n");
            sleep(normal);
            printf("The Trashy Kids and Trashy Kid %s take over your mansion and take your family captive.\n", storyName2);
            sleep(slow);
            printf("Your family is separated due to the high levels of labor and the smell of trash.\n");
            sleep(normal);
            printf("You industry is destroyed, and was converted to %s-Industries.\n", storyName2);
            sleep(normal);
            printf("You die from the hard labor of being trash.\n");
            sleep(normal);
            printf("The End.\n");
        }
    }
}


//function that performs option 2

void option2() {

//Option 2

    if (storyans == "2") {
        sleep(fast);
        printf("You decide the risks of being Trashy Kid Fighter outweighs the rewards.\n");
        sleep(normal);
        printf("You think,'That's what the police is for! They can handle it!'\n");
        sleep(normal);
        printf("As you say these words, you see the TKPD, or the Trashy City Police Department, getting beat up by Trashy Kids.\n");
        sleep(slow);
        printf("You realize that the Trashy Kids need to be taken down, and that the police need help.\n");
        sleep(normal);
        printf("They need the help of Trashy Kid Fighter.\n");
        sleep(fast);
        printf("So you glide down to the plaza where the TCPD are getting clapped.\n");
        sleep(fast);
        printf("And you start to beat down the Trashy Kids, grabbing them off of the police officers.\n");
        sleep(normal);
        printf("Bam!\n");
        sleep(fast);
        printf("Pow!\n");
        sleep(fast);
        printf("Boom!\n");
        sleep(fast);
        printf("You clap Trashy Kids left and right!\n");
        sleep(normal);
        printf("But there are too many.\n");
        sleep(fast);
        printf("Slowly, you and the TCPD begin to get overwhelmed by the Trashy Kids\n");
        sleep(normal);
        printf("The you and the TCPD start to get beat up again.\n");
        sleep(normal);
        printf("Press 1 to grapple away and leave the TCPD,\nPress 2 to pull out your lethal weapons and spray,\nPress 3 to keep on fighting.\n");
        sleep(slow);
        printf("Choose wisely.\n");
        sleep(fast);
        scanf("%s", &storyans2);
    
//Loop for numbers not in program (Endings of Option 2)

        while (storyans2!="3" && storyans2!="1" && storyans2!="2") {
            printf("Please choose 1, 2, or 3.\n");
            scanf("%d", &tryagainStory2);
            if (tryagainStory2 == "1") {
                storyans2 = "1";
            }
            if (tryagainStory2 == "2") {
                storyans2 = "2";
            }
            if (tryagainStory2 == "3") {
                storyans2 = "3";
            }
        }
    


//End 4

        if (storyans2 == "1") {
            sleep(fast);
            printf("You think,'Man, the TCPD isn't worth saving! The city's going down anyway!'\n");
            sleep(normal);
            printf("You shout to the police,'Uh, I'm gonna go use the restroom.'\n");
            sleep(normal);
            printf("However, the police see through your trashy lie!\n");
            sleep(fast);
            printf("As you began the grapple away, the police and the Trashy Kids start to team up...\n");
            sleep(normal);
            printf("On you!\n");
            sleep(fast);
            printf("They both start firing at you and break your grappling gun, and you are left defenseless with no where to go.\n");
            sleep(slow);
            printf("They then agree to rule Trashy City together\n");
            sleep(normal);
            printf("And you aren't in their agreement.\n");
            sleep(normal);
            printf("]^--^       \n");
            printf("](. .)      \n");
            printf("]  __       \n");
            printf("]    |      \n");
            printf("]    |      \n");
            printf("]    |      \n");
            sleep(normal);
            printf("They open fire on the defenseless Trashy Kid Fighter...\n");
            sleep(normal);
            printf("You get clapped.\n");
            sleep(fast);
            printf("Your family is left to fend for themselves, and your industry shuts down.\n");
            sleep(normal);
            printf("The Trashy Kids take over the world.\n");
            sleep(normal);
            printf("The End.\n");
        }

//End 5

        if (storyans2 == "2") { 
            sleep(fast);
            printf("You are so mad.\n");
            sleep(fast);
            printf("You can't think. You just know you are getting clapped.\n");
            sleep(normal);
            printf("You think,'I'm tired of being so trashy!'\n");
            sleep(fast);
            printf("With that, you pull out your Trashy Kid Annihilaters and open fire.\n");
            sleep(normal);
            printf("You shout,'Wanna piece of me Trashy Kids!', as you spin in circles firing recklessly.\n");
            sleep(slow);
            printf("As you open fire on the battle, the Trashy Kids are hit...\n");
            sleep(normal);
            printf("But the TCPD are also hit!\n");
            sleep(fast);
            printf("When you run out of ammo, you look around you...\n");
            sleep(normal);
            printf("To see that you have clapped the Trashy Kids, and happened to fire a random round to hit Trashy Kid %s 100 miles away!\n", storyName2);
            sleep(superslow);
            printf("However, you also see no TCPD officers standing with you.\n");
            sleep(normal);
            printf("You clapped the TCPD as well!\n");
            sleep(normal);
            printf("With the Trashy Kids eliminated and the TCPD barely saved, you are arrested for the clapping of several TCPD officers!\n");
            sleep(superslow);
            printf("You go to Trashy City Prison, and are sentenced to 100 years.\n");
            sleep(normal);
            printf("Your family takes over your industry, and forgets all about you.\n");
            sleep(normal);
            printf("Your secret identity is revealed, and your family is endangered for life.\n");
            sleep(slow);
            printf("You also get beat up everyday for the people you previously put in prison.\n");
            sleep(normal);
            printf("]^--^        __               \n");
            printf("](+ +)     _|_  | _______       \n");
            printf("]  __     (___                \n");
            printf("]     |   (___                \n");
            printf("]     |   (___      _____       \n");
            printf("]     |   (______ /           \n");
            sleep(superslow);
            printf("The End.\n");
        }

//End 6

        if (storyans2 == "3") {
            sleep(fast);
            printf("You can't give up now.\n");
            sleep(fast);
            printf("Your Trashy Kid Fighter!\n");
            sleep(fast);
            printf("You can take on a few Trashy Kids!\n");
            sleep(fast);
            printf("A few hundred Trashy Kids.\n");
            sleep(fast);
            printf("You think,'I can't leave the TCPD officers! They need my help!'\n");
            sleep(normal);
            printf("So you stop being trashy. You become someone, something better.\n");
            sleep(slow);
            printf("You are Trashy Kid Annihilater!\n");
            sleep(normal);
            printf("            __             \n");
            printf("        ___|   | ____            \n");
            printf("-  -   (___               \n");
            printf("0  0   (___               \n");
            printf(")__(   (___             \n");
            printf("1   1  (___  1------    \n");
            printf("1   1        1  )---    \n");
            printf("1   1       / /        \n");
            printf("1   1------  /          \n");
            printf("1    -------/        \n");
            sleep(superslow);
            printf("Bam!\n");
            sleep(fast);
            printf("Pow!\n");
            sleep(fast);
            printf("Clap!\n");
            sleep(fast);
            printf(" -  -                \n");
            printf(" +__+                \n");
            printf(")|__|(               \n");
            printf("1   1                \n");
            printf("1   1                \n");
            printf("1   1                \n");
            printf("1   1                \n");
            printf("1   1                \n");
            sleep(superslow);
            printf("You start trashing on the Trashy Kids left and right!\n");
            sleep(normal);
            printf("Eventually, you and the TCPD take out all the Trashy Kids, and capture Trashy Kid %s.\n", storyName2);
            sleep(slow);
            printf("You are awarded the key to the City, as the Purifier of Trashiness. Trashy Kid %s is sentenced 100 years in prison\n", storyName2);
            sleep(superslow);
            printf("You live happily ever after as the owner of %s-Industries, a husband, a father,\nand a beloved hero whose identity is unknown\n", storyName1);
            sleep(superslow);
            printf("The End.\n");
            win=1;
        }
    }
}


//function that performs option 3

void option3() {

//Option 3

    if (storyans == "3") {
        sleep(fast);
        printf("You think,'I can handle a multiple million dollar industry and be Trashy Kid Fighter!'\n");
        sleep(slow);
        printf("'I'lljust be Trashy Kid Fighter in the night, and %s in the day!'\n", storyName1);
        sleep(normal);
        printf("In your newfound confidence, you go out into the night, ready to fight crime.\n");
        sleep(normal);
        printf("Not long after, you find a gang of Trashy Kids, and you instantly charge them, yelling,\n");
        sleep(normal);
        printf("'I'm gonna clap you noobs!'\n");
        sleep(fast);
        printf("However, your skills and reflexes aren't what they used to be.\n");
        sleep(normal);
        printf("Bam!\n");
        sleep(fast);
        printf("Pow!\n");
        sleep(fast);
        printf("Ouch!\n");
        sleep(fast);
        printf("]^--^               \n");
        printf("](+ +)              \n");
        printf("]  __               \n");
        printf("]     |             \n");
        printf("]     |             \n");
        printf("]     |             \n");
        sleep(superslow);
        printf("You get clapped so hard that even the Trashy Kids said you were trash.\n");
        sleep(normal);
        printf("You are so injured you can't move,\n");
        sleep(fast);
        printf("so you call for your Cart-Mobile to take you back to the Not-Trashy Cave.\n");
        sleep(slow);
        printf("]^--^               \n");
        printf("](+ +)              \n");
        printf("]  __               \n");
        printf("]     |             \n");
        printf("]     |             \n");
        printf("]_    |             \n");
        printf("| |___|__           \n");
        printf("|       |           \n");
        printf("|_______|           \n");
        printf(" |      |           \n");
        printf(" 0      0           \n");
        sleep(superslow);
        printf("As you slowly make your way through the streets of Trashy City, you see many Trashy Kids.\n");
        sleep(slow);
        printf("The Trashy Kids laugh at you, and even they think you are trashier than they are.\n");
        sleep(normal);
        printf("They throw trash at you, your Cart-Mobile unable to protect you.\n");
        sleep(normal);
        printf("By the time you get back to the cave, you are covered in trash.\n");
        sleep(normal);
        printf("Your wife and kids come down to see you, but you are so trashed they can't recognize you.\n");
        sleep(normal);
        printf("She quietly says,'Pick us, or your crime fighting life.'\n");
        sleep(normal);
        printf("Press 1 to give up Trashy Kid Fighter,\nPress 2 to give up your family,\nPress 3 to find a new family.\n");
        scanf("%s", &storyans3);

//Loop for numbers not in program (Endings of Option 3)

        while (storyans3!="3" && storyans3!="1" && storyans3!="2") {
            printf("Please choose 1, 2, or 3.\n");
            scanf("%s", &tryagainStory3);
            if (tryagainStory3 == "1") {
                storyans3 = "1";
            }
            if (tryagainStory3 == "2") {
                storyans3 = "2";
            }
            if (tryagainStory3 == "3") {
                storyans3 = "3";
            }
        }
    


//End 7

        if (storyans3 == "1") {
            sleep(fast);
            printf("You sigh, and say,'Okay. I'm done.'\n");
            sleep(normal);
            printf("You get out of your Cart-Mobile, and hug your family.\n");
            sleep(normal);
            printf("'I'm done with this life.'\n");
            sleep(fast);
            printf("As years pass, your industry thrives under your rule, and you and your familiy are happy.\n");
            sleep(slow);
            printf("However, the Trashy Kids grow even more powerful, with no one to stop them.\n");
            sleep(normal);
            printf("The Trashy Kids know there is no more Trashy Kid Fighter, and they take advantage of it.\n");
            sleep(slow);
            printf("So they decide to rob the richest person in the world...\n");
            sleep(normal);
            printf("You!\n");
            sleep(fast);
            printf("     ______________      \n");
            printf("    |              |     \n");    
            printf("    |              |     \n");     
            printf("    |     Huh?     |     \n");
            printf("    |              |     \n");
            printf("    |______  ______|     \n");
            printf(" -   -   /   /           \n");
            printf(" 0 __0  /  /             \n");
            printf(" )|__|(                  \n");
            printf(" 1    1                  \n");
            printf(" 1    1                  \n");
            printf(" 1    1                  \n");
            printf(" 1    1                  \n");
            printf(" 1    1                  \n");
            sleep(superslow);
            printf("Yes, you!\n");
            sleep(fast);
            printf(" -   -            \n");
            printf(" 0   0            \n");
            printf(" )___(                 \n");
            printf(" 1    1             \n");
            printf(" 1    1           \n");
            printf(" 1    1            \n");
            printf(" 1    1       \n");
            printf(" 1    1       \n");
            sleep(superslow);
            printf("     ______________       \n");
            printf("    |              |        \n");    
            printf("    |              |        \n");     
            printf("    |      Oh.     |      \n");
            printf("    |              |      \n");
            printf("    |______  ______|      \n");
            printf(" -   -   /   /           \n");
            printf(" 0 __0  /  /            \n");
            printf(" )|__|(                 \n");
            printf(" 1    1             \n");
            printf(" 1    1           \n");
            printf(" 1    1            \n");
            printf(" 1    1       \n");
            printf(" 1    1       \n");
            sleep(superslow);
            printf("They march over to your mansion, and trash it!\n");
            sleep(normal);
            printf("They capture you and your family, and take over your industry.\n");
            sleep(normal);
            printf("They make you work as slaves, and you are less than trash.\n");
            sleep(normal);
            printf("Your wife and kids leave you for %s to advance in power.\n", storyName2);
            sleep(normal);
            printf("The Trashy Kids take over the world, and rule with an iron fist.\n");
            sleep(normal);
            printf("After a few months, you die of exhaustion, starvation, and dehydration.\n");
            sleep(normal);
            printf("The End.\n");
        }

//End 8

        if (storyans3 == "2") {
            printf("You are so mad, humilated, you can't think.\n");
            sleep(normal);
            printf("You say,'Forget you guys! I wanna fight crime!'\n");
            sleep(normal);
            printf("With that, your family leaves you.\n");
            sleep(fast);
            printf("So filled with anger, the only thing left to do is to get revenge.\n");
            sleep(slow);
            printf("You go back into Trashy City, and are ready to clap some Trashy Kids.\n");
            sleep(normal);
            printf("As you enter the city, the Trashy Kids are waiting for you.\n");
            sleep(normal);
            printf("Without waiting for you to exit your Cart-Mobile, the Trashy Kids rush you!\n");
            sleep(slow);
            printf("They give you another clapping you won't forget anytime soon.\n");
            sleep(normal);
            printf("However, when they were beating you up, you threw a foil batrang in the air.\n");
            sleep(slow);
            printf("That batrang hit Trashy Kid %s in the forehead!\n", storyName2);
            sleep(normal);
            printf(" -  -                \n");
            printf(" +__+                \n");
            printf(")|__|(               \n");
            printf("1   1                \n");
            printf("1   1--------        \n");
            printf("1   1--------        \n");
            printf("1   1                \n");
            printf("1   1                \n");
            sleep(superslow);
            printf("The impact of the batrang and Trashy Kid %s makes a soundwave that shakes the whole city.\n", storyName2);
            sleep(slow);
            printf("Knowing that their leader got clapped, the Trashy Kids surrender.\n");
            sleep(normal);
            printf("The TCPD takes the city back, and your family comes back to you, knowing you saved the city.\n");
            sleep(slow);
            printf("You live happily ever after, as a crime fighter and the owner of %s-Industries.\n", storyName1);
            sleep(normal);
            printf("The End.\n");
            win=1;
        }

//End 9

        if (storyans3 == "3") {
            printf("You are so humilated, you can't think.\n");
            sleep(fast);
            printf("You say,'Forget you guys! I don't even like y'all!'\n");
            sleep(normal);
            printf("With that, you break your familys' hearts.\n");
            sleep(fast);
            printf("They leave you for trash, and you go off to Trashy City to find a new family.\n");
            sleep(slow);
            printf("You go to the bar, and find a promising family.\n");
            sleep(normal);
            printf("They look exactly the same as your previous family, but you ignore it.\n");
            sleep(slow);
            printf("The only difference is that their last name is Trash.\n");
            sleep(normal);
            printf("So you stay with them, and you fall asleep.\n");
            sleep(normal);
            printf("...\n");
            sleep(fast);
            printf("You wake up to find your new family...\n");
            sleep(normal);
            printf("standing next to Trashy Kid %s!\n", storyName2);
            sleep(normal);
            printf("Your new family is actually duplicates of your old family, except that they are Trashy Kids!\n");
            sleep(slow);
            printf("The Trashy Kids are planning to replace every non-Trashy Kid with a Trashy Kid clone, and want to take over the world\n");
            sleep(superslow);
            printf("And you can't do anything to stop it.\n");
            sleep(normal);
            printf("The Trashy Kids replace everyone with a Trashy Kid clone, including you!\n"); 
            sleep(slow);
            printf("]^--^              \n");
            printf("](+ +)             \n");
            printf("]  __              \n");
            printf("]     |            \n");
            printf("]     |            \n");
            printf("]     |            \n");
            sleep(superslow);
            printf("The Trashy Kids take over the world.\n");
            sleep(normal);
            printf("The End.\n");
        }
    }
}

//Farewell to the Player

void theEnd() {
    sleep(slow);
    printf("Well thats the end of your 'Choose Your Own Adventure' story! I hope you enjoyed your experience!\n");
    sleep(slow);
    if(win==0){
    printf("     ______________       \n");
    printf("    |              |        \n");    
    printf("    |  You lost.   |        \n");     
    printf("    |  Press F2    |      \n");
    printf("    |  to restart. |      \n");
    printf("    |______  ______|      \n");
    printf(" -   -   /   /           \n");
    printf(" 0 __0  /  /            \n");
    printf(" )|__|(                 \n");
    printf(" 1    1             \n");
    printf(" 1    1           \n");
    printf(" 1    1            \n");
    printf(" 1    1       \n");
    printf(" 1    1       \n");
}
    if(win==1){
    printf("     _______________________________       \n");
    printf("    |                               |      \n");    
    printf("    |  You won!    Special Option:  |      \n");     
    printf("    |  Press F2    Punch me in      |      \n");
    printf("    |  to restart. the face.        |      \n");
    printf("    |______  _______________________|      \n");
    printf(" -   -   /  /            \n");
    printf(" 0 __0  / /             \n");
    printf(" )|__|(                 \n");
    printf(" 1    1        1-      \n");
    printf(" 1    1        1 )     \n");
    printf(" 1    1       / /      \n");
    printf(" 1    1------  /       \n");
    printf(" 1     -------/        \n");
    sleep(fast);
    printf("Press 1 to punch me, or\nPress 2 to leave me alone.\n");
    scanf("%s", &endans);

    while(endans!="1" && endans!="2"){
        printf("Please choose 1 or 2.\n");
        scanf("%s", &tryAgainendans);
        if(tryAgainendans=="1"){
            endans="1";
        }
        if(tryAgainendans=="2"){
            endans="2";
        }
    }
    if(endans == "1") {
        printf("POW!\n");
        sleep(fast);
        printf("BAM!\n");
        sleep(fast);
        printf("THWACK!\n");
        sleep(slow);
        printf(" -  -                \n");
        printf(" +__+                \n");
        printf(")|__|(               \n");
        printf("1   1                \n");
        printf("1   1--------        \n");
        printf("1   1--------        \n");
        printf("1   1                \n");
        printf("1   1                \n");
        sleep(superslow);
        printf("     ______________       \n");
        printf("    |              |        \n");    
        printf("    |      Ow.     |        \n");     
        printf("    |  Press F2    |      \n");
        printf("    |  to restart. |      \n");
        printf("    |______  ______|      \n");
        printf("          / /                \n");
        printf("         //                 \n");
        sleep(slow);
    }
    if(endans == "2") {
        sleep(normal);
        printf("I'm ready\n");
        sleep(normal);
        printf(" -   -              \n");
        printf(" -   -             \n");
        printf(" ) __(                 \n");
        printf(" 1    1             \n");
        printf(" 1    1           \n");
        printf(" 1    1            \n");
        printf(" 1    1       \n");
        printf(" 1    1       \n");
        sleep(slow);
        printf("...\n");
        sleep(normal);
        printf("     ____________________________________\n");
        printf("    |                                    |        \n");    
        printf("    |  Thank you for sparing me.         |        \n");     
        printf("    |  Here's a secret cheat code:       |      \n");
        printf("    |  Use 'CHEAT' at the very beginning |                   \n");
        printf("    |  of the story to skip to the end   |      \n");
        printf("    |  Press F2 to restart.              |      \n");
        printf("    |_____    ___________________________|    \n");
        printf(" -   -   /   /           \n");
        printf(" 0 __0  /  /            \n");
        printf(" )|__|(                 \n");
        printf(" 1    1             \n");
        printf(" 1    1           \n");
        printf(" 1    1            \n");
        printf(" 1    1       \n");
        printf(" 1    1       \n");
    }
}
}



//Start Function

int main(){
    askuser();
    speedOfStory();
    welcome();
    cheatSheet();
    chooseNames();
    intro();
    optionLoop();
    option1();
    option2();
    option3();
    theEnd();
}
