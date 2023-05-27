VAR u = 0
VAR d = 0
VAR m = 0
VAR r = 0
VAR v = 0
VAR relation = 2
INCLUDE abortion.ink
INCLUDE lying.ink
INCLUDE punish.ink
INCLUDE surveillance.ink
INCLUDE trans.ink
-> intro

=== intro
Ethics in Action: A Family's Journey
Welcome to "Ethics in Action: A Family's Journey"! In this, text-based game, you will be following the story of a child growing up in a loving household with parents named Alice and Bob and encountering a series of ethical dilemmas that will test your decision-making skills and explore various moral perspectives.
The dilemmas presented in this game are chosen from different controversial topics, including abortion, good lies, corporal punishment, privacy, and transgender athletics. These topics can provoke discussions on values like personal values and moral decision-making. Before starting the game, here is some background information about these dilemmas that will help you better understand the issues.

* Abortion: Should pregnant women have the right to abort their children?
Abortion has been a controversial ethical dilemma for a long time. Supporters of abortion rights, who lay emphasis on the factors like personal situations, health risks, and future plans, believe that women have the right and freedom to make decisions about their own bodies and health. On the other hand, objectors claim that unborn lives should be protected by laws, just like born ones. This topic sparks strong opinions and is significant in discussions about personal choices and moral values. The question surrounding abortion elicits impassioned and deeply ingrained beliefs, rendering it a significant topic in discussions surrounding personal liberty and moral accountability.

<a target="_blank" rel="noopener noreferrer" href="https:\/\/www.pewresearch.org/religion/2022/05/06/social-and-moral-considerations-on-abortion">(Learn more about the ethical considerations surrounding abortion)</a> 



** Lying for Good Reason: Are people supposed to lie to others for good reasons?
This ethical dilemma examines the justifiability of lying in certain situations where the intention is to prevent harm or promote a greater good. Supporters argue that lying for good reason can be morally acceptable when it serves to protect someone from harm, uphold justice, or prevent serious consequences. They contend that the intention behind the lie and the potential positive outcomes outweigh the act of deception itself. On the other hand, opponents argue that lying undermines trust, integrity, and the value of honesty, even if the intentions are positive. Alternative approaches, including open communication, should be pursued to address the situation rather than deception. 

<a target="_blank" rel="noopener noreferrer" href="https:\/\/daily-philosophy.com/is-lying-ethical/\#:~:text=Lying%2C%20deception%20and%20when%20they%20are%20justified&text=Lying%20is%20generally%20perceived%20as,harm)%20might%20be%20morally%20justifiable">(Explore the ethical implications of good lies)</a>

*** Corporal Punishment: Is it acceptable for parents to use physical discipline as a form of punishment? 
This ethical dilemma focuses on the use of physical force as a disciplinary measure for children and raises debates regarding its effectiveness and ethical considerations. Supporters believe that corporal punishment can instill discipline and deter inappropriate behavior. However, critics suggest that violence may have negative long-term effects on a child's well-being and undermine principles of empathy. The question of corporal punishment prompts discussions on alternative disciplinary methods, child rights, and the importance of promoting positive parenting strategies that prioritize communication and healthy relationships.

<a target="_blank" rel="noopener noreferrer" href="https:\/\/www.verywellfamily.com/facts-about-corporal-punishment-1094806">(Explore the ethical implications of corporal punishment)</a>

**** Privacy and Surveillance: Is it justifiable to install surveillance devices on your children’s devices for safety purposes?
This ethical dilemma revolves around finding a delicate balance between safeguarding children's safety and respecting their right to privacy. Supporters of surveillance devices argue that such technology can assist parents in monitoring potential risks, preventing harm, and ensuring the well-being of their children. However, critics raise concerns about privacy infringement, the potential for misuse, and the impact on the development of trust and autonomy within parent-child relationships. This dilemma prompts broader questions regarding the limits of parental authority and the necessity of striking a balance between protecting children and nurturing their independence and privacy. Delving into this issue requires a thoughtful examination of the ethical considerations encompassing parental responsibility, trust-building, and the rights of children.
<a target="_blank" rel="noopener noreferrer" href="https:\/\/www.parentsandkids.com/54515/what-is-ethical-and-not-ethical-to-monitor-through-a-parental-control-app/">(Learn more about children’s privacy and surveillance)</a>

