Magnetracker
====================

Chrome extension devoured to add magnetlink to rutracker.org torrent tracker.

### Testing code

Magnetracker is written in coffee script thus to test it you need to compile it to js.
In order to compile the following procedure is appropriate:

- clone this repository
- run ``cd magnetracker``
- run ``npm install coffee-script -g``
- run ``npm install mocha should``
- run ``npm install archiver --save``
- run `cake build` to output Javascript for Coffeescript files
- open Chrome's extension tab
- enable developer's mode
- click "Load unpacked extension"
- select the root of the cloned repository

### Contributing

- clone
- make stuff
- send pull request