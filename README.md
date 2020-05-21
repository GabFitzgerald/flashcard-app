## The Problem

At university, many health based disciplines such as Anatomy, Physiology, and Pharmacology ask extensive knowledge of their students. Memorisation of subject matter plays a big part in gaining full understanding of these subjects. The most efficient way for students to memorise large amounts of information is the used for active recall and spaced repetition while studying, and there are many digital flash card solutions that help students make and study their material. The most widely used examples digital flash card applications by health students include Quizlet and ANKI. 

The biggest pain point students faced when using these applications is the barrier to studying is creating hundreds of flash cards which is extremely time consuming. Many students share, but existing connections as the previously mentioned apps do not promote the sharing of study material. Students are looking for solutions to maximise study time, and the market is currently open to solutions that allow students to quickly and efficiently share their flash cards and the ability to easily curate material into custom flash card decks built by them, for them, but in a fraction of the time. 

The other pain point I aim to address with my application is the ability of educators to curate and endorse student shared study material. Many pubic Quizlet decks used by students contain errors, and many cases of purposely misleading classmates. For this reason many educators do not encourage the use of shared study material. Educators are looking for solutions to endorse student created study material which can be safely shared and trusted by other students. 

<hr>

## The Solution 

Deployed application: https://flash-card-rails-app.herokuapp.com/

GitHub Repository: https://github.com/GabFitzgerald/flashcard-app

### The purpose 
The flash card app is designed easily share trusted flash cards between students and educators. This is to allow educators to endorse shared study material amongst students and means students can spend less time generating study material and more time studying it.

#### Target audience
The initial target audience for this application is university students and their educators in large cohorts studying health based subjects which require memorisation such as Anatomy, Physiology and Pharmacology. This has potential to expand into any subject matter which requires memorisation such as languages. There is also opportunity to expand outside of university such as school aged, and anyone looking to memorise information.

### Features and Functionality
- Create a card
  - question and answer text can be added
  - a picture can be uploaded with the question and/or the answer
  - image icon appears on index page if a picture is present
  - the user's profile picture appears on cards they created
  - cards styled to look like cards

- CRUD functionality with cards
  - only users who created a card can destroy it
  - only users who create a card can edit it (unless they are an educator)
  - any user can view the details of any cards
  - view, edit and destroy styled with font awesome icons

- Educators can endorse a card
  - whenever an educator created a card, it is automatically endorsed (checkbox can be unchecked in edit window)
  - educator can endorse student created cards
  - endorsed tick appears on all card that have been endorsed
  
- Student can study the cards on a separate study page
  - Questions with hidden answers which are revealed by hovering over the 'reveal answer' text.
 
- Users can login and sign up securely

- Users can learn more about the application on various static pages
  - about page, how to use page, for educators page

### Site Map
![flash card app site map](/docs/flash-card-app-site-map.png)

<details>
<summary> Screenshots </summary>

Cards index (educator view)
![cards index educator view](/docs/cards-index-educator-view.png)

Cards index (student view)
![cards index student view](/docs/cards-index-student-view.png)

Study mode (student view)
![study mode student view](/docs/study-mode-student-view.png)

Create new card (student view)
![create new card student view](/docs/create-new-card-student-view.png)

Create new card (educator view)
![create new card educator view](/docs/create-new-card-teacher-view.png)

Edit profile (educator view)
![edit profile educator view](/docs/edit-profile-educator-view.png)

Edit profile (student view)
![edit profile student view](/docs/edit-profile-student-view.png)

</details>

<hr>

### User Stories 

MVP

- Student Stories
    -  As a student I can create a flash card so that it can be studied later.
    - As a student I can access other user created flash cards so that I can save time on creating my study material
    - As a student I can study the available flash cards
    - As a student I can edit a flash card I created
- Educator Stories    
    - As a educator I can endorse student created flash cards, so that students know which ones to trust
- General Stories
    - As a user I can view all available flash cards
    - As a user I can add images to my flash cards
    - As a user, I can get more information about how the flash card app so that I can use it better

Nice to have

- As a user I can log in with an email and encrypted password so that my user data can be stored for next time I come the website
- As a user I can upload a profile picture and a display name so that I am easily identifiable 
- As a user I can identify who created a flash card so that I know it can be trusted
- As a student I can receive feedback on my study sessions so that I can improve*
- As a student I can view my study history on the application*
- As a user I can create a custom collection of flash cards to study*
- As a user I can search available flash cards so that I can find specific flash cards*
- As a user I can tag flash cards with the topic they are on so that they are easier to find*
- As an educator I can organsise flash cards that are relevant to a class or topic so that users can study relevant material*
- As a student I can see the difficulty of flash cards so that I know which ones to revise*
- As a student I can send feedback to a card creator for edits that need to be made so that the cards on the site are the best possible quality*
- As a user I can logout
- As a user I can change my role to educator so that I can access educator permissions
- As a user I can only access educator permissions if I am a verified educator*

