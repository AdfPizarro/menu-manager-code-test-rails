# README

Thank you for accepting our coding challenge. We ask that you spend about 2-3 hours on this task. It's also fine to take as much time as required to give us a good indication of your coding strengths, as your application will provide many topics of conversation in the next interview stage.

However, in this challenging time, we understand that not everyone has the luxury of sitting down to work on a test uninterrupted. Therefore if you don't manage to implement all of the rules, please describes how you would achieve them or any improvement you would make in the email.

## Notes

Tests were done with rspec you can run it inside the docker container using the follwoing command

`docker-compose exec web bundle exec rspec --format documentation`

Capybara tests were skipped i was not able to run it inside dockers in the time frame tried a lot of ways and none of them work



## Submission

Please submit your program as an online repository or downloadable link to your point of contact at OpenTable.

## The app

We have prepared this scaffold app for you to work in. It can be run completely with Docker and docker-compose, but if you prefer you can run it directly on your machine. The app is setup for Ruby 2.7.5 and Rails 7.

The app is generated with this command: `rails new --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-action-cable --skip-hotwire --skip-active-job`. But feel free to add back any libraries you want to work with.

You are also free to add and remove any gems as you see fit.

### Initial setup

- Build the docker image: `docker-compose build`
- Create the databases: `docker-compose run web rails db:setup`

### Running the app and regular tasks

- Start the Rails app server: `docker-compose up`
- Run the tests: `docker-compose run web rails test`
- Generate a new model: `docker-compose run web rails generate model widget name:string`
- Run migrations: `docker-compose run web rails db:migrate`

## The task

Create a CR(UD) application to manage menus for a restaurant. This restaurant, unfortunately, has a number of rules about the menus and dishes, please see the Rules section below.

Write as clean and maintainable code as possible, and make sure that it's covered by test cases. We recommend focusing on the data flow before making a fancy UI.

### Acceptance criteria

- The user must be able to add menus, like Starters and Mains
- The user must be able to add dishes to these menus
  - Dishes must have a name and a price
- Add a JSON API endpoint that exposes all menus and their dishes
- The test suite passes

### Rules

- The same dish name can not appear in more than one menu
- The sum of the prices of all dishes in a single menu can not be `77`.
- Dish names may not start with the letter `E`.

### Notes

- No need to support updating or deletion of dishes or menus
- The app only supports one restaurant, no need to support more

Example API output:

```json
{
  "Starters": [
    {
      "id": 1,
      "name": "Soup",
      "price": 3
    }
  ],
  "Mains": [
    {
      "id": 2,
      "name": "Salad",
      "price": 5
    }
  ]
}
```
