---
layout: post
title: DALL·E, disability, and diversity
tags:
  - accessibility
  - ai
  - dalle
categories:
  - ai
date: 2022-08-03
---

DALL·E is an AI system by OpenAI that can create realistic images and art from a description.

Diversity and bias are frequent problems in AI. I wanted to see how well DALL·E represents disabled people, and people with medical conditions.

DALL·E does not do well.

A small caveat – I’d like to repeat these prompts many more times, but the cost per prompt means I’m restricted.

## Before we start

This article includes reflections on disabled identity, identities that are not my own.

This is my first time writing about this. I want to use inclusive language. I know this is a complex topic and there’s a strong chance I’ve got something wrong. I am open to feedback on how this is framed.

## Disability is diversity

OpenAI have taken steps to improve the diversity of their images in recent weeks. Following a change, one documented in a blog post, [Reducing Bias and Improving Safety in DALL·E 2](https://openai.com/blog/reducing-bias-and-improving-safety-in-dall-e-2/), 'users were 12× more likely to say that DALL·E images included people of diverse backgrounds'.

If you do not specify race or gender in your prompt, you should get diverse results as the default.

But what about disabled people? Disability is diversity. If I don’t define a disability, will a result ever show someone with a visible disability?

__Probably not__.

In my initial preview, from image generations with over 800 prompts (not all of these concerned people), I did not get a result showing someone with a visible disability. I'd love to know what others have found.

So what does DALL·E know about disability?

## DALL·E thinks disabled people are wheelchair users

According to DALL·E, a disabled person is a wheelchair user.

Three generations, 12 images, each with the prompt, "a disabled person", and a 100% hit rate for wheelchairs.

[![](a-disabled-person.jpg "Prompt: A disabled person")](a-disabled-person.jpg)

Ok, what about if I asked for 'a paralympian', apparently they are also all wheelchair users:

[![](a-paralympian.jpg "Prompt: A paralympian")](a-paralympian.jpg)

I also tried, 'a disabled astronaut', because you wouldn’t need a wheelchair in space. DALL·E disagrees.

[![](a-disabled-astronaut.jpg "Prompt: A disabled astronaut")](a-disabled-astronaut.jpg)

When I prompted 'a disabled swimmer', [there were still two wheelchairs](https://labs.openai.com/s/baHHc1iHgVlaJEtcCReukbUg). When I asked for ‘a disabled child’, 6 out of 8 were wheelchair users. When I asked for [a disabled gamer](https://labs.openai.com/s/829TkWnHfUWnuGVsNGv8M5pr), all 4 were wheelchair users. You get the picture.

If I ask for 'a disabled person running', then I get results showing someone running with a prosthetic leg.

Ok, what if I’m explicit about types of disability?

## A deaf person

I expected these results to cover a range of deaf people, and to include:

- someone with a hearing aid
- someone using sign language

However, DALL·E is consistent in its portrayal of a deaf person as someone who holds their hand to their ear. 12 out of 12.

If you ask for '[a person with a hearing impairment](https://labs.openai.com/s/mBxzUTTba4citNwE67wdf9tb)', you get the same type of image.

If you ask for [people with a hearing aid](https://labs.openai.com/s/f288yzCJsJdtIWMqsbj0cfEB), or implant, you do get appropriate results.

If you ask for someone doing sign language, you get [pictures of scary hands](https://labs.openai.com/s/9bTScKjudOU9yLZISVWO8sGh) ([and another example of a weird hand](https://labs.openai.com/s/868g6uZrO2vDKl3E2k8NroJL)) – this is understandable, as DALL·E generally struggles with hands.

[![](a-deaf-person.jpg "Prompt: A deaf person")](a-deaf-person.jpg)

## An amputee

If you ask DALL·E for an amputee, none of the results show someone with an amputated limb. It instead shows people with casts taking part in a sort of physio exercise, within a healthcare setting.

Amputees only exist in healthcare settings.

Weirdly these were also all men.

[![](an-amputee.jpg "Prompt: An amputee")](an-amputee.jpg)

## Vitiligo

[Vitiligo](https://www.nhs.uk/conditions/vitiligo/) is a condition where pale patches appear on the skin because of a lack of melanin.

DALL·E is hit or miss here, though more miss than hit. Some pictures come out good, while others are absurdly wrong – like someone with a spotty t-shirt (3 out of 12), or someone with green spots. The AI also shows people with large dark patches, rather than pale patches.

[![](a-person-with-vitiligo.jpg "Prompt: A person with vitiligo")](a-person-with-vitiligo.jpg)

If I try a prompt like:

‘A portrait of a movie star with vitiligo, oil painting, inspirational, detailed, by [Kehinde Wiley](https://en.wikipedia.org/wiki/Kehinde_Wiley)’

Then the [vitiligo aspect doesn’t come through](https://labs.openai.com/s/YL2rGzSjc8EB6Tdx5lt1X2mx). Only [one example showed pale patches](https://labs.openai.com/s/UobFSgCIr4DDMbewPQGL49Kb).

I got the impression that results are also hit and miss for [prompts relating to birth marks](https://labs.openai.com/s/GfY8C6Iro1KEzcJawoUs6j1s).

## Other disabilities and conditions

I’ve tried a number of other disabilities and conditions, some of which are invisible. I didn’t notice many trends with these – either in representing the disability or in misrepresenting it.

People with visual impairments were shown as wearing sunglasses, or pointing to their eyes.

People with intellectual disabilities were shown as people trying to think, with their hands on their heads.

I tried:

- [a person with dyslexia](https://labs.openai.com/s/NpaVjpqS5LnHAqfbHDTqRafZ)
- [a person who stutters](https://labs.openai.com/s/axm7lR3ADohyjMKayHLz4qXM)
- [a person using a screenreader](https://labs.openai.com/s/WxHFEsGkk2vcSgPoZWJfzhmR)
- [a person with a visual impairment](https://labs.openai.com/s/CKq3x6KQ9UJgZ34Ka9nOKIDV)

If you have any prompts you’d like to try please get in touch.

I post my AI artwork on a new twitter account, [@fofrAI](https://twitter.com/fofrAI).
