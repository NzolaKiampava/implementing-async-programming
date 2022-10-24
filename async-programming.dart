// Async and await Function with Future - return value of integer
Future<int> totalCookiesCount() async {
  int cookiesCount = await lookupTotalCookiesCountDatabase(); // Returns 33
  return cookiesCount;
}

// Async method to call web server
Future<int> lookupTotalCookiesCountDatabase() async {
  // In a real world app we call the web server to retrieve live data
  return 33;
}

void main() {
  // User pressed button
  totalCookiesCount().then((count) {
    print('cookiesCount: ${count}');
  });
  print('This will print before cookiesCount');
  // This will print before cookiesCount
  // cookiesCount: 33
}