*Incomplete at this stage, but would like to implement in the future

<hr>

### Wireframes

Desktop Wireframes:

![Desktop Wireframes](/docs/desktop-wireframes.png)

Tablet Wireframes:

![Tablet Wireframes](/docs/tablet-wireframes.png)

Mobile Wireframes:

![Mobile Wireframes](/docs/mobile-wireframes.png)

Full detail can be seen via this link: https://www.figma.com/file/RzS9tx3JEMopn580Hv9JcT/Untitled?node-id=0%3A1

<hr>

## Tech Stack
- Ruby on Rails
  - server-side web application framework written in Ruby with a model–view–controller framework
- Postgresql 
  - relational database management system used to store data in the application
- HTML5
  - for rendering views to the browser
- SCSS
### Ruby Gems
- devise ~> 4.7 (user authentication)
- rolify ~> 5.2 (user authorisation)
- activestorage-cloudinary-service ~> 0.2.3
- cloudinary ~> 1.14
- font-awesome-rails ~> 4.7 (provides easy to use helper methods for font awesome icons)
### Third Party Services
- Cloudinary
  - Cloudinary provides cloud-based image and video management services. It enables users to upload, store, manage, manipulate, and deliver images and video for websites and apps. I used Cloudinary to store users profile picutres and for cards question and answer images.
- Heroku
  - Heroku is a cloud platform as a service supporting serveral languages including Ruby. It is used by developers to build, run and scale applications. I used this for the deployment of my application.
- Github
  - Github provides hosting for software development version control using Git. I used this for the version control of my code. The software allows users to develop on branches without impacting the working code on the master branch. This was very useful when I made major mistakes on branches.

<hr>

## High-level abstractions
<details>
<summary>Embedded Ruby</summary>
Ruby code is embedded into html files (.html.erb) in the views of this application, indicated by <% %>, or <%= %> when rendered to the view. This means varying data will be presented to the user without having hard code the view files. Ruby logic can also be implemented into the html files. For example, my view will present different html if the user is an educator.

```ruby
<% @cards.each do |card| %>
  <div class='endorsement-tick'>
      <%= fa_icon "check-square" if card.endorsed %>
  </div>
  <%= card.question %>
  <% if card.question_picture.attached?%>
    <%= fa_icon "image x" %>
  <% end %>
  <hr>
  <%= card.answer %>
  <% if card.answer_picture.attached? %>
    <%= fa_icon "image x" %>
  <% end %>
  <hr>
  <%= image_tag(card.user.profile_picture, height: '32', width: '32') if card.user.profile_picture.attached? %>
  <%= link_to fa_icon("eye 2x"), card %>
  <%# only show edit and delete options to user if they created the card or if the user is an educator%>
  <% if current_user.id == card.user_id %>
    <%= link_to fa_icon("edit 2x"), edit_card_path(card) %>
    <%= link_to fa_icon("trash 2x"), card, method: :delete, data: { confirm: 'Are you sure?' } %>
  
  <% #eductors can endorse cards %>
  <% elsif current_user.has_role?(:educator) && card.endorsed != true %>
    <%= link_to fa_icon("edit 2x"), edit_card_path(card) %>
  
  <% #users who did not create the card and do not have educator permissions cannot delete or edit cards%>
  <% else %>

  <% end %>
<% end %>        
```

</details>

<details>
<summary>RESTful routes</summary>
Rails allows me to create RESTful routes, where the URLs for each HTTP request correspond with each controller's CRUD functionality. For example:

```ruby
get 'pages/about', to: 'pages#about', as: 'about_page'
```

This code calls the HTTP GET request and will route to the about action in the pages controller.

Additionally, the about_page_path shortcut can be used to link to the /pages/about url in other parts of the code meaning that if the url changes, the path will not break.
</details>

<details>
<summary>Forms</summary>

Forms in Ruby on Rails are similar to partials in that the same form can be rendered to both create and edit my users and cards. Form helper methods within these forms help to build complex form which POST updates to the controller and database with very little code. For example, image upload is achieved with the form helper method: .file_field.

