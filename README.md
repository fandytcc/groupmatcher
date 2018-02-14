# Find Your Match!

A rails app to help Codaisseur's students and teachers to make new teams of 2 students every day.

<img width="700" alt="screen shot 2018-02-14 at 16 28 21" src="https://user-images.githubusercontent.com/32798242/36212416-313b98ec-11a4-11e8-88ae-b333e621357a.png">

## Matching Algorithm
Pairs/couples   are   not   matched   with   the   same   person   twice   until   he/she   has   been   matched   with all   the   registered   Students   until   that   moment.

## Steps
These are the steps our team followed when working on this app:
1. Set up project & research on Robin-tournament algorithm
2. Draw wireframes, sketch out how users navigate
3. Plan data models, database structure by understanding the impacts of user interaction
4. Generate the App & Models
5. Create initial seed data
6. Create controllers & views for matches overview & profile page
7. Styling with [Bootstrap](https://getbootstrap.com/)
8. Work on the matching algorithm (which can still be further improved)

## Model/ Database Structure
| Group      | Type   | Description    |
|------------|--------|----------------|
| groups     | string | Groups of pairs|

| Match      | Type   | Description    |
|------------|--------|----------------|
| matches    | string | Matches        |
| day        | date   | Matching date  |

| Profile   | Type   | Description   |
|-----------|--------|---------------|
| first_name| string | First name    |
| last_name | string | Last name     |
| user_id   | bigint | references    |

User model was created by using [Devise](https://github.com/RailsApps/rails-devise).

## Running Locally
Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:fandytcc/groupmatcher.git
cd groupmatcher
bundle install
rails db:create db:migrate db:seed
rails server
```
