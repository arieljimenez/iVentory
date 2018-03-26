'use strict'
const electron = require('electron')

const app = electron.app
const BrowserWindow = electron.BrowserWindow

let mainWindow // save from garbage collector

app.on('ready', createWindow) // called when electron has initialized

function createWindow() {
  mainWindow = new BrowserWindow()
  // mainWindow = new BrowserWindow({icon: NativeImage.createFromPath(__dirname + '/icon.ico')
  //   width: 1024,
  //   height: 768
  // })

  mainWindow.maximize()

  mainWindow.loadURL(`file://${__dirname}/dist/index.html`)

  // open dev tools by default so we can see any console errors
  // mainWindow.webContents.openDevTools()

  mainWindow.on('closed', function () {
    mainWindow = null
  })
}

/* Mac Specific things */

// when you close all the windows on a non-mac OS it quits the app
app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') { app.quit() }
})

// if there is no mainWindow it creates one (like when you click the dock icon)
app.on('activate', () => {
  if (mainWindow === null) { createWindow() }
})
