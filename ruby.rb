// ProductScanScreen.js
import React, { useState, useEffect } from 'react';
import { View, Text, Button } from 'react-native';
import { RNCamera } from 'react-native-camera';

const ProductScanScreen = () => {
  const [scanning, setScanning] = useState(false);

  const handleBarcodeScan = ({ data }) => {
    setScanning(false);
    // Handle scanned data and update inventory
    console.log('Scanned barcode:', data);
  };

  return (
    <View style={{ flex: 1 }}>
      {scanning ? (
        <RNCamera
          style={{ flex: 1 }}
          onBarCodeRead={handleBarcodeScan}
          captureAudio={false}
        />
      ) : (
        <Button title="Scan Product" onPress={() => setScanning(true)} />
      )}
    </View>
  );
};

export default ProductScanScreen;
