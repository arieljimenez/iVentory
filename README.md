# iVentory

> What if i told you that you can make Elm desktop apps thats feels native?

## Development

- With `npm`, just run `$ npm run install`, that will triger a install of **npm** and **elm** dependencies.
- Run `$ npm run dev` for run the app in developer mode.

## Production

- Run `$ npm run build` to create the files that will be shiped to __electron__ (+info in  __Builds__).

## Builds

>Thinking in move this part to a separate readme and store it in build dir. :thinking:

- In the root folder, run `$ npm run prod`, this will install dependencies and _webpack_ the necessary files into `./build/dist` folder.
- Enter to the `build` dir.
- Run `$ npm install` to install all the dependencies and will download the electron builds dependencies for your platform.
- For builds:
  - :white_check_mark: OSX: `$ npm run mac`.
  - :white_check_mark: Windows (x86): `$ npm run win` (need wine to compile the exe in OSX and Linux systems).
    - To install `wine` in OSX, first we need install `xquartz`: `$ brew cask install xquartz`, and later, install wine with brew: `$ brew install wine`.
  - :ballot_box_with_check: Linux (x86_64): `$ npm run linux`.

## Stack

- :ballot_box_with_check: Alpine Containers
- :white_check_mark: Nodejs v8.10.0 (npm v5.6.0)
- :white_check_mark: Webpack 4.2.0
- :white_check_mark: Electron v1.8.4 + Chromium v59.0.3071.115
- :white_check_mark: Elm 0.18 (Frontend)
- :ballot_box_with_check: Golang (Backend/API/ORM)
- :ballot_box_with_check: MariaDB (in the kitchen)

## Why?

- **Why not?**
- 'cause i tried to back to develop desktop software (Java & C#) and at least for me... **IT SUCKS!**.
- Plus elm almost guarantee 0% of run time error in production.
- It is more fun code web apps that desktop ones!
