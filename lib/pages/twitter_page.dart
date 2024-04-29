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
    const String apiUrl = 'https://real-time-news-data.p.rapidapi.com/search';

    final Map<String, String> params = {
      'query': 'supply chain attacks in healthcare',
      'country': 'NG',
      'lang': 'en'
    };

    final Map<String, String> headers = {
      'X-RapidAPI-Key': '3212423239msh31eb2c53aad051dp1e7cbcjsn269648a75709',
      'X-RapidAPI-Host': 'real-time-news-data.p.rapidapi.com'
    };

    try {
      final response = await http.get(
        Uri.parse('$apiUrl?query=${params['query']}&country=${params['country']}&lang=${params['lang']}'),
        headers: headers,
      );
      final responseData = json.decode(response.body);
      print(responseData);
      setState(() {
        _news = responseData['data'];
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
                  leading: CircleAvatar(child: Image.network(newsItem["source_favicon_url"]),),
                  title: InkWell(
                    child: Text(newsItem['title'] ?? 'Title not available', style: TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),),
                    onTap: () {
                      _launchUrl(newsItem['link']);
                      // Handle news item tap
                    },
                  ),
                  subtitle: Text(newsItem['published_datetime_utc'] ?? 'Source not available'),
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