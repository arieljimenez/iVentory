# iVentory Builds

- In the root folder, run `$ npm run prod`, this will install dependencies and the necessary files into `./build/dist` folder.
- Enter to the `build` dir.
- Run `$ npm install` to install all the dependencies and will download the electron builds dependencies for your platform.
- For builds:
  - :white_check_mark: OSX: `$ npm run mac`.
  - :white_check_mark: Windows (x86): `$ npm run win` (need wine to compile the exe in OSX and Linux systems).
    - To install `wine` in OSX, first we need install `xquartz`: `$ brew cask install xquartz`, and later, install wine with brew: `$ brew install wine`.
  - :ballot_box_with_check: Linux (x86_64): `$ npm run linux`.
