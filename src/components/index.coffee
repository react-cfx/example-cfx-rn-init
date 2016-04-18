echo = -> console.log arguments
{
  cfx
  Styl

  Comps

  Platform
} = require 'cfx.rn'
{
  View
  Text
} = Comps

styles = Styl
  container:
    flex: 1
    justifyContent: 'center'
    alignItems: 'center'
    backgroundColor: '#F5FCFF'
  welcome:
    fontSize: 20
    textAlign: 'center'
    margin: 10
  instructions:
    textAlign: 'center'
    color: '#333333'
    marginBottom: 5

module.exports = cfx ->

  instructions =
    if Platform.OS is 'ios'
    then [
      'To get started, edit index.ios.js'
      [
        'Press Cmd+R to reload,'
        'Cmd+D or shake for dev menu'
      ].join '\n'
    ] else [
      'To get started, edit index.android.js'
      'Shake or press menu button for dev menu'
    ]

  View style: styles.container
  ,
    Text style: styles.welcome
    , 'Welcome to React Native!'
  ,
    Text style: styles.instructions
    , instructions[0]
  ,
    Text style: styles.instructions
    , instructions[1]
