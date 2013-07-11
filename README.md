Little Books. [![Build Status](https://travis-ci.org/feministy/littlebooks.png)](https://travis-ci.org/feministy/littlebooks)
==============


A [Dev Bootcamp](http://www.devbootcamp.com) final project.

Little Books was inspired on [NPR](http://www.npr.org/blogs/codeswitch/2013/06/25/193174358/as-demographics-shift-kids-books-stay-stubbornly-white), which discusses the lack of diversity in children's books and the importance of diversity in children's reading experiences. The goal of Little Books is to help parents, teachers, and educators enrich the lives of children by modyfing beloved stories to feature a cast of diverse characters.

Designed to have stories created by adults and read by children, the reader view is optimized for iPads and other small screen devices.

Created by:

* Liz Abinante - [@feministy](https://twitter.com/feministy) - [eabinante@gmail.com](mailto:eabinante@gmail.com)
* Bill Van Der Laan - [@Vanderln](https://twitter.com/Vanderln) - [billvanderlaan@gmail.com](mailto:billvanderlaan@gmail.com)
* Nestor Castillo - [@NCarlosCastillo](https://twitter.com/NCarlosCastillo) - [nes_23@yahoo.com](mailto:nes_23@yahoo.com)

URL
---

Production: [Little Books](http://littlebooks.herokuapp.com/)

Staging: [Little Books Staging](http://littlebooks-staging.herokuapp.com/)


Install
--------

1. Fork the repo and clone the files onto your machine:

    ```
    $ git clone https://github.com/[YOUR GITHUB USERNAME]/littlebooks.git
    ```

2. Navigate to the application directory and run bundle install:

    ```
    $ bundle install
    ```
3. Navigate to the application config directory open the local_env.yaml.sample file. Define the environment variables for Gmail and Facebook in the format displayed below. Save a new copy as local_env.yml.

  ```
  GMAIL_USERNAME: "Your Google username here"
  GMAIL_PASSWORD: "Your super secret password here"
  GMAIL_DOMAIN: "You domain here"

  FACEBOOK_KEY: "Your Facebook key here"
  FACEBOOK_SECRET: "Your Facebook secret token here"
  ```
4. Create, migrate and seed your database with one simple rake task:

  ```
  $ rake db:setup
  ```

5. Launch the application locally:

  ```
  $ rails s
  ```
6. View application by navigating to http://localhost:3000 in your browser



