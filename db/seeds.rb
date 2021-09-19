# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Course.create({
                   name: 'Photography Masterclass: A Complete Guide to Photography',
                   domain: 'Photography',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 4,
                   fee: 35,
                   details: 'Regardless of what your level of experience is or what type of camera you use, this in-depth course is designed to provide you with everything you need to take your photography skills to the next level.

Whether you prefer taking photos of nature, animals, or people, a great photographer knows how to compose a shot, light it, and edit it. By honing these skills, you can sell your photos so you can turn your passion into a career. This course shows you how.

Unlike other photography classes that are more limited in scope, this complete course teaches you how to take amazing photos and how to make money by selling them.',
                   course_photo:'https://www.outlookindia.com/outlooktraveller/public/uploads/articles/explore/wildlife_photography_feature_image.jpg'
                 })



 Course.create({
                   name: 'The Complete 2021 Web Development Bootcamp',
                   domain: 'Web Development',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 5,
                   fee: 25,
                   details: 'Welcome to the Complete Web Development Bootcamp, the only course you need to learn to code and become a full-stack web developer. With over 12,000 ratings and a 4.8 average, my Web Development course is one of the HIGHEST RATED courses in the history of Udemy! ⭐️⭐️⭐️⭐️⭐️ 

                   At 50+ hours, this Web Development course is without a doubt the most comprehensive web development course available online. Even if you have zero programming experience, this course will take you from beginner to mastery. ',

                   course_photo:'https://images.unsplash.com/photo-1542744094-3a31f272c490?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'
                 })

 Course.create({
                   name: 'CSR Development & Communications: Make a Difference Today!',
                   domain: 'Business',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 4,
                   fee: 50,
                   details: 'Ever wonder why a company would commit to spending hundreds of millions of dollars on a charitable cause or take a public stand on a current social issue?

Why would any company do such a thing?

The answer is: Corporate Social Responsibility. Or CSR for short.

Today, CSR has become essential for all companies, no matter if they are large or small. And having an effective CSR communication strategy is just as important.',

                   course_photo:'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80'
                 })

 Course.create({
                   name: 'Become a Product Manager | Learn the Skills & Get the Job',
                   domain: 'Product Mgmt',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 3,
                   fee: 35,
                   details: "The demand for Product Management is increasing at an insane rate. More and more companies are finally figuring out how important this discipline and this role is to their success. 

But how exactly do you get into the field? There arent any degrees in Product Management & there are no certifications. Most Product Managers get into the field through luck or connections. That ends here - we will get you up to date on ALL the skills you need to learn Product Management AND have the best chance at getting the job you want. There's no more ambiguity to it. We'll show you what you need to know and what you have to do - all taught from a Product Management insider.

Students aren't required to know anything beforehand - we'll teach you the fundamentals, how to apply them, how to develop into an advanced product manager, and finally how to maximize your chances to get a job as a Product Manager.",

                   course_photo:'https://images.unsplash.com/photo-1552664730-d307ca884978?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
                 })

 Course.create({
                   name: 'Complete Guitar Lessons System - Beginner to Advanced',
                   domain: 'Music',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 5,
                   fee: 75,
                   details: "I have learned soooo much from Erich's lessons! I've had my guitar for less than 5 months and I have such a firm foundation and core understanding of the principles and techniques I need. The sky is the limit, If my fingers can catch up to my brain. It will take a lot of practice, but thanks to this Complete Guitar System, I KNOW WHAT to practice and HOW (and why) to do it CORRECTLY!!! I'm on the continuum to being a great guitar player, and I'm loving it!!! It's been a pleasure and I look forward to revisiting many of the lessons since I get to keep them FOREVER!! Thanks Erich for answering all my questions!! You RAWK!

Who is this Guitar Course For?

    If you are a beginner then this course is perfect for YOU!

    If you have tried to play guitar before and quite.. then this course is perfect for YOU!

    If you have or do take personal one-on-one guitar lessons with a guitar instructor and feel like you are not getting the results you feel like you deserve than this course is perfect for YOU!",

                   course_photo:'https://images.unsplash.com/photo-1588450523206-e0b048d8f4d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
                 })
                                  
  Course.create({
                   name: 'The Ultimate Drawing Course - Beginner to Advanced',
                   domain: 'Art',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 2,
                   fee: 20,
                   details: ' The Ultimate Drawing Course will show you how to create advanced art that will stand up as professional work. This course will enhance or give you skills in the world of drawing - or your money back

The course is your track to obtaining drawing skills like you always knew you should have! Whether for your own projects or to draw for other people.

This course will take you from having little knowledge in drawing to creating advanced art and having a deep understanding of drawing fundamentals. ',

                   course_photo:'https://images.unsplash.com/photo-1599249300675-c39f1dd2d6be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
                 })
                           
  Course.create({
                   name: 'Pixel Art Master Course - Beginner to Professional/Freelance',
                   domain: 'Game Design',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 4,
                   fee: 39,
                   details: 'This course teaches everything about pixel art for video games. From the very basics to the advanced techniques. Students will learn about lines, shapes, colour theory and harmony, creating a colour palette, designing characters, backgrounds, items, making animation and even how to start freelancing. You will also learn a lot about game design principles.

If you are new to art or pixel art and want to create better art for your indie games then this course is for you.

This course is always growing with ﻿new lessons (you can check the future planned lessons in a document available on the Discord server). If there is a topic that you would like me to cover, you can message me and I will make it. I am on Udemy and Discord server every day so you can easily get into contact with me.  ',

                   course_photo:'https://images.unsplash.com/photo-1490810194309-344b3661ba39?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1290&q=80'
                 })

    Course.create({
                   name: 'Neuroplasticity: How To Rewire Your Brain',
                   domain: 'Personal Growth',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 3,
                   fee: 49,
                   details: "Neuroplasticity is the brain's ability to reorganize itself by forming new neural connections throughout life.

Not that long ago, scientists believed the brain could only create new connections during childhood and once we reached adulthood, we would basically be stuck with whatever got wired up there. You know, the good old ‘you can’t learn an old dog new tricks’.

Well, turns out you can. And it’s all about Neuroplasticity

Our brain continues to create new neurons throughout our life and the ability to reorganize our wiring is called neuroplasticity. And this has tremendous consequences. It means that, whoever we are, whatever we’ve become, it is never too late to change. We can learn new skills, we can change old habits and create new ones. We can learn, we can grow, we can improve our lives. ",

                   course_photo:'https://images.unsplash.com/photo-1573511860302-28c524319d2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80'
                 })              
                                  
 Course.create({
                   name: 'NFT Fundamentals (Buy, Create and Sell NFTs) ',
                   domain: 'Digital Art',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 1,
                   fee: 35,
                   details: "This effective video course will help you understand NFTs, and how to Buy, Create and Sell your own NFTs without wasting unnecessary time and money (or rather Ether and cryptocurrency) through trial and error.

You'll learn the key aspects around NFTs, including:

    What are NFTs?

    A brief history of NFTs

    Why you should create NFTs

    NFT blockchain basics

    A six step, easy to follow formula for buying, creating and selling an NFT

    Video 'walkthroughs' of how to buy, create and sell NFTs

...and much much more!",

                   course_photo:'https://images.unsplash.com/photo-1620912189868-30778f884588?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'
                 })              
     
                 
 Course.create({
                   name: 'The Most Important Techniques of Brazilian Jiu Jitsu',
                   domain: 'Martial Arts',
                   teacher_name: Faker::Movies::HarryPotter.character,
                   rating: 4,
                   fee: 49,
                   details: "Why is this course different than all the other ones out there? The answer is simple: efficiency! Efficiency is a key element for Jiu Jitsu, and this is what we had in mind when we created this course for you. The average video lasts about 2 minutes!

The techniques are detailed yet the videos are quick and to the point. They were made to be watched multiple times according with your need to revisit them. So there is no need to waste time watching a 10 minute video covering a 1 minute technique!

If you suffer from gaps on the basics and do not feel confident with larger, stronger, faster opponents on the mat this course will help solve your doubts and allow you to start getting the success you deserve!

Not only for beginners... This course will also give any blue belt who doubts their knowledge or ability added confidence in class or competition, or an advanced student from a school that doesn't benefit from having an official curriculum. This course is for you! ",

                   course_photo:'https://images.unsplash.com/photo-1515025617920-e1e674b5033c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1114&q=80'
                 })              
                                     

  User.create({
                   name: 'Test',
                   email: 'testuser@gmail.com',
                   password: 'test123',
                   password_confirmation: 'test123',
                 })

# Fav.create({
#         course_id:9,
#         user_id:1
# })

# Fav.create({
#         course_id:8,
#         user_id:1
# })