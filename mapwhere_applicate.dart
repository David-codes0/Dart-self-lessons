void main() {
  // Using Where and map method

  const emails = [
    'abc@abc.com' ,
    'me@example.co.uk',
    'john@gmail.com',
    'katy@yahoo.com',
  ];
  const knownDomain = ['gmail.com', 'yahoo.com'];
  final unknownDomain = getUnknownDomain(emails, knownDomain);
  print(unknownDomain);
}


Iterable<String> getUnknownDomain(List<String> emails, List<String> knownDomain) =>  
  emails
  .map((email)=> email.split('@').last)
  .where((element) => !knownDomain.contains(element))
  .toList();
 
 // SUMMARY

 // iterables support functional operators
 