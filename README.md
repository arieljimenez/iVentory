# iVentory

> What if i told you that you can make Elm desktop apps thats feels native?

## Dev Dependencies

- Git
- Npm
- Golang
- Google gcloud

## Development

- With `npm`, just run `$ npm run install`, that will triger a install of **npm** and **elm** dependencies.
- Run `$ npm run dev` for run the front end app, and;
- Run `$ sh init.sh` to run the front and backend.

## Production

- 1st: Run `$ npm run build` to create the files that will be shiped to __electron__ (+info in  __Builds__).
- 2nd: Enter to build dir and follow the instructions in the `README.md`.
- **TODO:** Compile golang instructions.

## Stack

- :ballot_box_with_check: Alpine Containers (for development)
- :white_check_mark: Nodejs v8.10.0 (npm v5.6.0)
- :white_check_mark: Webpack 4.2.0
- :white_check_mark: Electron v1.8.4 + Chromium v59.0.3071.115
- :white_check_mark: Elm 0.18 (Frontend)
- :white_check_mark: Google App Engine (SaaS: Golang 1.8 (Backend|API)
- :ballot_box_with_check: Google Datastore - SQLite (free tier)
- ~~:ballot_box_with_check: MariaDB (in the kitchen :v)~~

## Why?

- **Why not?**
- 'cause i tried to back to develop desktop software (Java & C#) and at least for me... **IT SUCKS!**.
- Plus elm almost guarantee 0% of run time error in production.
- It is more fun code web apps that desktop ones!
