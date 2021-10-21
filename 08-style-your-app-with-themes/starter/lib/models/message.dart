class Message {
  int id;
  String author;
  String content;
  String sentTime;

  Message({
    required this.id,
    required this.author,
    required this.content,
    required this.sentTime,
  });
}

List<Message> messages = [
  Message(
    id: 1,
    author: 'Burna Boy',
    content:
        '''I don’t really know what a hit battle is but I’m willing to go toe to toe with ANY worthy challenger.''',
    sentTime: '02:05 PM',
  ),
  Message(
    id: 2,
    author: 'Reekado Banks',
    content: '''I’m game that energy let’s get it.''',
    sentTime: '05:59 PM',
  ),
  Message(
    id: 3,
    author: 'Tunde Ednut',
    content: '''Omo Instagram don ban me again o.''',
    sentTime: '08:29 PM',
  ),
  Message(
    id: 4,
    author: 'Tim Westwood',
    content:
        '''I would really love to invite programmers to do a rap battle on my show next week. What do you think about this?''',
    sentTime: '09:59 AM',
  ),
  Message(
    id: 5,
    author: 'Scott Adkins',
    content: '''Yeah...filming starts next week Monday''',
    sentTime: '07:32 PM',
  ),
];
