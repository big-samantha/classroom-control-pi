class messages (
  $veryimportantmessage,
) {

  notify { 'a message is here':
    message => $veryimportantmessage,
  }
  
}
