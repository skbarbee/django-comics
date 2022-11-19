# django-comics

## Technologies Used

  - [Django]
  - [Python]
  - [PostgreSQL]

## ERD
![Comic Team - ERD](https://user-images.githubusercontent.com/112446901/202876170-d9bdbede-f6b7-462b-a848-4064783956d1.png)

## Route Tables
​
### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/` | `users#changepw`  |
| DELETE | `/sign-out/`        | `users#signout`   |
​
### Users
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/users`| `users#create`|
| GET    | `/users/`|`users#index`|
| GET    | `/users/:userId` | `users#show`|
| PATCH  | `/user/:userId` | `user#update`|
| DELETE | `/user/:userId` | `user#delete`|
​
### Comic
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/comics`| `comics#create`|
| GET    | `/comics/`|`comics#index`|
| GET    | `/comics/:comicId` | `comics#show`|
| PATCH  | `/comic/:comicId` | `comic#update`|
| DELETE | `/comic/:comicId` | `comic#delete`|
​
### Liked
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/likes`| `likes#create`|
| GET    | `/likes/`|`likes#index`|
| GET    | `/likes/:likeId` | `likes#show`|
| PATCH  | `/like/:likeId` | `like#update`|
| DELETE | `/like/:likeId` | `like#delete`|
​
### Authors
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/authors`| `authors#create`|
| GET    | `/authors/`|`authors#index`|
| GET    | `/authors/:authorId` | `authors#show`|
| PATCH  | `/author/:authorId` | `author#update`|
| DELETE | `/author/:authorId` | `author#delete`|
​
### Illustrators
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/illustrators`| `illustrators#create`|
| GET    | `/illustrators/`|`illustrators#index`|
| GET    | `/illustrators/:illustratorId` | `illustrators#show`|
| PATCH  | `/illustrator/:illustratorId` | `illustrator#update`|
| DELETE | `/illustrator/:illustratorId` | `illustrator#delete`|
​
### Publishers
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/publishers`| `publishers#create`|
| GET    | `/publishers/`|`publishers#index`|
| GET    | `/publishers/:publisherId` | `publishers#show`|
| PATCH  | `/publisher/:publisherId` | `publisher#update`|
| DELETE | `/publisher/:publisherId` | `publisher#delete`|
​
### Characters
| Verb   | URI Pattern     | Controller#Action  |
|--------|-----------------|--------------------|
| POST   | `/characters`| `characters#create`|
| GET    | `/characters/`|`characters#index`|
| GET    | `/characters/:characterId` | `characters#show`|
| PATCH  | `/character/:characterId` | `character#update`|
| DELETE | `/character/:characterId` | `character#delete`|
