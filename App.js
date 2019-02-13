/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 * @lint-ignore-every XPLATJSCOPYRIGHT1
 */

import React from 'react';
import {
  Platform, StyleSheet, Text, View
} from 'react-native';

import GradientView from './GradientView';

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' + 'Cmd+D or shake for dev menu',
  android:
    'Double tap R on your keyboard to reload,\n'
    + 'Shake or press menu button for dev menu',
});

type Props = {};
export default class App extends React.PureComponent<Props> {
  render() {
    return (
      <View style={styles.container}>

        <Text style={styles.welcome}>Welcome to React Native!</Text>
        <Text style={styles.instructions}>To get started, edit App.js</Text>
        <Text style={styles.instructions}>{instructions}</Text>
        <GradientView
          style={styles.gradientView}
          fromColor="rgba(1, 1, 1, 0.1)"
          toColor="green"
          cornerRadius={1.0}
          progress={1.0}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  gradientView: {
    width: '100%',
    height: '90%',
    flex: 1,
    position: "absolute"
  }
});
