import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:healthcare_4/global/common/toast.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  List<dynamic> _news = [];

  Future<void> _fetchNews() async {
    const String apiUrl =
        'https://google-news13.p.rapidapi.com/search?keyword=supply%20chain%20attacks%20in%20healthcare%204.0&lr=en-US';

    final Map<String, String> headers = {
      'X-RapidAPI-Key': '3212423239msh31eb2c53aad051dp1e7cbcjsn269648a75709',
      'X-RapidAPI-Host': 'google-news13.p.rapidapi.com'
    };

    try {
      final response = await http.get(Uri.parse(apiUrl), headers: headers);
      final responseData = json.decode(response.body);

      setState(() {
        _news = responseData['items'];
      });
    } catch (error) {
      showToast(message: 'Error fetching news: $error');
    }
  }



  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      body: _news.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _news.length,
              itemBuilder: (ctx, index) {
                final newsItem = _news[index];
                return ListTile(
                  title: InkWell(
                    child: Text(newsItem['title'] ?? 'Title not available', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),),
                    onTap: () {
                      _launchUrl(newsItem['newsUrl']);
                      // Handle news item tap
                    },
                  ),
                  subtitle: Text(newsItem['snippet'] ?? 'Source not available'),
                minVerticalPadding: 15,
                );

              },
            ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri url0 = Uri.parse(url);
  if (!await canLaunchUrl(url0)) {
    showToast(message: 'Could not launch $url0');
    throw Exception('Could not launch $url0');
  }
  await launchUrl(url0);
}