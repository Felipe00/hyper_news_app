class News {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  News(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  News.fromJson(Map<String, dynamic> json) {
    source =
        json['source'] != null ? new Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.source != null) {
      data['source'] = this.source.toJson();
    }
    data['author'] = this.author;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    data['urlToImage'] = this.urlToImage;
    data['publishedAt'] = this.publishedAt;
    data['content'] = this.content;
    return data;
  }

  News mockedData1() => News(
      author: 'Sam Rutherford',
      content:
          'De olho no home office e no trabalho híbrido, a Microsoftestá atualizando algumas de suas principais ferramentas de produtividade, incluindo o Teams e o Office 365, que passarão a ter seus aplicativo… [+4021 chars]',
      description:
          'O Teams ganhará uma nova interface, e alguns aplicativos vão intensificar a integração, para facilitar o trabalho colaborativo. The post Microsoft atualiza Teams, Office 365 e apps de produtividade para facilitar trabalho híbrido appeared first on Gizmodo Bra…',
      publishedAt: '2021-06-17T19:22:41Z',
      source: Source(id: null, name: 'Uol.com.br'),
      title:
          'Microsoft atualiza Teams, Office 365 e apps de produtividade para facilitar trabalho híbrido',
      url:
          'https://gizmodo.uol.com.br/microsoft-atualiza-teams-office-365-apps-trabalho-hibrido/',
      urlToImage:
          'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2021/06/1c95f206350c755ed28c902b8993a319-1000x563.png');

  News mockedData2() => News(
      author: 'Allan Camilo',
      content:
          'Meses após a aquisição da Bethesda pela Microsoft por mais de 7 bilhões de dólares, tivemos na tarde deste domingo (13) a primeira grande apresentação do estúdio. No bloco “Xbox &amp; Bethesda Showca… [+4583 chars]',
      description:
          'Meses após a aquisição da Bethesda pela Microsoft por mais de 7 bilhões de dólares, tivemos na tarde deste domingo (13) a primeira grande apresentação do estúdio. No bloco “Xbox & Bethesda Showcase”, que integra a grade da E3 2021, foram revelados aguardados …',
      publishedAt: '2021-06-13T19:19:42Z',
      source: Source(id: null, name: 'Uol.com.br'),
      title:
          'Stalker 2, Forza Horizon 5, Starfield e os 30 anúncios da Xbox + Bethesda na E3',
      url:
          'https://gizmodo.uol.com.br/stalker-2-forza-horizon-5-starfield-e-os-30-anuncios-da-xbox-bethesda-na-e3/',
      urlToImage:
          'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2021/06/AAKUWJ0-1000x525.jpg');
}

class Source {
  String id;
  String name;

  Source({this.id, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
