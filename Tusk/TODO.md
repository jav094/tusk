#  Todos

### CHECK DEVICES
  *  check for currently connected bluetooth audio peripherals
         * this app will play the role of a central by implementing CBCentralManager: https://developer.apple.com/documentation/corebluetooth/cbcentralmanager
         * and it will show information about connected CBPeripheral objects: https://developer.apple.com/documentation/corebluetooth/cbperipheral
         * grab the name of the peripheral, which should be a CBCharacteristic: https://developer.apple.com/documentation/corebluetooth/cbcharacteristic
  *  check for any currently connected wired headphones
         * what if both wired and bluetooth are connected at once? Is that possible?
  *  if no bluetooth or wired, check if regular speakers are working
  *  check if the connected device is muted
  *  if none of these happen, probably got an error?
  
  ### UPDATE STATUS ITEM
  *  show the icon and name for the connected audio in the menu bar's status item
  
  ### LISTEN FOR CHANGES
  *  if the connected audio device changes, update the status item
  

