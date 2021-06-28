# Group Productivity App

> This ruby on rails Application is a tool for solving the longest substring algorithm, user can enter a word and will be redirected to a page showing the longest substring of that word with no repeats of characters. 

## Basic Features and Usage:
-  Home screen with a form for inputting the words
-  View page with form and all entered words sorted in order of most recent.
-  Enter a word and get a return on the longest substring with no repeats and length of substring
-  The url link also changes and shows the entered word.
-  Validations in place, You may not enter a word that already has been entered and words are limited to a length of 35.

## Built With

- Ruby v2.7.2
- Ruby on Rails v5.2.4

## Live Demo

[Live Site](https://longest-sub-string.herokuapp.com/)


## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/Stephanie041996/Challange.git
$ cd App
```

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3



### Github Actions

To make sure the linters' checks using Github Actions work properly, you should follow the next steps:

1. On your recently forked repo, enable the GitHub Actions in the Actions tab.
2. Create the `feature/branch` and push.
3. Start working on your milestone as usual.
4. Open a PR from the `feature/branch` when your work is done.


### Running RSpec tests

- `cd` into the project directory;
- Run `bundle exec rspec`. 


### Deployment
- To deploy locally after cloning
- Run "rails server" in terminal
- open https://localhost:3000 in browser
- sign up and enjoy

## Authors

**Stephanie Sakuhuni**

- GitHub: [@stephanie041996](https://github.com/Stephanie041996)
- LinkedIn: [Stephanie Sakuhuni](www.linkedin.com/in/stephanie-michelle-sakuhuni) 

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Stephanie041996/Challange/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

MIT


