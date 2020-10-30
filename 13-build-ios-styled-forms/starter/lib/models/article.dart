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
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
}

List<Article> articles = [
  Article(
    source: "The Verge",
    author: "Cameron Faulkner",
    title:
        "Samsung announces six new midrange Galaxy A-series phones - The Verge",
    description:
        "Samsung’s Galaxy A-series midrange phones for 2020 start at \$110 for the A01. There are six models in total, and at the top, flagship features like 5G connectivity will come this summer with the A51 5G, which costs \$500.",
    url:
        "https://www.theverge.com/2020/4/8/21212085/samsung-galaxy-a01-a11-a21-a51-a71-5g-mid-range-android-price-release-date",
    urlToImage:
        "https://cdn.vox-cdn.com/thumbor/jjus6vYLTcTKh3agpIviEYwKeKM=/0x103:1440x857/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/19882556/galaxya51hero2.jpg",
    publishedAt: "2020-04-08T13:19:07Z",
    content:
        "It has six new Galaxy A-series phones in total\r\nSamsung\r\nSamsung is refreshing its Galaxy A-series midrange phones for 2020. The lineup consists of a whopping six phones, all of which are aimed at people who want high-end features without paying an exorbitant… [+4504 chars]",
  ),
  Article(
    source: "Ars Technica",
    author: "Dan Goodin",
    title:
        "Attackers can bypass fingerprint authentication with an ~80% success rate - Ars Technica",
    description:
        "Fingerprint-based authentication is fine for most people, but it's hardly foolproof.",
    url:
        "https://arstechnica.com/information-technology/2020/04/attackers-can-bypass-fingerprint-authentication-with-an-80-success-rate/",
    urlToImage:
        "https://cdn.arstechnica.net/wp-content/uploads/2020/04/fingerprint-sensor-760x380.jpg",
    publishedAt: "2020-04-08T13:00:00Z",
    content:
        "45 with 34 posters participating, including story author\r\nFor decades, the use of fingerprints to authenticate users to computers, networks, and restricted areas was (with a few notable exceptions) mostly limited to large and well-resourced organizations that… [+9834 chars]",
  ),
  Article(
    source: "CNBC",
    author: "Thomas Franck",
    title:
        "Treasury Secretary Mnuchin says the government won't run out of money for small businesses - CNBC",
    description:
        "\"I want to assure all small businesses out there: We will not run out of money,\" Mnuchin said. He's confident Congress will OK more funds.",
    url:
        "https://www.cnbc.com/2020/04/08/treasury-secretary-mnuchin-says-the-government-wont-run-out-of-money-for-small-businesses.html",
    urlToImage:
        "https://image.cnbcfm.com/api/v1/image/106472676-1585867141819rts37yvg.jpg?v=1585867240",
    publishedAt: "2020-04-08T14:30:55Z",
    content:
        "Treasury Secretary Steven Mnuchin told CNBC on Wednesday that small businesses throughout the U.S. should not worry about their odds of receiving relief funding from the federal government.\r\nAsked by CNBC's Jim Cramer about the White House's work with the Sma… [+1994 chars]",
  ),
  Article(
    source: "Espn",
    author: "Bill Barnwell",
    title:
        "2020 NFL draft surprises - Why did the Packers, Eagles draft quarterbacks Jordan Love, Jalen Hurts? - ESPN",
    description:
        "Green Bay and Philadelphia surprised most everyone by taking quarterbacks early in the draft. Bill Barnwell makes sense of the moves.",
    url:
        "https://www.espn.com/nfl/story/_/id/29113276/2020-nfl-draft-surprises-why-did-packers-eagles-draft-quarterbacks-jordan-love-jalen-hurts",
    urlToImage:
        "https://a3.espncdn.com/combiner/i?img=%2Fphoto%2F2020%2F0429%2Fr693923_1296x729_16%2D9.jpg",
    publishedAt: "2020-04-30T11:01:03Z",
    content:
        "After the hype suggesting that this would be a wild 2020 NFL draft because of the coronavirus-enforced information gap between organizations, the weekend actually went mostly by the book. Teams generally stayed put and chose the prospects or attacked the posi… [+26379 chars]",
  ),
];
