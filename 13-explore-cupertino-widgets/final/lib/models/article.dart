class Article {
  String source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
}

List<Article> articles = [
  Article(
    source: 'Engadget',
    author: 'Mat Smith,Daniel Cooper',
    title: '''The Morning After: Meet the new iPhone 13''',
    description:
        '''Yes, Apple is calling its newest iPhones the iPhone 13 series. Unlucky numbers, be damned. We’re getting four new devices, from the 5.4-inch iPhone 13 mini through to the 6.7-inch iPhone 13 Pro Max. Apple also revealed a long-time-coming iPad mini, which look…''',
    url:
        'https://www.engadget.com/the-morning-after-iphone-13-apple-111502073.html',
    urlToImage:
        'https://s.yimg.com/os/creatr-uploaded-images/2021-09/a1049550-1611-11ec-bef3-b6a3486b5957',
    publishedAt: '2021-09-15T11:15:02Z',
    content:
        '''Yes, Apple is calling its newest iPhones the iPhone 13 series. Unlucky numbers, be damned. Were getting four new devices, from the 5.4-inch iPhone 13 mini through to the 6.7-inch iPhone 13 Pro Max. A… [+6279 chars]''',
  ),
  Article(
    source: 'The Wall Street Journal',
    author: 'AnnaMaria Andriotis',
    title:
        '''Amazon Is Doing It. So Is Walmart. Why Retail Loves ‘Buy Now, Pay Later.’ - The Wall Street Journal''',
    description:
        '''Alexis Luedtke got her first buy now, pay later plan in 2019 after she was rejected for a credit card. She has used at least five more since to buy face cream, T-shirts and birthday gifts.\r\nInstallme...''',
    url:
        'https://www.wsj.com/articles/amazon-is-doing-it-so-is-walmart-why-retail-loves-buy-now-pay-later-11631784601',
    urlToImage: 'https://images.wsj.net/im-401784/social',
    publishedAt: '2021-09-16T09:30:00Z',
    content:
        '''Alexis Luedtke got her first buy now, pay later plan in 2019 after she was rejected for a credit card. She has used at least five more since to buy face cream, T-shirts and birthday gifts.\r\nInstallme… [+313 chars]''',
  ),
  Article(
    source: 'TechCrunch',
    author: 'Sarah Perez',
    title:
        'Tile secures \$40 million to take on Apple AirTag with new products',
    description:
        '''Tile, the maker of Bluetooth-powered lost item finder beacons and, more recently, a staunch Apple critic, announced today it has raised \$40 million in non-dilutive debt financing from Capital IP. The funding will be put towards investment in Tile’s finding te…''',
    url:
        'https://techcrunch.com/2021/09/16/tile-secures-another-40-million-to-take-on-apple-airtag-with-new-products/',
    urlToImage:
        'https://techcrunch.com/wp-content/uploads/2021/09/Pro-on-Gym-Bag.jpg?w=600',
    publishedAt: '2021-09-16T12:59:05Z',
    content:
        '''Tile, the maker of Bluetooth-powered lost item finder beacons and, more recently, a staunch Apple critic, announced today it has raised \$40 million in non-dilutive debt financing from Capital IP. The… [+6127 chars]''',
  ),
  Article(
    source: 'The Verge',
    author: 'Tom Warren',
    title: 'Microsoft accounts can now go fully passwordless',
    description:
        '''Microsoft is rolling out a fully passwordless option for Microsoft accounts. It will allow consumers to remove their password and authenticate using an app, security keys, Windows Hello, or SMS / email codes.''',
    url:
        'https://www.theverge.com/2021/9/15/22675175/microsoft-account-passwordless-no-password-security-feature',
    urlToImage:
        'https://cdn.vox-cdn.com/thumbor/S_18fWe_G-e-upqhKGFIalepagA=/0x95:1320x786/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/22174342/microsoftauthenticator.jpg',
    publishedAt: '2021-09-15T13:00:00Z',
    content:
        '''You can delete your Microsoft account password\r\nIf you buy something from a Verge link, Vox Media may earn a commission. See our ethics statement.\r\nYou no longer need a password for a Microsoft accou… [+2931 chars]''',
  ),
  Article(
    source: 'TechCrunch',
    author: 'Gary M. Shiffman',
    title: '''Ransomware: A market problem deserves a market solution''',
    description:
        '''To fight ransomware attacks, appreciate the economics — the markets that enable ransomware — and change the market dynamics.''',
    url:
        'https://techcrunch.com/2021/09/16/ransomware-a-market-problem-that-deserves-a-market-solution/',
    urlToImage:
        'https://techcrunch.com/wp-content/uploads/2021/09/GettyImages-1284232947.jpg?w=589',
    publishedAt: '2021-09-16T13:12:43Z',
    content:
        '''REvil is a solid choice for a villains name: R Evil. Revil. Evil and yet fun. I could imagine Black Widow, Hulk and Spider-Man teaming up to topple the leadership of REvil Incorporated.\r\nThe criminal… [+5341 chars]''',
  ),
];
