<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String title = request.getParameter("title");

    Map<String, String> stories = new LinkedHashMap<>();
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

    stories.put("💌 THE LAST LETTER FROM GRANDMA,
    "💌 THE LAST LETTER FROM GRANDMA\n" +
    "________________________________________\n" +
    "Episode-1. The Funeral\n + 
    "When Grandma Meera passed away at 87, the entire Sharma family returned to the old ancestral home in Darjeeling. The house, perched on a misty hillside, still smelled like cardamom tea and old books.\n" +
    "Riya, her 18-year-old granddaughter, hadn’t seen Grandma in a year — not since their falling out over Riya's choice to pursue art instead of medicine.\n" +
    "Grandma had always been loving… but strict. And now she was gone. No goodbyes. No closure.\n" +
    "Or so Riya thought.\n" +
    "________________________________________\n" +
    "Episode-2. The Letter Box\n" +
    "On the third day after the funeral, while helping clean the attic, Riya found a small wooden box beneath Grandma’s sewing cabinet. The lock was rusted shut, but taped to the bottom was a note in Grandma’s spidery handwriting:\n" +
    "“For Riya. When you're ready to listen — truly listen.”\n" +
    "Inside the box: A single letter, sealed in wax with a pressed marigold on top.\n" +
    "And beneath it, a stack of old, yellowed envelopes, each labeled with a year — from 1960 to 2024.\n" +
    "________________________________________\n" +
    "Episode-3. The Last Letter\n" +
    "Riya opened the letter addressed to her.\n" +
    "It read:\n" +
    “My dearest Riya,\n" +
    "If you're reading this, it means I’m no longer there to frown at your messy sketchbooks or hide your paintbrushes. I was wrong, Riya. So wrong. I tried to mold you into someone the world would approve of. But the truth is, I was just scared. Scared that your dreams would break you like mine once broke me.\n" +
    "Under the stairs, you’ll find a trunk. Inside it — the art I never showed anyone. Not even your mother.\n" +
    "Your talent doesn’t skip generations. It’s been hiding in this house for decades.\n" +
    "Now go. Create. And forgive me if you can.\n" +
    "With all the love I never said out loud,\n" +
    "Grandma Meera”\n" +
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
    "At the center was a piece titled "Meera's Silence" — a portrait of her grandmother holding a brush, but with her lips stitched shut.\n" +
    "Beside it, framed in gold, was the last letter.\n" +
    "Visitors cried. Some clapped.\n" +
    "Riya smiled.\n" +
    "Grandma was gone — but her voice was finally being heard.");

    stories.put("💻 THE LAST WILL AND WI-FI PASSWORD,
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
    "The family formed a "Password Task Force", led by the overly confident cousin Sameer, who had once Googled "How to hack Facebook."\n" +
    "Everyone had ideas:\n" +
    ""Kishore123" – Wrong.\n" +
    ""ILoveCricket" – Nope.\n" +
    ""PinkyTheDog" – (That was the neighbor’s dog.)\n" +
    ""MangoPickle1965" – Close, but no.\n" +
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
    "“Didn’t Dadu always say the most valuable things were ‘invisible’?”\n" +
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
    "“He had a secret fiancée?!”\n" +
    "“What if she’s in the will?”\n +
    "But Rhea was quiet. She kept reading the poems.\n" +
    "________________________________________\n" +
    "Episode-5. Rhea Cracks the Code\n" +
    "Late at night, while everyone was snoring or fake-snoring in protest, Rhea tiptoed to the laptop.\n" +
    "She stared at the note again:\n" +
    "“Whoever truly knew me... will know the password.”\n +
    "She thought back to Grandpa reading stories, always ending with the same line: “The greatest treasure is the thing we forget to say.\n" +
    "Her hands trembled as she typed: “ImSorry2023”\n" +
    "The laptop unlocked.\n" +
    "________________________________________\n" +
    "Episode-6. The Will\n" +
    "The will wasn’t what they expected.\n" +
    "No lists of jewelry, land, or gold.\n" +
    "Just a video message from Grandpa, smiling warmly:\n" +
    "“If you’re watching this, I’m either dead or in Goa pretending to be.”\n" +
    "“Jokes aside — I loved you all, but I saw how money always tore people apart. So I left you something better.”\n" +
    "He left:\n" +
    "* The house, to be turned into a community library.\n" +
    "* The savings, donated to a girls’ education fund in the village.\n" +
    "* Personal letters to each family member, including ones filled with apologies, encouragement, and awkward jokes.\n" +
    "And one final line: “P.S. The Wi-Fi password is: ForgiveMe2023”\n" +
    "________________________________________\n" +
    "Episode-7. The Last Laugh and a New Start\n" +
    "The room was silent.\n" +
    "Then Sameer muttered:\n" +
    "“So basically... Grandpa Rickrolled us into healing?”\n" +
    "Everyone laughed. That night, they stayed up reading his letters, sharing memories, and actually listening to each other.\n" +
    "No more shouting. Just warm lights, laughter, and — finally — Wi-Fi.\n" +
    "And Rhea? She started a blog called "Letters & Passwords", helping families document stories before it’s too late.\n" +
    "Because sometimes, the best inheritance isn’t money — It’s understanding.")

    String content = stories.get(title);
%>
<!DOCTYPE html>
<html>
<head>
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
    if (title == null) {
%>
    <h1>Thank you for spending your valuable time — reading our stories</h1>
    <p>You can close the tab.</p>
<%
    } else if (content == null) {
%>
    <div class="message">Oops! The story you're looking for doesn't exist.</div>
<%
    } else {
%>
    <h1><%= title %></h1>
    <pre><%= content %></pre>
<%
    }
%>

<a class="back-link" href="index.jsp">← Back to Home</a>
</body>
</html>