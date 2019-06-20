class IncrementCounter {}

class DecrementCounter {}

class CounterActionCreator {
  static IncrementCounter incrementCounter(){
    return IncrementCounter();
  }

  static DecrementCounter decrementCounter(){
    return DecrementCounter();
  }
}