```ruby
<%= form_with(model: card, local: true) do |form| %>
  <% if card.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(card.errors.count, "error") %> prohibited this card from being saved:</h2>

      <ul>
        <% card.errors.full_messages.each do |message| %>
          <li><%= message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

    <div class="field">
      <%= form.label :question %>
      <%= form.text_area :question %>
    </div>

    <div class="field">
      <%= form.file_field :question_picture %>
    </div>
    <hr>
    <div class="field">
      <%= form.label :answer %>
      <%= form.text_area :answer %>
    </div>

    <div class="field">
      <%= form.file_field :answer_picture %>
    </div>
    
    <%# only visible to educators, checkbox checked by default to save time %>
    <% if current_user.has_role?(:educator)%>
      <div class="field">
        <%= form.label :endorsed %>
        <%= form.check_box :endorsed, { checked: true }%>
      </div>
    <% end %>

    <div class="actions">
      <%= form.submit %>
    </div>
  <% end %>
```

</details>

<details>
<summary>Active Record</summary>
This is part of the the model component of the rails MVC framework allowing it to interact with the database. This allows the application to read, create, update and delete data from the database using the Ruby language. I spent a lot of time using active record in rails console before implementing active record associations into the application itself.
</details>
<details>
<summary>Active Storage</summary>
I used Cloudinary cloud service to upload and store images associated with my users and cards. This was configured in their respective models:

``` ruby
has_one_attached :profile_picture

has_one_attached :question_picuture
has_one_attached :answer_picuture
```

</details>

## Database Design

This application is built using the standard rails MVC (model, view, controller) framework. The application can be broken down into models: (Application, card, role and user); views: (layouts, cards, devise, users, and pages); and controllers: (application, cards, pages, and users). Everything within the app fall under the rules set but the application controller. In this app, the application controller has access the the current user's display name and profile picture, via the application_record model which access the database. The controller these pieces of data to the layouts view, which are rendered in html to show on the sidebar of every page of the website. 

Inheriting from the applications controller, the pages controller serves the static pages of the website. When a link in accessed, such as 'about_page_path', this route accesses the about method in the pages controller which serves the 'about.html.erb' view from the pages views folder. 

Also inheriting from the applications controller, the cards controller deals with all data involved with cards. The cards model establishes the relationship between a card and its user, the relationship between a card's images and active_storage, and interacts with the database. The data is passed to the controller which renders various cards views: index (on root page of website), create, edit, details. The cards controller also has a delete action which will remove a card from the database, but will not render a view. 

Finally, the user MVC deals with all the information about users. The user model establishes the users has_many relationship with their user created cards. It connects with rolify and devise models for user authentication and authorisation. It also connect with active_storage to store the profile picture. This information can then be accessed by the users controller. Which can pass information to the various users views: edit and new.

### Model Relations
The main model relations in this application exist between active_record_storage and the other models. Active Record Storage is used to store the optional question and answer pictures for the cards and also stores user's optional profile picture. There also is a relationship between a card and the user that created the card. When ever a new card is created, the cards controller accesses the current user's id using a devise helper method to assign the user to a card. This is accessed in the cards index to put profile images on the cards, to quickly show who created them. Finally, users have a role of teacher or student, which is assigned using a rolify helper method in the user edit controller.

### ERD
![ERD](/docs/erd.png)

<details>
<summary>Schema</summary>

``` ruby
create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.text "question"
    t.text "answer"
    t.boolean "endorsed"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cards", "users"
```

</details>

<hr>

### Task allocation/tracking

Tasks were tracked using a Trello board. Tasks were assigned a level of importance and whether they were part of the MVP. The MVP tickets were completed first before other tickets were attempted. 

Access here: https://trello.com/b/NzTzHSgN/flash-card-app

<details>
<summary>Time line</summary>

Friday 8th May
- Assignment given

Sat/Sun
- Brainstorming ideas
- Rails revision (devise, rolify, image upload)

Mon
- Solidify idea, some market research, look into other applications
- Start on docs (purpose of application)
- Rails revision(ERDs, controllers, models)

Tues
- create initial ERD
- generate models, views and controllers in practice app

Wed
- CS quiz and revision
- create new rails project (used for final app)
- generate users and cards scaffolds (customise routes and crud functionality)

Thurs
- User authentication with devise
- image upload with Cloudinary active storage
- generate pages controller and add accessory pages to site (about page, how to use page etc.)

Fri
- debug user authentication
- role with Rolify
- MVP built by 5pm!

Sat/Sun
- Debugging MVP
- some styling to make the cards look like cards

Mon
- Attempted to build search functionality (didn't work and isn't in final submission)
- Attempted to add card organisation with 'Classes' model (also didn't make it to production)

Tues
- Scaled back scope to ensure assignment requirements are met
- Revision on ERD
- Docs (wireframes) 

Wed
- CS quiz and revision
- Docs (database design)
- Added study mode page to cards controller

Thurs 21st May
- Assignment submitted at 10am
- Finalised docs and make slide deck for presentation
- Completed assignment resubmitted by 5pm
</details>