***** Transgender Athletics: Should transgenders be allowed to compete in sports based on their gender identity?
This complex ethical dilemma revolves around the inclusion and fairness of transgender athletes in competitive sports. Supporters contend that it is important to grant transgender individuals the right to participate in sports based on their gender identity, aiming to foster inclusivity and provide equal opportunities. They emphasize the significance of acknowledging and validating the gender identity of transgender athletes, advocating for the implementation of policies that prioritize self-identification and eliminate discriminatory barriers. Conversely, opponents raise concerns about preserving fair competition, specifically regarding potential physical advantages that certain transgender individuals may possess based on their assigned sex at birth. They contend that permitting transgender individuals to compete based on their gender identity could potentially undermine the integrity and fairness of the competition.

<a target="_blank" rel="noopener noreferrer" href="https:\/\/theconversation.com/striking-a-balance-between-fairness-in-competition-and-the-rights-of-transgender-athletes-159685">(Understand the ethical complexities of transgender athletes)</a>

Your choices and reasoning will determine what kind of person you are in terms of ethics such as utilitarianism, deontology, morality, rights, virtues, or even nihilism. Enjoy embarking on this captivating journey and exploring the depths of ethical decision-making.

Are you prepared to make tough choices and discover the ethical path that lies ahead for Alice, Bob, and their child? Let's begin the journey and see what awaits in "Ethics in Action: A Family's Journey"!



******* [Start] -> abortion

= abortion
# CLEAR
* ALICE: (emotionally) Bob, we're not ready for this. We can't provide for a child right now.

** BOB: (calmly) I understand, Alice, but we're talking about a life here. Can we really decide someone's future based on our circumstances?

*** ALICE: (tearfully) What kind of life can we offer? Can we give them what they deserve?

**** BOB: (softly) We have each other and support from loved ones. We'll face the challenges together.

