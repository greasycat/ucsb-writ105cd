LIST ph = u,d,m,r,v
INCLUDE abortion.ink
INCLUDE lying.ink
-> intro

=== intro
Welcome to "Ethics in Action: A Family's Journey"! In this engaging and thought-provoking text-based game, you will watch a child growing up in a loving household with parents named Alice and Bob. Prepare yourself for a captivating adventure where you'll encounter a range of ethical dilemmas and make critical decisions that will shape the course of their life.

* [Start] -> abortion

= abortion
* ALICE: (emotionally) Bob, we're not ready for this. We can't provide for a child right now.

** BOB: (calmly) I understand, Alice, but we're talking about a life here. Can we really decide someone's future based on our circumstances?

*** ALICE: (tearfully) What kind of life can we offer? Can we give them what they deserve?

**** BOB: (softly) We have each other and support from loved ones. We'll face the challenges together.

***** \(ALICE searches for strength in BOB's eyes, conflicted and uncertain.\)

****** [They decided to abort the child] -> abortion_yes
****** [They decided to have the child] -> abortion_no


-> DONE

= abortion_yes
Alice decides to abort the child. She explains to Bob based on 
* Utilitarianism
    {ab_u1}
* Deontology
    {ab_d1}
* Morality
    {ab_m1}
* Rights
    {ab_r1}
* Virtues
    {ab_v1}
- Bob nods.
The baby is not going to be born this time.
-> END

-> DONE
= abortion_no
Bob decides to have the child. He explains to Alice based on
* Utilitarianism
    {ab_u0}
* Deontology
    {ab_d0}
* Morality
    {ab_m0}
* Rights
    {ab_r0}
* Virtues
    {ab_v0}
- Alice nods

8months later, a healthy child named Carol is born
* \[7 years later\] -> lying
-> DONE

= lying

*\(BOB answers the call, his face filled with concern. ALICE watches anxiously.\)
BOB: (on the phone) What? How serious is it? I'll be there soon. Thank you for letting me know.
**\(ALICE's eyes widen, worried.\)
    ALICE: What happened, Bob? Is everything okay?

***BOB: No, Alice. My sister is dying. It's serious. But if we tell my sick mother, it could worsen her condition.

****\(ALICE's face shows concern, contemplating their options.\)
    ALICE: Maybe we should visit your sister first, gather more information, and then decide how to handle your mother's situation.

*****BOB: I know, Alice. It's just... keeping this from my mother feels wrong, but we need to prioritize everyone's well-being.

****** \(ALICE reassures BOB, offering support.)
    ALICE: We'll figure this out, .
    
******* [ALICE: We have to tell the truth] -> lying_no
******* [BOB: We can't tell the truth] -> lying_yes

= lying_yes
When they are dealing with the phone calls. Carol quietly listens without making a sound.
Finally, Alice and Bob notices that their child is looking at them in a state of confusion
Bob knows he has to explain his decision to the child based on
* Utilitarianism
    {ly_u1}
* Deontology
    {ly_d1}
* Morality
    {ly_m1}
* Rights
    {ly_r1}
* Virtues
    {ly_v1}
- Alice nods
-> DONE
= lying_no
When they are dealing with the phone calls. Carol quietly listens without making a sound.
Finally, Alice and Bob notices that their child is looking at them in a state of confusion
Alice know he has to explain her decision to the child based on
* Utilitarianism
    {ly_u0}
* Deontology
    {ly_d0}
* Morality
    {ly_m0}
* Rights
    {ly_r0}
* Virtues
    {ly_v0}
- Bob nods
-> DONE


