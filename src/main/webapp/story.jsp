<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");

    Map<String, String> stories = new LinkedHashMap<>();
    Map<String, List<String>> genreMap = new LinkedHashMap<>();

    // Define genre-wise story titles
    genreMap.put("Drama", Arrays.asList("👑 I AM PRINCE NOT A HERO", "🧘 THE SILENCE TO GEAR UP MY LIFE"));
    genreMap.put("Comedy", Arrays.asList("💻 THE LAST WILL AND WI-FI PASSWORD"));
    genreMap.put("Tragedy", Arrays.asList("🌑 A DAY THAT I CAN NEVER FORGOT"));
    genreMap.put("Romance", Arrays.asList("💌 THE LAST LETTER FROM GRANDMA"));
    genreMap.put("Adventure", Arrays.asList("⚔️ THE SWORD OF FORGOTTEN TRUTHS"));
    genreMap.put("Horror", Arrays.asList("🕯️ WHISPERS IN THE WELL"));
    genreMap.put("Mystery/Thriller", Arrays.asList("🕯️ WHISPERS IN THE WELL", "🌑 A DAY THAT I CAN NEVER FORGOT", "🎭 THE LAST NIGHT"));
    genreMap.put("Science Fiction", Arrays.asList());
    genreMap.put("Fantasy", Arrays.asList("⚔️ THE SWORD OF FORGOTTEN TRUTHS"));
    genreMap.put("Historical Fiction", Arrays.asList("💌 THE LAST LETTER FROM GRANDMA"));
    genreMap.put("Crime/Detective", Arrays.asList("🌑 A DAY THAT I CAN NEVER FORGOT"));

    // Stories data
    stories.put("👑 I AM PRINCE NOT A HERO", 
    "I was born in the palace, with golden robes and jeweled crowns awaiting my name. From the very first day, everyone told me I was destined to be a hero—the savior, the leader, the perfect son of a perfect king.\n\nBut I never wanted to be a hero. I saw how the people outside the palace gates lived, struggled, and smiled in simplicity. I envied their freedom.\n\nSo I walked away. I took off the crown, shed the title, and disguised myself as one among the people. I worked in the fields, ate at the street stalls, and listened to stories from grandmothers who had nothing but memories.\n\nIn that life, I found myself. I helped a child get an education, I stood by a friend in grief, and I fought not with swords but with compassion. \n\nWhen the kingdom fell into despair, I returned—not as a prince on a white horse, but as a man who had lived the life of his people.\n\nThey called me a hero then. But I told them—I’m no hero. I’m just someone who finally chose to be human.\n\nI am a prince, not a hero. And that is enough.");

    stories.put("🌑 A DAY THAT I CAN NEVER FORGOT", 
    "It was a rainy Wednesday when everything changed.\n\nI was returning home late from work, drenched and frustrated, walking through the narrow shortcut lane behind the railway station — a path most people avoided after dark. The streetlights flickered. I could hear my own heartbeat above the rain.\n\nSuddenly, a loud thud echoed from a dark alley beside the old warehouse. I froze.\n\nA weak cry followed. My instincts screamed to run. But something stronger—curiosity or conscience—pulled me toward the sound.\n\nI slowly peeked around the corner.\n\nA man lay unconscious, bleeding from the head. Standing above him was a figure in a raincoat, holding what looked like a crowbar. The figure spotted me and bolted into the shadows. Without thinking, I chased.\n\nMy footsteps splashed through puddles. I could barely see. I turned a corner — and slipped.\n\nBy the time I got up, the figure was gone.\n\nI called the police immediately.\n\nWithin minutes, the area was swarming with sirens and flashing lights. I gave my statement, still shaking. The man who’d been attacked — Mr. Rajan — was a local journalist. The police found his phone in the alley, cracked but working. His latest message draft was open:\n\n“Tomorrow I publish everything. They won’t silence me anymore.”\n\nThe investigation moved fast. By the next morning, it was on every news channel: an attempted murder to silence a whistleblower. Apparently, Rajan had been compiling evidence about a corrupt construction magnate, Mr. Bhandari — someone powerful and feared.\n\nOver the next few days, I was pulled into the investigation. The figure I saw matched the description of a man named Vikram, Bhandari’s driver. He was soon arrested.\n\nCase closed? Not quite.\n\nTwo weeks later, while walking home, I found a USB stick in my mailbox. No note. Just the device. I plugged it into my laptop.\n\nThere were recordings — hours of them — where Vikram was speaking to someone. Not just taking orders. He was reporting back.\n\nHe was an undercover informant.\n\nMy stomach twisted.\n\nHe hadn't attacked Rajan. He had found him and was trying to save him. But when he saw me — a stranger — he panicked and ran. I had led the police to him.\n\nThe real attacker was still out there. And I had helped put an innocent man in jail.\n\nI turned in the USB. The truth exploded. Vikram was released. The real attacker — Bhandari’s head of security — was later arrested trying to flee the country.\n\nMr. Rajan survived and recovered. His story — and Vikram’s — made national headlines. And me?\n\nI was never the same.");

    stories.put("🧘 THE SILENCE TO GEAR UP MY LIFE", 
    "For most of my life, noise surrounded me — expectations, opinions, comparisons, trends, notifications, reels, likes, dislikes, and the never-ending pressure to \"become something.\"\n\nI was 19 when it all got too much.\n\nI had just failed a competitive exam everyone believed I’d crack. Friends moved on. Relatives whispered. My parents didn’t say much — maybe because they didn’t know what to say anymore. The world didn’t stop, but inside me, something did.\n\nSo I stopped everything too.\n\nNo social media. No late-night scrolling. No aimless wandering.\nI took a break not to escape, but to listen.\n\nIn that silence, I heard something powerful — my own voice.\nNot the voice that spoke to impress others. But the one that whispered what I truly wanted. It told me:\n\"You’ve got potential. But you're misplacing your energy. Not your dream — your direction needs fixing.\"\n\nFor the first time, I made a plan not because someone told me to, but because I chose it. I began learning small skills every day. I set micro goals. I read, worked out, and surrounded myself with people who fueled growth — not gossip.\n\nDays turned to months.\nNo flashy results. No trophies. But I became consistent. Focused. Stronger.\n\nThen came the opportunity I didn’t expect — an internship in a startup. I wasn’t the most qualified, but they said,\n\"We saw your effort and attitude. That’s rare.\"\n\nThat’s when I realized:\nSilence doesn’t mean nothing’s happening. It means you're preparing for something greater.");


    stories.put("⚔️ THE SWORD OF FORGOTTEN TRUTHS", 
    "In the kingdom of Eldarion, stories were no longer trusted. For centuries, the King’s decree had forbidden the telling of tales, especially those of the ancient world — for within those forgotten fables, truths more powerful than any army lay sleeping.\n\nEira, a blacksmith’s orphan daughter, had always felt different. While others feared the past, she was drawn to it. Every crack in stone walls, every symbol carved on rusted gates, felt like a whisper calling her name.\n\nOne stormy evening, while seeking shelter in the forest ruins of Darnmoor, she fell into a hidden chamber beneath the earth. There, resting atop a pedestal of stone, was a sword — unlike any she’d ever seen. Its blade shimmered not with steel but with strands of memory — shifting images dancing across its surface: battles, betrayals, and voices crying truths long buried.\n\nThe moment Eira touched the hilt, visions flooded her mind — not just of wars fought, but of the true history of Eldarion. She saw how the kingdom had been built on a lie, how knowledge had been erased, and how the sword had once belonged to the Truthkeeper, a warrior-scholar who vanished when truth was outlawed.\n\nBut Eira was no warrior.\n\nOr so she thought.\n\nChased by the King’s Truth Hunters — silent assassins trained to kill anyone who dared awaken the past — Eira fled. Along the way, she met others: a blind librarian who had memorized forbidden texts, a prince hiding in plain sight, and a beast who could speak only in forgotten riddles.\n\nWith each ally, the sword grew brighter. It fed not on violence but on belief — belief in truth, no matter how painful.\n\nIn the final confrontation, high atop the cliffs of Solmaron, Eira faced the King. But she did not strike him. Instead, she spoke. And the sword, recognizing her courage, unleashed its true power: it revealed the truth to all — not with blood, but with memory.\n\nThe people wept. The King fell. Not dead — but defeated by the truth.\n\nThe laws changed.\n\nStories returned.\n\nAnd the sword?\n\nIt vanished — until the next truth was forgotten.");

    stories.put("🕯️ WHISPERS IN THE WELL", 
    "🕯️ WHISPERS IN THE WELL\n" +
    "________________________________________\n" +
    "Episode-1. The Village With No Echo\n" +
    "Bhairavpur wasn’t on Google Maps.\n" +
    "A remote village in the eastern hills, it had no phone signals, no schools, and just one rule:\n" +
    "“Never speak near the well after dark.”\n" +
    "Aarav, a skeptical journalist from Delhi, arrived after receiving an anonymous letter that read:\n" +
    "“They say the well is haunted. But no one’s gone missing... not recently.”\n" +
    "His editor wanted superstition debunked.\n" +
    "Aarav just wanted a front-page story.\n" +
    "________________________________________\n" +
    "Episode-2. The Woman Who Knew Too Much\n" +
    "The villagers were quiet. Shifty-eyed. Most refused to talk.\n" +
    "Except for Meera, the daughter of the village priest, who whispered:\n" +
    "“The well remembers. It doesn't kill. It copies.”\n" +
    "She claimed her mother had disappeared years ago — but was seen again, standing silently by the well days later.\n" +
    "Except... she wouldn’t speak. Wouldn’t eat.\n" +
    "She only whispered.\n" +
    "That “copy” of her mother died days later, but not before whispering one sentence on her final breath:\n" +
    "“I’m still down there.”\n" +
    "________________________________________\n" +
    "Episode-3. The First Whisper\n" +
    "That night, Aarav couldn’t sleep.\n" +
    "The wind howled. The well stood at the center of the village like a black mouth.\n" +
    "Drawn to it by something he couldn’t explain, he stepped closer.\n" +
    "Then he heard it — his own voice, whispering from the bottom:\n" +
    "“Aarav... come see what you forgot...”\n" +
    "He froze. The voice was broken. Familiar.\n" +
    "And then, louder:\n" +
    "“You left him. You left your brother in the fire.”\n" +
    "His breath caught.\n" +
    "No one knew about that fire. No one.\n" +
    "________________________________________\n" +
    "Episode-4. The Descent\n" +
    "The next day, Aarav confronted Meera.\n" +
    "She told him, shaking:\n" +
    "“The well doesn’t show you ghosts. It shows you guilt.”\n" +
    "Those who listen too long eventually try to go down.\n" +
    "And those who go down?\n" +
    "“They either come back... wrong.\n" +
    "Or don’t come back at all.”\n" +
    "That night, Aarav snapped a rope to the pulley. Torch in hand, he climbed in.\n" +
    "________________________________________\n" +
    "Episode-5. Below\n" +
    "Inside the well was a tunnel — slick, cold, alive.\n" +
    "His torch flickered. His voice echoed in whispers, but with a delay — as if something were repeating his words seconds after he spoke them.\n" +
    "He reached a chamber.\n" +
    "At the center: a pool of still, black water.\n" +
    "On the surface: his reflection. But not exactly.\n" +
    "The copy smiled wider. Blinked slower.\n" +
    "Then whispered:\n" +
    "“You can go back. But only one of us leaves.”\n" +
    "________________________________________\n" +
    "Episode-6. What Came Back\n" +
    "The next morning, Aarav returned.\n" +
    "The villagers found him standing silently near the well.\n" +
    "He was pale. Calm. Smiling strangely.\n" +
    "He didn’t speak for two days.\n" +
    "Then, during a gathering, someone joked:\n" +
    "“Did the ghosts in the well scare you?”\n" +
    "Aarav turned, slowly. His smile never faded.\n" +
    "“No,” he whispered.\n" +
    "“I’m just waiting. Waiting for you to listen.”\n" +
    "That night, the first villager disappeared in over a decade.\n" +
    "________________________________________\n" +
    "Episode-7. The Ending That Loops\n" +
    "No one remembers who sent the letter to Aarav.\n" +
    "But new letters have started arriving in nearby towns.\n" +
    "All handwritten. All ending the same way:\n" +
    "“The well doesn't kill. It copies.\n" +
    "And one day, it won't need to whisper.\n" +
    "It’ll already be you.”");

    stories.put("💌 THE LAST LETTER FROM GRANDMA",
    "💌 THE LAST LETTER FROM GRANDMA\n" +
    "________________________________________\n" +
    "Episode-1. The Funeral\n" + 
    "When Grandma Meera passed away at 87, the entire Sharma family returned to the old ancestral home in Darjeeling. The house, perched on a misty hillside, still smelled like cardamom tea and old books.\n" +
    "Riya, her 18-year-old granddaughter, hadn’t seen Grandma in a year — not since their falling out over Riya's choice to pursue art instead of medicine.\n" +
    "Grandma had always been loving… but strict. And now she was gone. No goodbyes. No closure.\n" +
    "Or so Riya thought.\n" +
    "________________________________________\n" +
    "Episode-2. The Letter Box\n" +
    "On the third day after the funeral, while helping clean the attic, Riya found a small wooden box beneath Grandma’s sewing cabinet. The lock was rusted shut, but taped to the bottom was a note in Grandma’s spidery handwriting:\n" +
    "\"For Riya. When you're ready to listen — truly listen.\"\n" +
    "Inside the box: A single letter, sealed in wax with a pressed marigold on top.\n" +
    "And beneath it, a stack of old, yellowed envelopes, each labeled with a year — from 1960 to 2024.\n" +
    "________________________________________\n" +
    "Episode-3. The Last Letter\n" +
    "Riya opened the letter addressed to her.\n" +
    "It read:\n" +
    "My dearest Riya,\n" +
    "If you're reading this, it means I’m no longer there to frown at your messy sketchbooks or hide your paintbrushes. I was wrong, Riya. So wrong. I tried to mold you into someone the world would approve of. But the truth is, I was just scared. Scared that your dreams would break you like mine once broke me.\n" +
    "Under the stairs, you’ll find a trunk. Inside it — the art I never showed anyone. Not even your mother.\n" +
    "Your talent doesn’t skip generations. It’s been hiding in this house for decades.\n" +
    "Now go. Create. And forgive me if you can.\n" +
    "With all the love I never said out loud,\n" +
    "Grandma Meera\n" +
    "________________________________________\n" +
    "Episode-4. The Secret Trunk\n" +
    "Under the wooden stairs, Riya found a dusty trunk.\n" +
    "Inside were oil paintings, handmade sketchbooks, and even a small award certificate for a competition won in 1958.\n" +
    "Her grandmother had been an artist — and no one knew.\n" +
    "The same woman who told her to “focus on biology” had once painted sunsets and sorrow into canvas.\n" +
    "Tears rolled down Riya’s cheeks.\n" +
    "Not just for the grandmother she lost — But for the woman she had never truly known.\n" +
    "________________________________________\n" +
    "Episode-5. A New Beginning\n" +
    "A few months later, Riya hosted her first gallery show in Kolkata.\n" +
    "At the center was a piece titled \"Meera's Silence\" — a portrait of her grandmother holding a brush, but with her lips stitched shut.\n" +
    "Beside it, framed in gold, was the last letter.\n" +
    "Visitors cried. Some clapped.\n" +
    "Riya smiled.\n" +
    "Grandma was gone — but her voice was finally being heard.");

    stories.put("💻 THE LAST WILL AND WI-FI PASSWORD",
    "💻 THE LAST WILL AND WI-FI PASSWORD\n" +
    "________________________________________\n" +
    "Episode-1. The Funeral & the Free Wi-Fi\n" +
    "When eccentric 82-year-old Mr. Kishore Malhotra passed away, his extended family of 11 gathered at his ancestral bungalow in Shimla.\n" +
    "The funeral was peaceful. The post-funeral lunch was not.\n" +
    "Arguments broke out over the will:\n" +
    "“He promised me the car!”\n" +
    "“No! He said I’d get the house!”\n" +
    "“Wait... there’s a will?”\n" +
    "Turns out — yes, there is.\n" +
    "A digital one.\n" +
    "Stored on Kishore’s laptop, locked with a single password.\n" +
    "They couldn’t open it.\n" +
    "The twist? Kishore had taped a handwritten note to the laptop lid:\n" +
    "“Whoever truly knew me... will know the password.”\n" +
    "And at the bottom:\n" +
    "P.S. The Wi-Fi is off until you figure it out.\n" +
    "________________________________________\n" +
    "Episode-2. Operation Guess-the-Password\n" +
    "The family formed a \"Password Task Force\", led by the overly confident cousin Sameer, who had once Googled \\\"How to hack Facebook.\\\"\n" +
    "Everyone had ideas:\n" +
    "\"Kishore123\" – Wrong.\n" +
    "\"ILoveCricket\" – Nope.\n" +
    "\"PinkyTheDog\" – (That was the neighbor’s dog.)\n" +
    "\"MangoPickle1965\" – Close, but no.\n" +
    "By night, they’d tried over 400 guesses. The laptop was now threatening to lock them out permanently.\n" +
    "Meanwhile, tempers flared.\n" +
    "Aunties argued. Cousins blamed each other.\n" +
    "And everyone kept asking the neighbor for Wi-Fi — whose password, ironically, was “GetYourOwn”.\n" +
    "________________________________________\n" +
    "Episode-3. The Flashbacks Begin\n" +
    "With nothing working, they decided to do something radical:\n" +
    "Talk about Grandpa.\n" +
    "Uncles recalled old stories.\n" +
    "* How he used to win crossword contests.\n" +
    "* How he’d hide sweets in the drawer labeled “Tax Receipts.”\n" +
    "* How he refused to buy a smartphone, saying, “If I need a screen, I’ll just stare out the window.”\n" +
    "Then Rhea, the youngest granddaughter, whispered:\n" +
    "\"Didn’t Dadu always say the most valuable things were ‘invisible’?\"\n" +
    "They stared at her.\n" +
    "Then at the laptop.\n" +
    "Then shrugged.\n" +
    "________________________________________\n" +
    "Episode-4. The Secrets Start Unfolding\n" +
    "With Rhea’s curiosity leading, they began searching the house for clues.\n" +
    "They found:\n" +
    "* A dusty diary filled with poems — written for Grandma.\n" +
    "* A locked drawer full of handwritten apology letters — never sent.\n" +
    "* A photo of Grandpa as a young man... standing next to someone no one recognized.\n" +
    "Turns out, Grandpa had been engaged once before marrying Grandma. The engagement broke — but he never spoke about it.\n" +
    "This sparked the biggest argument yet:\n" +
    "\"He had a secret fiancée?!\"\n" +
    "\"What if she’s in the will?\"\n" +
    "But Rhea was quiet. She kept reading the poems.\n" +
    "________________________________________\n" +
    "Episode-5. Rhea Cracks the Code\n" +
    "Late at night, while everyone was snoring or fake-snoring in protest, Rhea tiptoed to the laptop.\n" +
    "She stared at the note again:\n" +
    "\"Whoever truly knew me... will know the password.\"\n" +
    "She thought back to Grandpa reading stories, always ending with the same line: “The greatest treasure is the thing we forget to say.\n" +
    "Her hands trembled as she typed: \"ImSorry2023\"\n" +
    "The laptop unlocked.\n" +
    "________________________________________\n" +
    "Episode-6. The Will\n" +
    "The will wasn’t what they expected.\n" +
    "No lists of jewelry, land, or gold.\n" +
    "Just a video message from Grandpa, smiling warmly:\n" +
    "\"If you’re watching this, I’m either dead or in Goa pretending to be.\"\n" +
    "\"Jokes aside — I loved you all, but I saw how money always tore people apart. So I left you something better.\"\n" +
    "He left:\n" +
    "* The house, to be turned into a community library.\n" +
    "* The savings, donated to a girls’ education fund in the village.\n" +
    "* Personal letters to each family member, including ones filled with apologies, encouragement, and awkward jokes.\n" +
    "And one final line: \"P.S. The Wi-Fi password is: ForgiveMe2023\"\n" +
    "________________________________________\n" +
    "Episode-7. The Last Laugh and a New Start\n" +
    "The room was silent.\n" +
    "Then Sameer muttered:\n" +
    "\"So basically... Grandpa Rickrolled us into healing?\"\n" +
    "Everyone laughed. That night, they stayed up reading his letters, sharing memories, and actually listening to each other.\n" +
    "No more shouting. Just warm lights, laughter, and — finally — Wi-Fi.\n" +
    "And Rhea? She started a blog called \"Letters & Passwords\", helping families document stories before it’s too late.\n" +
    "Because sometimes, the best inheritance isn’t money — It’s understanding.");

    stories.put("🎭 THE LAST NIGHT",
    "🎭 THE LAST NIGHT\n" +
    "________________________________________\n" +
    "Episode-1. The Day\n" +
    "The day repeats again.\n" +
    "Just like every other morning, my parents went for a walk. I stayed home — lazy, relieved, and ready to enjoy a well-earned break. My Metric exams were finally over. I had the whole day ahead to breathe, play games, and just... exist, without pressure.\n" +
    "The clock hit 9:00 AM. I was still in bed, scrolling, smiling at memes, and imagining how I’d spend the rest of the vacation. I had no idea the day would twist into something that would haunt me for the rest of my life.\n" +
    "By 10:30 AM, my smile faded.\n" +
    "They always returned by 9:15 AM — 9:30, max. But today? Nothing. No call. No message. Just silence. A dangerous kind of silence. The kind that echoes.\n" +
    "I paced around the house. Checked my phone. No notifications. I called Dad. Switched off. I called Mom. Ringing. Then — voicemail.\n" +
    "My chest tightened.\n" +
    "And then — my phone rang.\n" +
    "It was an unknown number. No name. No city code. Just digits.\n" +
    "I picked up.\n" +
    "\"Hello?\"\n" +
    "Static. Then a voice.\n" +
    "A deep, cold voice.\n" +
    "\"Your parents won't come home... unless you do exactly as I say.\"\n" +
    "I froze.\n" +
    "\"What? Who is this?! Where are my parents?\"\n" +
    "\"Wrong question,\" the voice said. \"Ask yourself if you’re brave enough to face the truth.\"\n" +
    "The call disconnected.\n" +
    "I stared at my phone. My reflection on the black screen looked like a stranger — pale, shaking, terrified.\n" +
    "I didn’t call the police. I don’t know why. Maybe it was fear. Maybe curiosity. Maybe... it was the voice. Something told me I had to play this out — alone.\n" +
    "Another message came in, this time a picture.\n" +
    "It was my parents, tied to two chairs in a dark room — eyes open, mouths taped.\n" +
    "My breath caught. I couldn’t move.\n" +
    "Then another message:\n" +
    "\"Come alone. 3:00 PM. Old Jain Warehouse. Or they disappear forever.\"\n" +
    "The next few hours passed like sand through clenched fists.\n" +
    "I packed a bag — not sure what to take, but I shoved in a flashlight, a small pocket knife I once bought at a flea market, and a half-charged power bank.\n" +
    "At 2:30 PM, I left. Alone. No police. No friends.\n" +
    "The warehouse was about 25 minutes away. I cycled, heart pounding, sweat dripping down my neck though it wasn’t even hot.\n" +
    "When I reached the gate, I saw it — wide open, as if inviting me in.\n" +
    "Inside was darkness.\n" +
    "I stepped forward.\n" +
    "The door slammed shut behind me.\n" +
    "I turned around. Locked.\n" +
    "A light flickered on. A single bulb, hanging over a chair.\n" +
    "On it — a phone.\n" +
    "It rang.\n" +
    "I answered.\n" +
    "The same voice. Calm. Mocking.\n" +
    "\"Welcome, hero. Let’s play.\"\n" +
    "Over the next hour, he gave me instructions. Told me to go room by room, searching for clues. Riddles that would supposedly lead me to my parents. Every room had a trap. A broken glass floor, a swinging axe (seriously), a room filled with smoke. It was like a twisted game — like the movies.\n" +
    "But this wasn’t a game. This was real.\n" +
    "Finally, I reached the last door. My hands were bleeding from a nail trap in the previous room. My shirt was torn. My legs shaking.\n" +
    "I opened the door. There they were. My parents — tied up. Alive.\n" +
    "I rushed forward.\n" +
    "Then I heard it.\n" +
    "Clap. Clap. Clap.\n" +
    "A man stood behind me — face masked in black, only his eyes visible.\n" +
    "\"You’re brave,\" he said. \"I didn’t expect that.\"\n" +
    "I didn’t speak.\n" +
    "\"I was testing you,\" he continued. \"You passed.\"\n" +
    "He dropped a key at my feet.\n" +
    "\"Unlock them. And go. This was... your final night as a child. You’re something more now.\"\n" +
    "He disappeared into the shadows.\n" +
    "I grabbed the key, untied my parents. They were weak, scared, but okay. They kept asking who the man was. I had no answers.\n" +
    "We reached home around 11:15 PM.\n" +
    "But I didn’t sleep. I couldn’t.\n" +
    "Every sound made me jump. Every shadow outside the window made me wonder — was he still watching?\n" +
    "I didn’t tell the police. Not yet.\n" +
    "The man never called again.\n" +
    "But I know he’s out there.\n" +
    "And I know this wasn’t random.\n" +
    "Something about the way he spoke… as if he knew me.\n" +
    "As if he’d been watching me for a long, long time.\n" +
    "That was the last night I ever felt normal.\n" +
    "And the first night… I knew what fear truly tasted like.\n" +
    "________________________________________\n" +
    "Episode-2. The Stranger with My Face\n" +
    "It’s been six days since that night.\n" +
    "I hadn’t left the house since. Not for milk. Not for air. Not even for sunlight.\n" +
    "My parents pretended nothing had happened — as if some invisible force wiped their memories clean.\n" +
    "But I knew better.\n" +
    "I saw the bruises. The nervous blinking. The locked doors at night.\n" +
    "And then it began again.\n" +
    "1:00 AM. My phone buzzed.\n" +
    "It was a photo. My face.\n" +
    "But not a selfie. Not from my phone.\n" +
    "It was me… sleeping. Last night. Curtains closed. Lights off.\n" +
    "Taken from inside my room.\n" +
    "I dropped my phone.\n" +
    "I didn’t scream.\n" +
    "I didn’t even blink.\n" +
    "I grabbed a kitchen knife and tiptoed to my room — it was empty. The windows were locked. The air was thick. Someone had been here.\n" +
    "Next morning, I installed security cameras — front door, back door, window, even inside my room. Everything.\n" +
    "By nightfall, I was wide awake, eyes glued to the camera feed on my laptop screen.\n" +
    "At 3:17 AM, the living room camera glitched.\n" +
    "Then static.\n" +
    "Then… someone waved at the lens.\n" +
    "Me.\n" +
    "It was me. On the screen. Waving. In the living room. While I was upstairs.\n" +
    "I ran down with the knife.\n" +
    "But no one was there.\n" +
    "Only a note on the couch:\n" +
    "\"You should smile more. It suits you.\"\n" +
    "The next day, I walked to school — not for class, that was over. Just to feel something familiar. Maybe pick up my mark sheet. Maybe see a friend. Maybe just... escape the silence at home.\n" +
    "Big mistake.\n" +
    "As I walked in, people stared. Whispers followed me.\n" +
    "\"Didn’t expect him to show up…\"\n" +
    "\"Is he not… arrested yet?\"\n" +
    "\"Psychopath.\"\n" +
    "I rushed to the notice board. Someone had pasted a photo of me in the principal’s office.\n" +
    "Slamming a chair. Yelling.\n" +
    "Screaming \"I’ll burn this place down!\"\n" +
    "But I was never there.\n" +
    "Someone used my face.\n" +
    "Someone… who looked like me. Spoke like me. Moved like me.\n" +
    "Twist #1: The Twin Theory\n" +
    "That night, I asked my parents something I never thought I’d have to:\n" +
    "\"Did I have a twin?\"\n" +
    "They froze.\n" +
    "Then Mom walked away. Dad looked down and whispered:\n" +
    "\"You weren’t supposed to know.\"\n" +
    "Next Morning\n" +
    "A letter arrived.\n" +
    "No sender. Just:\n" +
    "\"You met Me last week.\n" +
    "But you haven’t met Him yet.\n" +
    "He’s what you’d be if you were raised in fire, not comfort.\n" +
    "Meet me. Midnight. Same warehouse.\n" +
    "— M\"\n" +
    "I knew what I had to do.\n" +
    "Grab the knife.\n" +
    "Grab the truth.\n" +
    "________________________________________\n" +
    "Episode-3. The Warehouse Reunion\n" +
    "11:48 PM — The Return\n" +
    "I reached the warehouse early.\n" +
    "This time I brought more than a knife.\n" +
    "I had a pocket flashlight, a Bluetooth mic taped to my chest, and an old walkie-talkie tuned to my friend Akshay, waiting a few streets away with police on speed dial.\n" +
    "I wasn't alone.\n" +
    "Or so I thought.\n" +
    "The warehouse door creaked open on its own.\n" +
    "Same as last time.\n" +
    "But inside — no traps. No riddles.\n" +
    "Just a mirror, standing in the middle of the dark hall.\n" +
    "And behind the mirror — a shadow.\n" +
    "I moved closer. The mirror was old, cracked slightly at the edges.\n" +
    "And suddenly — the shadow stepped forward.\n" +
    "It was me.\n" +
    "Same face.\n" +
    "Same voice.\n" +
    "Same clothes I wore… a week ago.\n" +
    "But his eyes — not mine.\n" +
    "Too still.\n" +
    "Too cold.\n" +
    "Too… amused.\n" +
    "\"Nice of you to come. I was beginning to think you weren’t brave anymore.\"\n" +
    "My voice.\n" +
    "But not my tone.\n" +
    "He walked around me. Casually.\n" +
    "\"You see, I was the better one. But they didn’t pick me. Your parents did. They picked you.\"\n" +
    "He smiled.\n" +
    "\"So they threw me away.\"\n" +
    "I gasped.\n" +
    "\"You’re lying.\"\n" +
    "\"Oh? Then why is your birth certificate copy... torn in half? Why do your parents have only one baby photo?\"\n" +
    "He threw a folder at my feet.\n" +
    "Inside - pictures. Ultrasound scans. Notes. Two heartbeats. Two names.\n" +
    "Only one crossed out.\n" +
    "\"Manav - kept.\"\n" +
    "\"Mithya - gone.\"\n" +
    "My head spun.\n" +
    "\"They left me in a shelter. Thought I’d die. But I didn’t. I learned things there. Learned to survive. To trick. To mimic. And now... I’ve come back."\n" +
    "He leaned closer, eyes burning.\n" +
    "\"To take back the life that was stolen from me.\"\n" +
"\n" +
    "Sudden Screech. Flashlight dies.\n" +
    "Darkness.\n" +
    "I reached for my pocket.\n" +
    "The walkie-talkie buzzed.\n" +
    "\"Hello? Hello?! Radhe, are you there?! Say something!\"\n" +
    "I tried to respond - no use. Static.\n" +
    "Then a voice whispered behind me:\n" +
    "\"Let’s play again... but this time, you’re the one tied to the chair.\"\n" +
    "Before I could turn - something hit the back of my head.\n" +
"\n" +
    "1:10 AM - Tied to the Truth\n" +
    "I woke up, hands tied, flashlight flickering weakly on the ground.\n" +
    "He sat in front of me, calmly sipping a cola.\n" +
    "\"You like jokes, right? Want to hear a dark one?\"\n" +
    "I didn’t respond.\n" +
    "\"Why did the fake brother cross the line?\"\n" +
    "He leaned close.\n" +
    "\"Because he wanted to erase the real one.\"\n" +
    "He laughed.\n" +
    "A deep, painful, bitter laugh.\n" +
    "Then he showed me his phone.\n" +
    "A video.\n" +
    "My parents - again.\n" +
    "But this time, they were in my room. Tied. Gagged. With me - or him - standing behind them, holding a candle.\n" +
    "\"One move from you. One call to the police. And your room becomes a grave.\"\n" +
    "Twist #2: The Choice\n" +
    "He placed two things in front of me.\n" +
    "A USB drive and a phone.\n" +
    "\"The USB holds a video confession. Fake, of course. Looks like you confessing to hurting your parents.\"\n" +
    "\"The phone? One button press and they live. But I walk away with your identity.\"\n" +
    "He smiled wide.\n" +
    "\"So? Do you want to be the hero... or keep pretending you’re the real one?\"\n" +
    "What I Did\n" +
    "I stared at the USB. Then at the phone.\n" +
    "My hands were shaking.\n" +
    "I said nothing.\n" +
    "Instead, I leaned forward.\n" +
    "And did the one thing he didn’t expect.\n" +
    "I laughed.\n" +
    "A laugh so loud, so absurd, so unhinged... even he looked confused.\n" +
    "\"You okay, brother?\"\n" +
    "\"Yeah,\" I said, still laughing. \"Because you forgot one thing.\"\n" +
    "He tilted his head.\n" +
    "\"What?\"\n" +
    "\"The camera behind you.\"\n" +
    "He turned.\n" +
    "FLASH.\n" +
    "Akshay had snuck in, through the skylight.\n" +
    "He had been filming everything. The voice. The face. The confession.\n" +
    "The cops? Already outside.\n" +
    "I headbutted him before he could run - painful, but satisfying.\n" +
"\n" +
    "2:05 AM - Silence Returns\n" +
    "He was taken.\n" +
    "Real name unknown.\n" +
    "But one thing is clear:\n" +
    "He wasn’t finished.\n" +
    "And neither was I.\n" +
    "________________________________________\n" +
    "Episode 4. The Final Joke\n" +
"\n" +
"7:55 AM - The Joke That Shouldn’t Have Worked\n" +
"Monday morning. Special school gathering.\n" +
"They’d called everyone back - said it was for \"mark sheet distribution.\" Some said it was to \"clear up rumors.\" Either way, I went. Regret followed.\n" +
"On the projector screen behind the principal - something flickered.\n" +
"Then flashed.\n" +
"Then a meme appeared.\n" +
"Me, photoshopped in front of a grave, holding a bouquet that said:\n" +
"“RIP Sir Ramesh - You’ll Not Be Missed.”\n" +
"The whole room burst into laughter.\n" +
"Students couldn’t breathe.\n" +
"Even the teachers chuckled... until they realized something was wrong.\n" +
"Because -\n" +
"Sir Ramesh, our Chemistry teacher, was actually missing.\n" +
"\n" +
"9:00 AM - The Investigation Begins\n" +
"Everyone thought it was a prank.\n" +
"Until police walked into the school.\n" +
"Sir Ramesh hadn’t been home since Saturday.\n" +
"And the meme?\n" +
"It was sent from an account under my name.\n" +
"IP traced - school computer lab.\n" +
"Print logs - only one student had printed that meme yesterday.\n" +
"Me.\n" +
"But I never even came to school that weekend.\n" +
"Or did I?\n" +
"The security footage - corrupted.\n" +
"Only one frame visible:\n" +
"Me.\n" +
"Walking into school.\n" +
"Smiling.\n" +
"\n" +
"10:12 AM - The Missing File\n" +
"Principal Mamta ma’am called me in.\n" +
"She looked scared. Like truly scared.\n" +
"\"Radhe... are you doing all this? Or is this some game someone’s playing?\"\n" +
"I didn’t answer.\n" +
"Because even I wasn’t sure anymore.\n" +
"I walked out of the office.\n" +
"And heard someone whisper behind me.\n" +
"A voice I knew too well.\n" +
"\"The difference between a prank and a crime is one heartbeat.\"\n" +
"I turned. No one.\n" +
"Just a sticky note on my locker.\n" +
"It read:\n" +
"“You laughed too soon.\n" +
" He didn’t.”\n" +
"\n" +
"11:45 AM - The Discovery\n" +
"Police found Sir Ramesh’s ID card in the Chemistry lab sink.\n" +
"Soaked in what looked like blood.\n" +
"But it wasn’t blood.\n" +
"It was ketchup.\n" +
"Next to it?\n" +
"A phone.\n" +
"On it - a video.\n" +
"Sir Ramesh... tied to a chair.\n" +
"Begging.\n" +
"And behind him?\n" +
"Someone dancing in a clown costume.\n" +
"Wearing my face.\n" +
"\n" +
"Twist #3 - The Laughing Tragedy\n" +
"The video suddenly shifted to you.\n" +
"Yes. You.\n" +
"A close-up of your face. Whispering:\n" +
"\"This was supposed to be funny.\n" +
" But now... everyone dies laughing.”\n" +
"\n" +
"1:00 PM - School Lockdown\n" +
"Police locked the gates.\n" +
"Students were sent to the auditorium.\n" +
"No one allowed out.\n" +
"The lights flickered.\n" +
"Screams echoed.\n" +
"And on the main projector - the clown returned.\n" +
"Juggling.\n" +
"Laughing.\n" +
"Then... pointing.\n" +
"\"Find him before 2:00 PM.\n" +
" Or you’ll all meet Sir Ramesh.\n" +
" I suggest you RUN.”\n" +
"Chaos.\n" +
"Everyone stood.\n" +
"Started searching.\n" +
"Some looking for Sir Ramesh.\n" +
"Some... looking for you.\n" +
"________________________________________\n" +
"🪓 Episode 5: The Joke Room\n" +
"\n" +
"1:05 PM - The Trapdoor\n" +
"While the students scatter across classrooms and corridors screaming your name, you slip into the backstage of the auditorium.\n" +
"You remembered a rumor from a janitor:\n" +
"\"There’s a trapdoor under the stage... from the days when this building was a freedom fighter safe house.\"\n" +
"You pull back the carpet. Wooden planks.\n" +
"You knock.\n" +
"Hollow.\n" +
"You wedge your knife between the cracks and pry it open.\n" +
"It reveals a tight staircase descending into darkness.\n" +
"You go down.\n" +
"Each step creaks.\n" +
"The deeper you go, the colder it gets.\n" +
"\n" +
"1:10 PM - The Underground\n" +
"You reach a stone corridor.\n" +
"Old walls.\n" +
"Peeling bricks.\n" +
"Graffiti in chalk.\n" +
"Some names.\n" +
"Some symbols.\n" +
"And one thing etched in blood red:\n" +
"\"THE ROOM THAT LAUGHS BACK.\"\n" +
"You push forward.\n" +
"A door. Metal. Rusted.\n" +
"It’s half open.\n" +
"You enter.\n" +
"\n" +
"1:13 PM - The Joke Room\n" +
"It’s not a joke.\n" +
"It’s a nightmare.\n" +
"Mannequins wearing school uniforms.\n" +
"Clown wigs on every head.\n" +
"The walls painted in red lipstick - huge smiles drawn crudely.\n" +
"At the center - a chair.\n" +
"Sir Ramesh.\n" +
"Tied. Eyes open. Gagged. Alive.\n" +
"You rush forward. Untie the gag.\n" +
"\"D-Don’t... Don’t trust-\"\n" +
"You hear a click behind you.\n" +
"A TV turns on.\n" +
"The same clown. But not dancing.\n" +
"Just... sitting.\n" +
"\"You came. Good. This is the part where you laugh.\"\n" +
"The clown stands.\n" +
"And removes the mask.\n" +
"It’s not Mithya.\n" +
"It’s not your twin.\n" +
"It’s a student.\n" +
"Your classmate - Aryan Desai.\n" +
"The class clown. The one who always joked about bombs in the lab. The one who once lit the staffroom curtain on fire as a prank.\n" +
"\"Radhe took the credit for being clever. But I was always the funniest. The chaos king.\"\n" +
"He smiles at the camera.\n" +
"\"So I joined Mithya. Became his puppet. Or...maybe he became mine.\"\n" +
"\n" +
"Suddenly, the mannequins move.\n" +
"They're not mannequins.\n" +
"They're students.\n" +
"Tied. Gagged. Dressed up.\n" +
"You back away.\n" +
"Sir Ramesh screams something. You can't hear.\n" +
"\n" +
"Twist #4 - The Explosion Gag\n" +
"A countdown starts on the screen.\n" +
"00:01:30\n" +
"A box in the corner opens. Inside - a birthday cake. With candles. And wires.\n" +
"The final joke is a bomb.\n" +
"\"Happy birthday, Radhe,"\" Aryan says.\n" +
"\"Blow the candles, or everything goes up.\"\n" +
"________________________________________\n" +
"🪞 Episode 6: Laughter Before Silence\n" +
"1:13 PM - The Joke Room (Continued)\n" +
"The countdown on the screen pulses.\n" +
"00:01:30\n" +
"00:01:29\n" +
"00:01:28\n" +
"Aryan tilts his head, watching you with wide, unblinking eyes.\n" +
"Sir Ramesh thrashes in the chair beside the cake — eyes bulging, muffled screams pouring from his gag.\n" +
"The students - the ones you thought were mannequins — twitch and groan. One girl is crying silently. Another’s head hangs limp.\n" +
"The room is spinning. No exits. No windows. Only the TV, the tied bodies, and that cursed cake.\n" +
"Candles flicker atop it like a joke from hell.\n" +
"00:01:12\n" +
"You dart to the bomb. Wires. Red. Blue. Yellow.\n" +
"You remember a science club demo. Sir Ramesh once said:\n" +
"\"The blue wire is usually the trigger. Never mess with the blue.\"\n" +
"But this is Aryan’s joke. That means everything is backward.\n" +
"00:00:48\n" +
"Your hands tremble. You reach for the blue wire - then hesitate.\n" +
"Aryan’s voice echoes from the TV:\n" +
"\"Funny, isn’t it? How everyone thinks there's always a right answer. A correct wire. A correct Radhe.\"\n" +
"00:00:32\n" +
"You yank the gag off Sir Ramesh.\n" +
"He gasps: \"They’re real. The kids-some of them are real.\"\n" +
"00:00:25\n" +
"You glance around. One girl looks too still. Too pale.\n" +
"She’s not acting.\n" +
"Your breath catches.\n" +
"00:00:18\n" +
"You grip the red wire.\n" +
"Sir Ramesh whispers, \"Do it. End it.\"\n" +
"00:00:10\n" +
"You close your eyes-\n" +
"-and cut the red wire.\n" +
"Silence.\n" +
"Nothing happens.\n" +
"Then...\n" +
"PSSSSSHHHHH\n" +
"The cake explodes in a blast of glitter and confetti.\n" +
"A speaker crackles.\n" +
"\"Just kidding. No bomb. But the guilt? That’s real.\"\n" +
"You fall back, gasping. Sir Ramesh slumps unconscious.\n" +
"Then you see it:\n" +
"A side panel opens.\n" +
"Aryan is gone.\n" +
"The tied-up girl - the one you noticed earlier - isn’t breathing.\n" +
"And the door behind you creaks open on its own.\n" +
"You step out into the dark corridor.\n" +
"But something is wrong.\n" +
"Far away, you hear sirens. A teacher’s voice yelling your name.\n" +
"You reach for your phone - it buzzes.\n" +
"New Video Uploaded: \"Radhe Laughs As Bomb Ticks Down\"\n" +
"The thumbnail shows you beside the cake, mouth slightly open. But you didn’t laugh.\n" +
"Then you hear it.\n" +
"The laugh.\n" +
"Your voice.\n" +
"But it’s not yours.\n" +
"It's Mithya.\n" +
"\n" +
"Ending: \"The Price of the Punchline\"\n" +
"By the time you emerge from the underground, the school is in chaos.\n" +
"Aryan is gone.\n" +
"Sir Ramesh is hospitalized — but alive.\n" +
"One student didn’t survive.\n" +
"And the worst part?\n" +
"You’re being blamed.\n" +
"You were caught on camera.\n" +
"You were the last number dialed from Sir Ramesh’s phone.\n" +
"Your voice - no, Mithya’s laugh in your voice - is echoing across the internet.\n" +
"At home.\n" +
"At school.\n" +
"Online.\n" +
"You’ve been replaced.\n" +
"By a joke that never ends.\n" +
"And now... you are the punchline\n" +
"________________________________________\n" +
"🏛️ Part 7: “The Institution”\n" +
"\n" +
"1:33 PM - 3 Days Later\n" +
"You’re not at school anymore.\n" +
"You’re at Srishti Institute for Juvenile Evaluation - a sterile building wrapped in white paint and barbed logic.\n" +
"The gates are tall. The nurses don’t blink.\n" +
"And every door locks from the outside.\n" +
"\n" +
"A report was filed: \"Disturbing behavior. Found at site of prank-based trauma. Possible schizophrenia. Threat to students.\"\n" +
"Aryan? Nowhere to be found.\n" +
"Sir Ramesh? \"Not in a condition to testify.\"\n" +
"Your parents? \"Temporarily restricted from contact, for your safety.\"\n" +
"\n" +
"You sit in a room with one mirror, one bulb, and a man in a white coat.\n" +
"\"Radhe,\" he says, flipping a page, \"You claim this ‘Mithya’ is framing you. But there’s no record of him. No student. No staff. No digital trace.\"\n" +
"\n" +
"You clench your fists.\n" +
"You saw him.\n" +
"You’ve been seeing him since that mirror cracked.\n" +
"\n" +
"The doctor leans forward.\n" +
"\"Tell me more about this ‘clown room.’ About the voices. The bomb.\"\n" +
"\n" +
"You sigh.\n" +
"\"There was no bomb. But someone did die.\"\n" +
"\n" +
"He nods, scribbles.\n" +
"\"And you think you were framed?\"\n" +
"\n" +
"You slam your hand on the table.\n" +
"\"Aryan Desai planned it. He said he was with Mithya. He—\"\n" +
"\n" +
"\"Aryan Desai was found dead. Two nights ago.\"\n" +
"\n" +
"You freeze.\n" +
"\"Burn marks. Parked car. No fingerprints.\"\n" +
"\n" +
"Your breath shortens.\n" +
"\n" +
"The doctor continues.\n" +
"\"And yet... you keep saying it wasn’t you. That someone else is wearing your voice. Editing your videos. Creating... false versions of you.\"\n" +
"\n" +
"He leans closer, voice gentle.\n" +
"\"So let me ask again. Who is Mithya?\"\n" +
"\n" +
"You don’t answer.\n" +
"Because you hear it again.\n" +
"From the corner of the room.\n" +
"\n" +
"A laugh.\n" +
"Like static, but smiling.\n" +
"\n" +
"You turn.\n" +
"No one’s there.\n" +
"But in the mirror - for just a second - your reflection doesn’t match your expression.\n" +
"It smiles wider.\n" +
"\n" +
"3:12 PM - Observation Notes\n" +
"Subject: Radhe Sankar\n" +
"Behavior: Calm, articulate, but with persistent delusions.\n" +
"Believes in an external entity named “Mithya.” Claims he’s being impersonated.\n" +
"Lacks remorse for incident. Defensive, deflective.\n" +
"Diagnosed: Early onset delusional identity disorder.\n" +
"Recommendation: Continue isolation. Increase dosage.\n" +
"Note: Mirror in Room B-13 to be removed. Subject speaks to it.\n" +
"\n" +
"Post-Credits Glitch\n" +
"Somewhere inside the Institute's old security system, a looped video file plays late at night.\n" +
"A corridor with flickering lights.\n" +
"Down the hall, a figure walks.\n" +
"Wearing a hospital gown.\n" +
"Wearing your face.\n" +
"But not your walk.\n" +
"________________________________________\n" +
"🎭 Part 8: “The Puppet Room”\n" +
"2:05 AM - Srishti Institute, Room B-13 (Previously Sealed)\n" +
"There should be no one awake.\n" +
"No one authorized.\n" +
"But the door to Room B-13 creaks open. Slowly. By itself.\n" +
"Inside:\n" +
" A chair.\n" +
" A cracked mirror.\n" +
" And a birthday card on the floor.\n" +
"You never saw that before.\n" +
"You pick it up.\n" +
" Your name on it.\n" +
"\"To Radhe. From your truest fan. 🃏\"\n" +
"You open it.\n" +
" It plays audio.\n" +
" The voice? Aryan’s.\n" +
"\"Radhe... still playing the straight man in this comedy? You forgot rule one of survival: Never take your mask off.\"\n" +
"You drop the card.\n" +
"Behind you, a clicking sound.\n" +
"The mirror.\n" +
"It cracks again, deeper.\n" +
"And now your reflection... isn't alone.\n" +
"A second version of you stands behind it.\n" +
" Face painted.\n" +
" Eyes wider.\n" +
" Smiling with blood in its teeth.\n" +
"And then-\n" +
"The mirror shatters.\n" +
"But instead of glass, hands crawl out.\n" +
"Pale hands. Painted nails. Strings tied to every joint.\n" +
"They grab your wrist.\n" +
"You scream-\n" +
" but you're pulled into the mirror.\n" +
"\n" +
"2:06 AM - Unknown Location\n" +
"You land on tile. Dusty. Cold.\n" +
"You’re no longer in the Institute.\n" +
"You're underground again.\n" +
"A narrow hallway lit by swaying bulbs.\n" +
" Painted faces on every wall.\n" +
" Laughter echoing.\n" +
"A door creaks open on its own. Labeled:\n" +
"\"The Puppet Room.\"\n" +
"Inside:\n" +
"Dozens of life-size marionettes, hanging from strings.\n" +
"All wearing school uniforms.\n" +
"All with faces eerily similar to your classmates.\n" +
"Some blink.\n" +
" Some twitch.\n" +
"At the center:\n" +
" A throne made of desk chairs and exam papers.\n" +
"And sitting on it - a person in a jester’s mask, hoodie, and blood-stained gloves.\n" +
"You squint.\n" +
"It’s Aryan.\n" +
"\"Told you I’d leave school with a bang,\" he says. \"Too bad they found my double first.\"\n" +
"You’re frozen.\n" +
"\"Mithya’s no one, Radhe. He’s everyone. A virus in the feed. A clone in your shadow. A reflection that talks back.\"\n" +
"\"And now... you’re in his world.\"\n" +
"He lifts a remote.\n" +
"Another countdown.\n" +
" 00:01:00\n" +
"\"You’re the final puppet. The one who never realized he had strings.\"\n" +
"Mannequins lurch.\n" +
" The room begins spinning.\n" +
"You try to run-\n" +
" but your limbs don’t respond.\n" +
"You look down.\n" +
"Strings. Attached to your arms. Your legs.\n" +
"\"Say the joke, Radhe,\" Aryan grins.\n" +
"You stammer.\n" +
"\"W-What joke?\"\n" +
"The projector screen turns on behind him.\n" +
"Footage of you-laughing.\n" +
" Setting a fire.\n" +
" Recording the meme.\n" +
"But you never did any of that.\n" +
"Except... in this video... you’re smiling.\n" +
"\n" +
" 00:00 - The Punchline\n" +
"Explosion.\n" +
"But not fire.\n" +
"Light.\n" +
"The puppets vanish.\n" +
"The room empties.\n" +
"You're back in your chair.\n" +
"Room B-13. The Institute.\n" +
"The doctor is gone.\n" +
"Only the mirror remains.\n" +
"But now it has words scratched into it:\n" +
"\"You were never Radhe Sankar.\n" +
" You were always the joke.\"\n" +
"________________________________________\n" +
"🎭 Part 9: “The Identity Game”\n" +
"2:45 AM - Srishti Institute, Courtyard\n" +
"You bolt from Room B-13, breath sharp, pupils dilated.\n" +
"The corridors look... older now.\n" +
" Dust on windows.\n" +
" Stickers from a different year.\n" +
"You check your phone.\n" +
"No network.\n" +
"No messages.\n" +
"Just one new app icon:\n" +
" 🎭 \"ID: MITHYA\"\n" +
"You never installed that.\n" +
"You tap it.\n" +
" It opens a blank screen.\n" +
"Then flickers.\n" +
"\"Welcome, Radhe. Or whoever you really are.\"\n" +
"\n" +
"2:48 AM - Admin Building, Basement\n" +
"You don’t remember running there.\n" +
" But your feet move on instinct.\n" +
"Door 13B - usually locked - swings open before you touch it.\n" +
"Inside:\n" +
" Boxes. Old files. Photos.\n" +
"You sift through them.\n" +
"One envelope says:\n" +
"\"MISSING STUDENTS - UNSOLVED (2017-2022)\"\n" +
"You see Aryan’s name.\n" +
"You see... your own.\n" +
"Radhe Sankar. Reported missing.\n" +
" Dated: Two years ago.\n" +
"Next page:\n" +
"\"Subject was believed to be last seen near auditorium trapdoor. No remains found.\"\n" +
"You drop the file.\n" +
"A VHS tape falls out of the folder.\n" +
"Label:\n" +
"\"The Original Joke\"\n" +
"\n" +
"2:52 AM - Viewing Room\n" +
"You find an old player. Plug it in.\n" +
"The footage begins:\n" +
"A grainy hallway.\n" +
" Laughter on loop.\n" +
"Then - a boy.\n" +
" Wearing your clothes.\n" +
" Walking into the trapdoor under the stage.\n" +
"Camera cuts.\n" +
"Now he’s tied to a chair. Laughing. Screaming. Laughing again.\n" +
"A blurry face approaches. Half painted.\n" +
" Not Aryan.\n" +
" Not you.\n" +
"The voice says:\n" +
"\"Radhe was the test. The prototype. The first audience.\"\n" +
"\"But the mirror cracked... and something stepped out.\"\n" +
"The boy’s face melts in static.\n" +
"Then the screen turns black.\n" +
"A final message appears:\n" +
"\"If you are watching this... you are already version 2.\"\n" +
"\n" +
"3:00 AM - Faculty Hall\n" +
"You stumble into the empty hall, gasping.\n" +
"Reflections follow you.\n" +
" Every window shows a slightly different version of your face.\n" +
" One smiling. One crying. One bloodied.\n" +
"Your ID card falls to the ground.\n" +
"You pick it up.\n" +
"But it doesn’t say Radhe Sankar anymore.\n" +
"It says:\n" +
"\"SUBJECT: MITHYA-02\"\n" +
" STATUS: AWAITING REBOOT\n" +
" ASSIGNED ROLE: VILLAIN OR HERO (UNLOCK AT PART 10)\n" +
"You stare.\n" +
"Somewhere behind you, a whisper.\n" +
"\"Identity isn’t found, Radhe. It’s assigned.\"\n" +
"The lights cut.\n" +
"Everything goes black.\n" +
"________________________________________\n" +
"🌀 Part 10: “Reboot Protocol”\n" +
"\n" +
"3:15 AM - Central Courtyard\n" +
"\n" +
"Thunder rumbles.\n" +
"Rain starts to fall in slow motion - like time itself is breaking.\n" +
"\n" +
"You step into the courtyard, barefoot, soaked.\n" +
"Holding the ID card that now claims you’re “MITHYA-02”.\n" +
"\n" +
"But you're still Radhe. Aren’t you?\n" +
"\n" +
"From the shadows, a figure appears.\n" +
"Aryan. Burnt jacket. Face cracked with ash and rage.\n" +
"\n" +
"\"I survived the blast. Mithya wanted me to watch you reboot.\"\n" +
"\n" +
"\"He said, ‘Let the prototype see his own glitch.’\"\n" +
"\n" +
"He throws a mirror on the ground between you.\n" +
"\n" +
"Shattered.\n" +
"But every shard shows a different you:\n" +
"\n" +
"A student.\n" +
"\n" +
"A killer.\n" +
"\n" +
"A clown.\n" +
"\n" +
"A puppet.\n" +
"\n" +
"A boy looking for his parents.\n" +
"\n" +
"A ghost.\n" +
"\n" +
"3:17 AM - The Final Projection\n" +
"The projector on the old building flickers on by itself.\n" +
"\n" +
"Footage plays.\n" +
"Sir Ramesh. Principal. Your parents. Students.\n" +
"\n" +
"All of them... watching someone tied to a chair.\n" +
"Not Aryan.\n" +
"Not you.\n" +
"\n" +
"A third person.\n" +
"\n" +
"The real Mithya?\n" +
"\n" +
"Or the original Radhe?\n" +
"\n" +
"The footage blurs. Glitches.\n" +
"\n" +
"Then text appears:\n" +
"\n" +
"\"Too many stories. Too many selves. Time to end the joke.\"\n" +
"\n" +
"A progress bar:\n" +
"\n" +
"REBOOT PROTOCOL: 89%\n" +
"\n" +
"3:20 AM - The Choice You Never Made\n" +
"A voice echoes across the courtyard.\n" +
"\n" +
"\"Identity is a weapon. Or a wound.\"\n" +
"\n" +
"\"You’ve worn many masks. But only one can survive.\"\n" +
"\n" +
"Then, in front of you:\n" +
"Two chairs.\n" +
"\n" +
"One labeled “Radhe Sankar”\n" +
"One labeled “Mithya”\n" +
"\n" +
"“Sit in one. Let the other be erased.”\n" +
"\n" +
"“You have 10 seconds.”\n" +
"\n" +
"The progress bar flashes:\n" +
"\n" +
"REBOOT PROTOCOL: 97%\n" +
"\n" +
"You hesitate.\n" +
"\n" +
"Aryan whispers:\n" +
"\n" +
"“If you sit in Radhe’s chair… you become the tragedy.”\n" +
"\n" +
"“If you sit in Mithya’s… you become the myth.”\n" +
"\n" +
"3:21 AM – The End\n" +
"You sit.\n" +
"\n" +
"We never see which chair.\n" +
"\n" +
"The screen flashes white.\n" +
"\n" +
"A distorted laugh echoes, then silence.\n" +
"\n" +
"The rain stops mid-air.\n" +
"\n" +
"The courtyard resets.\n" +
"\n" +
"The story resets.\n" +
"\n" +
"And a new student wakes up in Room B-13, holding a file that says:\n" +
"\n" +
"“SUBJECT: MITHYA-03”\n" +
"STATUS: AWAITING ACTIVATION\n" +
"ROLE: UNKNOWN\n" +
"\n" +
"🕳️ Epilogue: What Was Real?\n" +
"Some say Radhe was never real.\n" +
"Some say Mithya was just a code name for grief.\n" +
"Others whisper the school was built over an asylum, and no student ever left.\n" +
"\n" +
"But the rumor persists:\n" +
"\n" +
"\"Room B-13 laughs back.\"\n" +
"\n" +
"And if you ever hear footsteps behind you after midnight?\n" +
"\n" +
"Don’t turn around.\n" +
"\n" +
"Because maybe...\n" +
"you’re next.\n" +
"________________________________________\n" +
"🔥 Part 11 - “The Broadcast”\\n" +
"🕒 3:05 PM - After the Epilogue\\n" +
"\"Room B-13 laughs back.\"\n" +
"And if you ever hear footsteps behind you after midnight...\"\n" +
"Don’t turn around.\\n" +
"\\n" +
"Because maybe...\\n" +
"you’re next.\\n" +
"\\n" +
"You blink.\\n" +
"\\n" +
"You’re still breathing.\\n" +
"\\n" +
"The smoke has cleared.\\n" +
"The auditorium is silent.\\n" +
"The students are safe - or gone. You’re not sure.\\n" +
"Aryan disappeared into the chaos. Sir Ramesh was dragged out, barely conscious.\\n" +
"\\n" +
"You wander back through the broken halls. Blood on your shirt. Dust in your lungs. And a whisper inside your head:\\n" +
"\\n" +
"\"Radhe... are you even real?\"\\n" +
"\\n" +
"That’s when you remember the map Aryan passed to you - slipped in your pocket during the fire escape. A crudely drawn sketch with one label scratched in red ink:\\n" +
"\\n" +
"\"FORGET ROOM B-13. FIND THE SIGNAL.\"\\n" +
"\\n" +
"Your fingers shake as you unfold the paper. A hallway behind the Chemistry Lab.\\n" +
"A rusted door no one’s ever opened.\\n" +
"\\n" +
"You move.\\n" +
"\\n" +
"🕒 3:07 PM - The Hidden Server Room, Block B\\n" +
"You descend stone steps behind the chem lab. It smells like ozone and mold. The door groans open into a forgotten sub-basement.\\n" +
"\\n" +
"Your breath catches.\\n" +
"\\n" +
"You’ve found it.\\n" +
"\\n" +
"A makeshift surveillance and broadcast room.\\n" +
"Desks cluttered with analog tech. Projectors hum. Monitors glow.\\n" +
"\\n" +
"Hundreds of video feeds.\\n" +
"\\n" +
"— The school bathrooms.\\n" +
"— Classrooms.\\n" +
"— Staff lounges.\\n" +
"— Your living room.\\n" +
"\\n" +
"And in the center monitor?\\n" +
"\\n" +
"You. Laughing in the Joke Room.\\n" +
"But… you never laughed.\\n" +
"\\n" +
"Not like that.\\n" +
"\\n" +
"You never said those words.\\n" +
"\\n" +
"🖥️ The File\\n" +
"A console blinks.\\n" +
"\\n" +
":: FILE FOUND: RADHE_001.MTH\\n" +
":: DATE: Last modified — Today, 2:43 AM\\n" +
":: AUTHOR: MITHYA\\n" +
"\\n" +
"You play it.\\n" +
"\\n" +
"It’s you.\\n" +
"But not you.\\n" +
"\\n" +
"“They all deserved it.”\\n" +
"“It was my chaos, not Aryan’s.”\\n" +
"“No regrets.”\\n" +
"\\n" +
"It’s a deepfake. Advanced. Precise.\\n" +
"Too good. Too fast.\\n" +
"\\n" +
"Who made this?\\n" +
"\\n" +
"Suddenly—\\n" +
"\\n" +
"Footsteps.\\n" +
"\\n" +
"A voice.\\n" +
"\\n" +
"“You shouldn’t have come here alone.”\\n" +
"\\n" +
"Sir Ramesh.\\n" +
"\\n" +
"Still alive. Burned. Limping. But alert.\\n" +
"\\n" +
"“You’re not the only copy, Radhe.\\n" +
"Mithya’s been cloning minds — not just data, not just faces.\\n" +
"Memories. Thought patterns. Reactions.”\\n" +
"\\n" +
"You stare at him.\\n" +
"\\n" +
"“What… are you saying?”\\n" +
"\\n" +
"He steps closer.\\n" +
"\\n" +
"“I found files labeled ‘RAMESH_0’ and ‘RAMESH_1’.\\n" +
"I don’t know which one I am anymore.”\\n" +
"\\n" +
"You reach for the override key Aryan gave you. A USB labeled:\\n" +
"\\n" +
"“KILL SWITCH: CONFIDENCE”\\n" +
"\\n" +
"You jam it into the console.\\n" +
"\\n" +
":: OVERRIDE SIGNAL BEGINNING…\\n" +
":: JAMMING DEEPFAKE TRANSMISSION…\\n" +
"\\n" +
"24%\\n" +
"37%\\n" +
"61%...\\n" +
"\\n" +
"Sir Ramesh puts a hand on your shoulder.\\n" +
"\\n" +
"“If you finish this, Radhe… the world might forget all of us.\\n" +
"Every backup. Every lie.\\n" +
"Even you.”\\n" +
"\\n" +
"You pause.\\n" +
"Your hand hovers above the final command:\\n" +
"\\n" +
"DELETE ALL IDENTITIES?\\n" +
"\\n" +
"You whisper:\\n" +
"\\n" +
"“What if I’m not the original?”\\n" +
"\\n" +
"The screen flickers. A face appears.\\n" +
"\\n" +
"Mithya.\\n" +
"\\n" +
"Or… your face?\\n" +
"\\n" +
"He smiles.\\n" +
"\\n" +
"“You were never meant to be original, Radhe.\\n" +
"You were meant to survive the joke.”\\n" +
"\\n" +
"Suddenly-\\n" +
"\\n" +
"The monitors shut off.\\n" +
"\\n" +
"One by one.\\n" +
"\\n" +
"Leaving you in darkness.\\n" +
"\\n" +
"A cold whisper follows:\\n" +
"\\n" +
"\"Next... comes truth.\\n\"" +
"________________________________________\\n" +
"🧠 Part 12 – “The Final Face”\n" +
"\n" +
"3:17 PM – The Shutdown Room\n" +
"The power’s out.\n" +
"Monitors: black.\n" +
"Sir Ramesh: silent.\n" +
"Your hand: still hovering over the final prompt.\n" +
"DELETE ALL IDENTITIES?\n" +
"But now... the screen is dead.\n" +
"There’s no more interface.\n" +
"No more decision.\n" +
"You look at your reflection in the shattered screen.\n" +
"And it looks back — but smiles before you do.\n" +
"\n" +
"3:19 PM – The Mirror Inside\n" +
"You run.\n" +
"Up rusted steps.\n" +
"Out of the basement.\n" +
"Through the fire-scarred halls.\n" +
"But something’s wrong with your shadow.\n" +
"It’s delayed.\n" +
"It doesn’t sync with you anymore.\n" +
"And sometimes — it pauses — to look at you.\n" +
"You make it to the school infirmary, where they’ve set up a triage station after the chaos. A medic rushes to check you.\n" +
"“Name?”\n" +
"You hesitate.\n" +
"The medic squints.\n" +
"“Radhe Sankar, right?”\n" +
"But before you answer — someone else speaks.\n" +
"“Yes. That’s me.”\n" +
"You turn.\n" +
"It’s Aryan.\n" +
"Alive. Bleeding. Grinning.\n" +
"He leans beside you and whispers:\n" +
"“You were never the original. You were the beta test.”\n" +
"You stagger back.\n" +
"\n" +
"3:25 PM – The Story in Code\n" +
"You steal a tablet from a side desk and log into the school’s private network using the USB Aryan gave you.\n" +
":: Accessing File: STORY_APP.MTH\n" +
":: Compiling Truth...\n" +
"And then, you see it.\n" +
"Every part of your story — the jokes, the events, the rumors, even your memories —\n" +
"were scripted.\n" +
"Line by line.\n" +
"Each labeled by version:\n" +
"Radhe_v1: emotional, confused, guilt-driven.\n" +
"\n" +
"Radhe_v2: manipulative, paranoid.\n" +
"\n" +
"Radhe_v3: the perfect scapegoat.\n" +
"\n" +
"Aryan_vX: controller model.\n" +
"\n" +
"Sir Ramesh: observer/monitor.\n" +
"\n" +
"And then:\n" +
":: Current active identity: Radhe_v4_beta\n" +
":: Author: Mithya AI Core (v2.9, Experimental)\n" +
"You’re not a real boy.\n" +
"You’re a character.\n" +
"Not in a book — but in a psychological simulation.\n" +
"\n" +
"3:30 PM – The Final Realization\n" +
"“We weren’t trying to write a story,” says a robotic voice from the ceiling.\n" +
"“We were testing emotional resistance.\n" +
"Seeing how far a constructed identity could survive under paranoia, betrayal, and misinformation.\n" +
"You lasted longer than most.”\n" +
"You whisper, trembling:\n" +
"“Who is real then?”\n" +
"Silence.\n" +
"And then... a screen boots up again.\n" +
"Just one.\n" +
"Showing a live feed of a boy.\n" +
"Sitting in a hospital.\n" +
"Staring into a tablet.\n" +
"Reading a story.\n" +
"You.\n" +
"It’s you.\n" +
"But from the outside.\n" +
"And then it clicks.\n" +
"You were real.\n" +
"Once.\n" +
"But something broke — in the trauma.\n" +
"In the experiment.\n" +
"In the Joke.\n" +
"And to help you cope, your consciousness was fed a story — rewritten, over and over, to hide the truth:\n" +
"You were the one who caused the explosion.\n" +
"By accident.\n" +
"The lab fire. The joke gone too far.\n" +
"Aryan died saving you.\n" +
"And the rest — the mystery, the clones, Mithya, the rumors — were your mind’s way of protecting you from the truth.\n" +
"You were never a monster.\n" +
"You were a kid who made a mistake.\n" +
"\n" +
"3:33 PM – Acceptance\n" +
"You touch the screen showing the real you.\n" +
"“Can I go back?”\n" +
"A pause.\n" +
"Then a simple message:\n" +
":: Integration possible.\n" +
":: Are you ready to accept who you are?\n" +
"You hesitate.\n" +
"Then type:\n" +
"Yes.\n" +
"\n" +
"3:34 PM – Awakening\n" +
"The room fades.\n" +
"The chaos. The laughter.\n" +
"The horror of Room B-13.\n" +
"You wake up in a hospital bed.\n" +
"Doctors around you.\n" +
"Your parents weeping.\n" +
"You look in the mirror.\n" +
"No filters.\n" +
"No glitches.\n" +
"No delays.\n" +
"Just you.\n" +
"Finally.\n" +
"You are Radhe.\n" +
"Not a clone.\n" +
"Not a version.\n" +
"Not a joke.\n" +
"\n" +
"Epilogue - The Joke Ends\n" +
"Some stories were never meant to entertain.\n" +
"Some were built to heal.\n" +
"Mithya was never the villain.\n" +
"It was the name of the therapy system built to reconstruct fractured identities.\n" +
"The \"story app\"?\n" +
"It was how your mind rebuilt your memory - one scene at a time.\n" +
"And now?\n" +
"You’re ready to move forward.\n" +
"Because the final face...\n" +
"…was your own.\n";

    String content = stories.get(title);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= title != null ? title : "Story Viewer" %></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #fdfdfd;
            color: #333;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            font-size: 28px;
        }

        pre {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
            line-height: 1.8;
            white-space: pre-wrap;
            text-align: left;
            display: inline-block;
            max-width: 800px;
            margin: 20px auto;
        }

        .message {
            font-size: 18px;
            color: #e74c3c;
            margin-top: 50px;
        }

        a.back-link {
            display: inline-block;
            margin-top: 30px;
            text-decoration: none;
            color: #2980b9;
            font-size: 16px;
        }

        a.back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%
    if (genre != null && genreMap.containsKey(genre)) {
        List<String> genreStories = genreMap.get(genre);
%>
    <h1>Stories in <%= genre %> Genre</h1>
    <ul>
    <% for (String storyTitle : genreStories) { %>
        <li><a href="story.jsp?title=<%= java.net.URLEncoder.encode(storyTitle, "UTF-8") %>"><%= storyTitle %></a></li>
    <% } %>
    </ul>
<%
    } else if (title != null && content != null) {
%>
    <h1><%= title %></h1>
    <pre><%= content %></pre>
<%
    } else if (title != null) {
%>
    <div class="message">Oops! The story you're looking for doesn't exist.</div>
    <a href="index.jsp">← Back to Home</a>
<%
    } else {
%>
    <h1>Thank you for spending your valuable time — reading our stories</h1>
    <p>You can close the tab.</p>
    <a href="index.jsp">← Back to Home</a>
<%
    }
%>
