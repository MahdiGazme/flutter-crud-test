
class DataPassingService {
  bool passedData = true;

  set setData(final bool data) {
    passedData = data;
  }

  bool get getData => passedData;
}
