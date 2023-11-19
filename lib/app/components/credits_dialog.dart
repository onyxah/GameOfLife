import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsDialog extends StatelessWidget {
  const CreditsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return AlertDialog(
      title: const Text('Credits'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _categoryTitle('Patterns'),
            _creditItem('Gosper Glider Gun', 'Conway\'s Game of Life pattern.'),
            _creditItem('Pulsar Oscillator', 'Conway\'s Game of Life pattern.'),
            _creditItem('10-Engine Cordership', 'Conway\'s Game of Life pattern.'),
            const SizedBox(height: 16),
            _categoryTitle('Random Patterns'),
            _creditItem('Random patterns are provided by Life Lexicon.',''),
            InkWell(
            onTap: () => _launchURL('https://conwaylife.com/ref/lexicon/lex_a.htm'),
            child: const Text('Life Lexicon'),
          ),
            const SizedBox(height: 16),
            _categoryTitle('How to Play'),
            _creditItem('The "How to Play" guide is adapted from various Conway\'s Game of Life resources.',''),
            const SizedBox(height: 16),
            _categoryTitle('Flutter Libraries'),
            _creditItem('Flutter','https://flutter.dev'),
            _creditItem('Riverpod','https://riverpod.dev'),
            _creditItem('URL Launcher','https://pub.dev/packages/url_launcher'),
            _creditItem('lutter Web Frame','https://pub.dev/packages/flutter_web_frame'),
            _creditItem('OpenAI','https://www.openai.com/'),
            _creditItem(' Kudos to Elias W. BA','https://twitter.com/eliaswalyba'),
            const SizedBox(height: 16),
            _categoryTitle('Icons'),
            _creditItem('Icons used in the app are sourced from Material Icons.',''),
            const SizedBox(height: 16),
            _categoryTitle('Development'),
            _creditItem('Developed by Cheikh LO','onyxah@yahoo.com'),
            InkWell(
              onTap: () => _launchURL('Available soon'),
              child: _creditItem('GitHub Repository', 'Available soon'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryTitle(String title) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _creditItem(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$title: $description'),
        const SizedBox(height: 8),
      ],
    );
  }

  // Helper method to open URLs
  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