***** \(ALICE searches for strength in BOB's eyes, conflicted and uncertain.\)

****** [They decides to abort the child] -> abortion_yes
****** [They decides not to abort the child] -> abortion_no


-> DONE

= abortion_yes
Alice decides to abort the child. She explains to Bob based on 
* ALICE: {ab_u1}
    ~u += 1
* ALICE: {ab_d1}
    ~d += 1
* ALICE: {ab_m1}
    ~m += 1
* ALICE: {ab_r1}
    ~r += 1
* ALICE: {ab_v1}
    ~v += 1
- The expected arrival of the baby didn't happen at that time. But just in a few years, Alice and Bob had made all the necessary preparations, both financially and emotionally. Finally, the joyous day arrived when a healthy child, named Carol, was born. -> lying

-> END

-> DONE
= abortion_no
Bob decides to have the child. He explains to Alice based on
* BOB: {ab_u0}
    ~u += 1
* BOB: {ab_d0}
    ~d += 1
* BOB: {ab_m0}
    ~m += 1
* BOB: {ab_r0}
    ~r += 1
* BOB: {ab_v0}
    ~v += 1
- Alice agrees not to abort the child. 8 months later, the joyous day arrived when a healthy child, named Carol, was born. -> lying
-> DONE

= lying
# CLEAR
* \[7 years later\]
**\(BOB answers the call, his face filled with concern. ALICE watches anxiously.\)
BOB: (on the phone) What? How serious is it? I'll be there soon. Thank you for letting me know.
***\(ALICE's eyes widen, worried.\)
    ALICE: What happened, Bob? Is everything okay?

****BOB: No, Alice. My sister is dying. It's serious. But if we tell my sick mother, it could worsen her condition.

*****\(ALICE's face shows concern, contemplating their options.\)
    ALICE: Maybe we should visit your sister first, gather more information, and then decide how to handle your mother's situation.

******BOB: I know, Alice. It's just... keeping this from my mother feels wrong, but we need to prioritize everyone's well-being.

******* \(ALICE reassures BOB, offering support.)
    ALICE: We'll figure this out, .
    
******** [ALICE: We have to tell the truth] -> lying_no
******** [BOB: We can't tell the truth] -> lying_yes

= lying_yes
When they are dealing with the phone calls. Carol quietly listens without making a sound.
Finally, Alice and Bob notices that their child is looking at them in a state of confusion
Bob knows he has to explain his decision to the child based on
* BOB: {ly_u1}
    ~u += 1
* BOB: {ly_d1}
    ~d += 1
* BOB: {ly_m1}
    ~m += 1
* BOB: {ly_r1}
    ~r += 1
* BOB: {ly_v1}
    ~v += 1
- Carol nods but she is still a bit confused. -> punish
-> DONE
= lying_no
When they are dealing with the phone calls. Carol quietly listens without making a sound.
Finally, Alice and Bob notices that their child is looking at them in a state of confusion
Alice know he has to explain her decision to the child based on
* ALICE: {ly_u0}
    ~u += 1
* ALICE: {ly_d0}
    ~d += 1
* ALICE: {ly_m0}
    ~m += 1
* ALICE: {ly_r0}
    ~r += 1
* ALICE: {ly_v0}
    ~v += 1
- Carol nods but she is still a bit confused. -> punish

-> DONE


= punish
# CLEAR
* \[3 years later\]

**Carol's bedroom. Alice and Bob stand near the closed door, their faces reflecting concern and frustration.

*** ALICE: (worried) Bob, I can't believe Carol got into a fight at school. This behavior is completely unacceptable.

**** BOB: (agitated) I know, Alice. It's deeply disappointing. We need to address this and make sure Carol understands the seriousness of their actions.

***** \(ALICE takes a deep breath, trying to calm herself.\)

****** ALICE: But Bob, should we resort to physical punishment? Will that truly help Carol learn from their mistake?

******* BOB: (hesitates) I don't want to hurt Carol, but maybe they need to understand the consequences. We can't let this behavior go unpunished.

******** [They decides to punish the child] -> punish_yes
******** [They decides not punish the child] -> punish_no

= punish_yes
~ relation -= 1
* BOB: {pu_u1}
    ~u += 1
* BOB: {pu_d1}
    ~d += 1
* BOB: {pu_m1}
    ~m += 1
* BOB: {pu_r1}
    ~r += 1
* BOB: {pu_v1}
    ~v += 1
- Alice agrees to punish the child -> surveillance
-> DONE

= punish_no
* ALICE: {pu_u0}
    ~u += 1
* ALICE: {pu_d0}
    ~d += 1
* ALICE: {pu_m0}
    ~m += 1
* ALICE: {pu_r0}
    ~r += 1
* ALICE: {pu_v0}
    ~v += 1
- Bob agrees not to punish the child -> surveillance
-> DONE

= surveillance
# CLEAR
* \[A few months has passed\]
** Alice and Bob's living room. They sit on the couch, Carol's phone in their hands, their faces filled with concern.
*** ALICE: (firmly) Bob, I understand we found inappropriate content on Carol's phone, but I don't think resorting to parental surveillance measures is the right solution.

**** BOB: (assertive) Alice, we need to protect Carol. With the accessibility of the internet, we can't turn a blind eye. Parental surveillance can help us ensure their safety.

***** \(ALICE sighs, clearly torn between her concerns.\)

******ALICE: I worry that monitoring every move will erode Carol's trust in us. We need to find a balance, a way to guide them without invading their privacy.

******* \(ALICE looks at BOB, searching for common ground.\)

******** [They decides to install surveillance device] -> surveillance_yes
******** [They decides not to install surveillance device] -> surveillance_no

-> DONE

= surveillance_yes
~relation -= 1
* BOB: {su_u1}
    ~u += 1
* BOB: {su_d1}
    ~d += 1
* BOB: {su_m1}
    ~m += 1
* BOB: {su_r1}
    ~r += 1
* BOB: {su_v1}
    ~v += 1
- Carol is unhappy with their decisions -> trans
-> DONE

= surveillance_no
* ALICE: {su_u0}
    ~u += 1
* ALICE: {su_d0}
    ~d += 1
* ALICE: {su_m0}
    ~m += 1
* ALICE: {su_r0}
    ~r += 1
* ALICE: {su_v0}
    ~v += 1
- Carol is happy with their decisions -> trans
-> DONE

= trans
# CLEAR
* \[Carol was enrolled into a local high school\]
** Alice and Bob's living room. Carol sits on the couch, engaged in a passionate discussion with her parents, Alice and Bob.

*** CAROL: (passionate) Mom, Dad, I've been reading about transgender athletes and their participation in sports. I believe they should be allowed to compete according to their gender identity.

****ALICE: (supportive) That's great to hear, Carol. It's important to promote inclusivity and provide equal opportunities for everyone.

*****BOB: (displeased) Hold on, Carol. It's not that simple. We need to consider the fairness of competition and the potential advantages or disadvantages.

******CAROL: (defending her viewpoint) Dad, I understand your concerns, but transgender athletes go through hormone therapy, which helps level the playing field. It's about inclusivity and respecting their identity.

*******BOB: (frustrated) I still have reservations, Carol. It's not just about hormones; there are biological differences too. We need to ensure fair competition for all athletes.

******** \(ALICE interjects, trying to mediate the discussion.)
********* \[Alice decides to support Carol\] -> trans_yes
********* \[Alice decides to support Bob\] -> trans_no
-> DONE

= trans_yes
* ALICE: {tr_u1}
    ~u += 1
* ALICE: {tr_d1}
    ~d += 1
* ALICE: {tr_m1}
    ~m += 1
* ALICE: {tr_r1}
    ~r += 1
* ALICE: {tr_v1}
    ~v += 1
- Carol is happy that she gets mon's support. -> college
-> DONE

= trans_no
~relation-= 1
* ALICE: {tr_u0}
    ~u += 1
* ALICE: {tr_d0}
    ~d += 1
* ALICE: {tr_m0}
    ~m += 1
* ALICE: {tr_r0}
    ~r += 1
* ALICE: {tr_v0}
    ~v += 1
- Bob is happy that he got his wife's support. -> college
-> DONE

= college
# CLEAR
* \[Finally, Carol is applying for a college\]
{ relation <= 0:
-> college_far
- else:
-> college_close
}
-> DONE

= college_far
* Carol's bedroom. She sits at her desk, filling out her college application. Alice and Bob stand by the doorway, watching her with a mix of pride and concern.

** CAROL: (determined) I've made up my mind, Mom, Dad. I want to apply to this college that's far away from home. I need to spread my wings and explore new ideas and perspectives.

*** ALICE: (supportive but concerned) Carol, we've always wanted the best for you, but it's natural for us to worry about you being far away. We want you to be safe and secure.

**** BOB: (reflective) Carol, we've tried our best to create a protective environment for you, but we also understand the importance of independence and personal growth. We just want to make sure you're making a well-informed decision.

***** CAROL: (grateful) I appreciate everything you've done for me, Mom and Dad. You've provided a loving and supportive home, and I'm grateful for that. But I have to take this step to explore my own ideas and challenge myself.

****** ALICE: (teary-eyed) We're proud of you, Carol, and we trust the values we've instilled in you. We may have different perspectives, but we respect your journey and choices.

******* BOB: (softly) Remember, Carol, respect is a two-way street. While you explore new ideas, be open to understanding and respecting the values and experiences of others, even if they differ from your own.

******** CAROL: (nodding) I understand, Dad. Respect is crucial, and I'll carry that with me. I want to grow, but I'll always value the foundation you've given me.
    (Carol smiles, a mix of excitement and gratitude, feeling the love and support from her parents.)
    -> result
-> END
= college_close
* Carol's bedroom. She sits at her desk, filling out her college application. Alice and Bob stand by the doorway, observing her with smiles on their faces.

** CAROL: (content) Mom, Dad, I've made a decision. I want to apply to a college nearby so that I can be close to you and visit frequently. Our time together means the world to me.

*** ALICE: (joyful) Oh, Carol! We're so happy to hear that. We love having you around, and we cherish every moment spent together.

**** BOB: (proud) It warms my heart, Carol. We've always had a strong bond, and it's wonderful to know that you value our time together as much as we do.

***** CAROL: (grateful) I couldn't imagine being away from you both for long periods. We rarely have conflicts, and our perspectives align on so many things. I treasure our close relationship.

****** ALICE: (teary-eyed) We treasure it too, Carol. Our connection and understanding have been a blessing, and we're grateful for the bond we share.

******* BOB: Remember, Carol, as you continue to grow and explore, always appreciate the values and perspectives we've instilled in you. Let them guide you in making the right choices.

******** CAROL: (nodding) Absolutely, Dad. I'll carry your values with me, and I'll make sure to maintain the closeness we have while pursuing my own dreams.
    (ALICE and BOB exchange a glance, filled with love and reassurance.)
    -> result
-> DONE

= result
# CLEAR
* END (Click to see what your choices tell about you)
** Overall, The choices you made:

{u}{d}{m}{r}{v}
-> END
