README
======

Below are the instructions copy pasted from the primary repo: `https://github.com/hysan/react-karaoke-challenge`

## Setup

- Clone this repository in a different directory: `https://github.com/hysan/react-karaoke-challenge-backend`
- `cd` into it.
- Run `bundle install` to install your dependencies.
- Run `rails db:create rails db:migrate rails db:seed` to create and seed your database.
- Run `rails s -p 4000` and the API will be running on `localhost:4000`.

**Routes**

- URL for database: `http://localhost:4000`
- You will be given a `:user_id`

**Please use your own ID or else you will be editing someone else's data!**

| route                                    | method  | returns                              |
| ---------------------------------------- |:-------:| ------------------------------------:|
| `/users/:user_id/songs`                  | `GET`   | array of songs                       |
| `/users/:user_id/songs/:song_id`         | `GET`   | song object                          |
| `/users/:user_id/songs/:song_id/play`    | `PATCH` | updated song object (`plays` + 1)    |
| `/users/:user_id/songs/:song_id/like`    | `PATCH` | updated song object (`likes` + 1)    |
| `/users/:user_id/songs/:song_id/dislike` | `PATCH` | updated song object (`dislikes` + 1) |

**Notes**

- None of the `PATCH` calls require a `body`.
