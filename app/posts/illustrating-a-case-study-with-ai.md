---
layout: post
title: Illustrating a case study with AI – When things got silly for Millie
tags:
  - dfe
  - ai
  - dalle
  - midjourney
categories:
  - projects
date: 2022-08-01
---

On a project for the Department for Education (DfE) we needed a captivating way of showing the benefits of a shared identity service. We needed a narrative.

We chose to tell a story of a young teacher who goes through the DfE collection of digital services as her career progresses.

She applies for teacher training, completes her training, applies for jobs, completes her induction training, takes on extra professional qualification courses, and so on.

At the same time, two things happen:

1. her name is mistakenly entered incorrectly into a system
2. she later gets married and changes her name

The story shows what happens when names get mixed up, and how these problems could be avoided with a joined up identity service.

## When things got silly for Millie

We called the teacher Millie, and our content designer Emma added the rhyme. I was asked to add some visuals to make the story compelling.

'Silly for Millie' screamed ‘children’s story book’ to me.

I’d been experimenting with AI image tools for a few weeks, and I felt confident I could create a consistent storybook style using them.

### The illustrated story

[View the PDF](https://tra-digital-design-history.herokuapp.com/docs/when-things-got-silly-for-millie.pdf)

<div class="app-slideshow" style="padding-top: 62%">
  <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQqN02_5934OOMp0vx-5GREBmk88mXSz0OfklDh0VI6wMPFeQBHHnFro2mq7tSgks_89WQVgJ1OArUc/embed?start=false&loop=false&delayms=10000" frameborder="0" width="1440" height="839" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</div>

[![A screenshot of the PDF of the story, showing different page previous](when-things-got-silly.png "A screenshot of the illustrated story")](when-things-got-silly.png)

[![A screenshot of Google Slides with 7 blue slides](how-it-looked-before.png "How it looked before we added illustrations")](how-it-looked-before.png)

## Midjourney and DALL·E

In July I was given access to [DALL·E](https://openai.com/dall-e-2/) (after joining the waitlist in April), an AI system by OpenAI that can create realistic images and art from a description.

I discovered [Midjourney](https://www.midjourney.com/home/#about) shortly after, a small independent research lab with its own product.

Both take prompts and make images from them.

### Midjourney

Midjourney is expressive, detailed and beautiful when it comes to making art. It’s also awkward to get what you want if you’re trying to escape their house aesthetic.

You can set an aspect ratio, reuse a seed and use another image as a reference.

[![A path going along a hill, left to right](midjourney-example.png "An example Midjourney image<br >Prompt: A path going along a hill, left to right")](midjourney-example.png)

### DALL·E

DALL·E is more vague with art, but can produce astounding realism. It doesn’t really have a house aesthetic, unless you count the generation artefacts that appear in complex images (most notably in faces).

You can produce anything with it more easily, but images must be square, and sometimes that doesn't fit the prompt. You frequently get awkward crops being generated.

DALL·E has a powerful in-painting feature. You can erase parts of an image and refill them with a prompt. This has led users to make [‘uncrops’ of famous artworks like the Mona Lisa](https://www.reddit.com/r/dalle2/comments/vvex46/mona_lisa_uncropped/).

[![resplendent quetzal bird in the rainforest with tropical leaves, in an art deco style, with greens, reds and warm pastels](dalle-example-1.png "[An example DALL·E image](https://labs.openai.com/s/TM6kgM6Xn1oMn5B3IyxBwURg)<br >Prompt: a resplendent quetzal bird in the rainforest with tropical leaves, in an art deco style, with greens, reds and warm pastels")](dalle-example-1.png)

## Bringing Millie to life using AI

I used Midjourney for the majority of the artwork.

Its generations were invariably artistic and consistent. DALL·E was more hit and miss – sometimes I’d get a storybook image, other times it would be more like a child’s drawing or a doodle in MS Paint ([an example of a miss](https://labs.openai.com/s/HEaj2T88sqCbayTAW4cSE0U1)).

Midjourney gave me the right tools to make the job easier.

### Aspect ratio

I could specify a 16:9 aspect ratio for images, meaning they’d perfectly fill a slide in Google Slides, `-- ar 16:9`.

### Maintaining consistency

From the beginning, Midjourney seemed to have a consistent, somewhat French-looking, representation of what Millie should look like.

Each prompt would produce a picture of her with dark brown hair and a slight parting (left or right, but the image could be flipped). Sometimes Millie would be an adult, sometimes a child, I’d need to add "teacher" to prompts to increase her age.

I was able to enforce a consistent style by:

- always reusing the phrase "when things got silly for Millie" in each prompt
- using the same reference image as a basis for each prompt (with an increased weighting too, `--iw 1`)
- reusing the same random seed, so each generation started from the same point, `--seed 1234`

An example prompt:

`/imagine prompt: [image URL] --iw 1 when things got silly for millie, [a college building with a spring sunrise, bright and early, very light, warm glow, light blues and greens] --ar 16:9 --seed 1234`

The description would change, for example:

- `celebration with balloons, everyone is happy`
- `millie celebrates`
- `the front of a school`
- `standing at the school gates, a big old school and playground`

### Cost

I could experiment over and over within a standard Midjourney subscription. Results were consistent but sometimes had strange artefacts, missing or unconnected limbs, or some strange upscaling issue, but I could try and try again to get it perfect.

With DALL·E every prompt costs about 12 pence ($15 for 115 prompts), and I couldn’t maintain consistency.

And there was a lot of iteration.

[![A screenshot from my Midjourney profile showing many different generations of Millie](iterations.png "Lots of Midjourney iterations")](iterations.png)

## Icons and post-generation edits

DALL·E was invaluable for two specific parts of the process:

1. Fixing Midjourney generation issues
2. Creating icons for the blackboard slides

### Fixing Midjourney with DALL·E

Where Midjourney had given an almost perfect image, but a part of it was very obviously wrong, I could take a crop and use DALL·E in-painting.

This was usually a problem with eyes, or oddly toothy grins.

[![A screenshot of DALL·E showing 4 images of Millie with different eyes, three look demonic, one looks sad](inpainting-fix-1.jpg "Fixing Millie’s eyes using DALL·E in-painting")](inpainting-fix-1.jpg)

[![A screenshot of DALL·E showing 4 images of Millie with different eyes and expressions](inpainting-fix-2.jpg "Trying different expressions with DALL·E in-painting")](inpainting-fix-2.jpg)

[![A before and after image, using inpainting to fix Millie’s mouth](wedding-inpainting-fix.png "A before and after image, using in-painting to fix Millie’s mouth")](wedding-inpainting-fix.png)

In-painting could also wildly miss the mark too:

[![A screenshot of DALL·E showing 4 images of Millie with scary faces, some missing eyes](inpainting-miss.png "Some scary Millie expressions")](inpainting-miss.png)

### Using DALL·E for icons

DALL·E is excellent at making icons. It got these right first time.

In the slides I use a blackboard analogy to show the various data states.

I used prompts like:

`a chalk drawing of a database on black`
`a chalk drawing of a user profile picture, on black`
`a chalk drawing of a white checkmark, on black`

[![Examples of chalk drawings generated by DALL·E, showing checkmarks, crosses and Xs](dalle-icon-generations.png "Examples of chalk drawings generated by DALL·E<br />(note the ‘cross’ which became an ‘X’)")](dalle-icon-generations.png)

These were finessed in Photoshop to increase their brightness and contrast against the blackboard:

[![A blackboard showing different databases and their data values, and illustrating how icons generated by DALL·E were used](icons-example.png "User icon, database icon, checkmark and 'X' icons")](icons-example.png)

## How long it took

The graphics for this story – 27 separate images selected and edited from roughly 240 prompts – took about a day to produce.

Without AI I would never have created anything like this. I may have tried to use stock images to convey emotion, or icons for databases, but the results wouldn’t have had nearly the same impact.

Just two months ago it wouldn’t have been made like this.

This story is doing its job better than imagined.
