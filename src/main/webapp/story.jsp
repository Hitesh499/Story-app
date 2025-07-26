<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String title = request.getParameter("title");

    Map<String, String> stories = new LinkedHashMap<>();
    stories.put("I AM PRINCE NOT A HERO", 
    "I was born in the palace, with golden robes and jeweled crowns awaiting my name. From the very first day, everyone told me I was destined to be a hero—the savior, the leader, the perfect son of a perfect king.\n\nBut I never wanted to be a hero. I saw how the people outside the palace gates lived, struggled, and smiled in simplicity. I envied their freedom.\n\nSo I walked away. I took off the crown, shed the title, and disguised myself as one among the people. I worked in the fields, ate at the street stalls, and listened to stories from grandmothers who had nothing but memories.\n\nIn that life, I found myself. I helped a child get an education, I stood by a friend in grief, and I fought not with swords but with compassion. \n\nWhen the kingdom fell into despair, I returned—not as a prince on a white horse, but as a man who had lived the life of his people.\n\nThey called me a hero then. But I told them—I’m no hero. I’m just someone who finally chose to be human.\n\nI am a prince, not a hero. And that is enough.");

    stories.put("A DAY THAT I CAN NEVER FORGOT", 
    "It was a rainy Wednesday when everything changed.\n\nI was returning home late from work, drenched and frustrated, walking through the narrow shortcut lane behind the railway station — a path most people avoided after dark. The streetlights flickered. I could hear my own heartbeat above the rain.\n\nSuddenly, a loud thud echoed from a dark alley beside the old warehouse. I froze.\n\nA weak cry followed. My instincts screamed to run. But something stronger—curiosity or conscience—pulled me toward the sound.\n\nI slowly peeked around the corner.\n\nA man lay unconscious, bleeding from the head. Standing above him was a figure in a raincoat, holding what looked like a crowbar. The figure spotted me and bolted into the shadows. Without thinking, I chased.\n\nMy footsteps splashed through puddles. I could barely see. I turned a corner — and slipped.\n\nBy the time I got up, the figure was gone.\n\nI called the police immediately.\n\nWithin minutes, the area was swarming with sirens and flashing lights. I gave my statement, still shaking. The man who’d been attacked — Mr. Rajan — was a local journalist. The police found his phone in the alley, cracked but working. His latest message draft was open:\n\n“Tomorrow I publish everything. They won’t silence me anymore.”\n\nThe investigation moved fast. By the next morning, it was on every news channel: an attempted murder to silence a whistleblower. Apparently, Rajan had been compiling evidence about a corrupt construction magnate, Mr. Bhandari — someone powerful and feared.\n\nOver the next few days, I was pulled into the investigation. The figure I saw matched the description of a man named Vikram, Bhandari’s driver. He was soon arrested.\n\nCase closed? Not quite.\n\nTwo weeks later, while walking home, I found a USB stick in my mailbox. No note. Just the device. I plugged it into my laptop.\n\nThere were recordings — hours of them — where Vikram was speaking to someone. Not just taking orders. He was reporting back.\n\nHe was an undercover informant.\n\nMy stomach twisted.\n\nHe hadn't attacked Rajan. He had found him and was trying to save him. But when he saw me — a stranger — he panicked and ran. I had led the police to him.\n\nThe real attacker was still out there. And I had helped put an innocent man in jail.\n\nI turned in the USB. The truth exploded. Vikram was released. The real attacker — Bhandari’s head of security — was later arrested trying to flee the country.\n\nMr. Rajan survived and recovered. His story — and Vikram’s — made national headlines. And me?\n\nI was never the same.");

    stories.put("THE SILENCE TO GEAR UP MY LIFE", 
    "For most of my life, noise surrounded me — expectations, opinions, comparisons, trends, notifications, reels, likes, dislikes, and the never-ending pressure to \"become something.\"\n\nI was 19 when it all got too much.\n\nI had just failed a competitive exam everyone believed I’d crack. Friends moved on. Relatives whispered. My parents didn’t say much — maybe because they didn’t know what to say anymore. The world didn’t stop, but inside me, something did.\n\nSo I stopped everything too.\n\nNo social media. No late-night scrolling. No aimless wandering.\nI took a break not to escape, but to listen.\n\nIn that silence, I heard something powerful — my own voice.\nNot the voice that spoke to impress others. But the one that whispered what I truly wanted. It told me:\n\"You’ve got potential. But you're misplacing your energy. Not your dream — your direction needs fixing.\"\n\nFor the first time, I made a plan not because someone told me to, but because I chose it. I began learning small skills every day. I set micro goals. I read, worked out, and surrounded myself with people who fueled growth — not gossip.\n\nDays turned to months.\nNo flashy results. No trophies. But I became consistent. Focused. Stronger.\n\nThen came the opportunity I didn’t expect — an internship in a startup. I wasn’t the most qualified, but they said,\n\"We saw your effort and attitude. That’s rare.\"\n\nThat’s when I realized:\nSilence doesn’t mean nothing’s happening. It means you're preparing for something greater.");


    stories.put("THE SWORD OF FORGOTTEN TRUTHS", 
    "In the kingdom of Eldarion, stories were no longer trusted. For centuries, the King’s decree had forbidden the telling of tales, especially those of the ancient world — for within those forgotten fables, truths more powerful than any army lay sleeping.\n\nEira, a blacksmith’s orphan daughter, had always felt different. While others feared the past, she was drawn to it. Every crack in stone walls, every symbol carved on rusted gates, felt like a whisper calling her name.\n\nOne stormy evening, while seeking shelter in the forest ruins of Darnmoor, she fell into a hidden chamber beneath the earth. There, resting atop a pedestal of stone, was a sword — unlike any she’d ever seen. Its blade shimmered not with steel but with strands of memory — shifting images dancing across its surface: battles, betrayals, and voices crying truths long buried.\n\nThe moment Eira touched the hilt, visions flooded her mind — not just of wars fought, but of the true history of Eldarion. She saw how the kingdom had been built on a lie, how knowledge had been erased, and how the sword had once belonged to the Truthkeeper, a warrior-scholar who vanished when truth was outlawed.\n\nBut Eira was no warrior.\n\nOr so she thought.\n\nChased by the King’s Truth Hunters — silent assassins trained to kill anyone who dared awaken the past — Eira fled. Along the way, she met others: a blind librarian who had memorized forbidden texts, a prince hiding in plain sight, and a beast who could speak only in forgotten riddles.\n\nWith each ally, the sword grew brighter. It fed not on violence but on belief — belief in truth, no matter how painful.\n\nIn the final confrontation, high atop the cliffs of Solmaron, Eira faced the King. But she did not strike him. Instead, she spoke. And the sword, recognizing her courage, unleashed its true power: it revealed the truth to all — not with blood, but with memory.\n\nThe people wept. The King fell. Not dead — but defeated by the truth.\n\nThe laws changed.\n\nStories returned.\n\nAnd the sword?\n\nIt vanished — until the next truth was forgotten.");
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
