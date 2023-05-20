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
Welcome to "Ethics in Action: A Family's Journey"! In this engaging and thought-provoking text-based game, you will watch a child growing up in a loving household with parents named Alice and Bob. Prepare yourself for a captivating adventure where you'll encounter a range of ethical dilemmas and make critical decisions that will shape the course of their life.

* [Start] -> abortion

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
- Bob nods
The baby is not going to be born this time.
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
- Alice agrees not to abort the child

8months later, a healthy child named Carol is born
 -> lying
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
* Story ends
** Your choices in this story may suggest how much you value these ideas relatively:
Utilitarianism {u}
Deontology {d}
Morality {m}
Rights {r}
Virtues {v}
-> END
