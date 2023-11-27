import * as React from 'react';
import { StyleSheet, View, TouchableOpacity, Text } from 'react-native';
import { SampleAccellorModuleViewManager } from 'react-native-sample-accellor-module';

export default function App() {
  const showFrameworkBtnAction = () => {
    SampleAccellorModuleViewManager.showScreen('');
  };

  return (
    <View style={styles.containerStyle}>
      <TouchableOpacity
        style={styles.buttonStyle}
        onPress={showFrameworkBtnAction}
      >
        <Text style={{ color: 'white' }}>Show framework screen</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  containerStyle: {
    width: '100%',
    height: '100%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  buttonStyle: {
    width: 200,
    height: 40,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'blue',
  },
});
