import 'package:notion_api/notion.dart';
import 'package:notion_api/responses/notion_response.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NotionService {
  static Future<NotionResponse> fetchGoalDatabase() {
    NotionClient notion = NotionClient(token: dotenv.env['TOKEN']!);

    return notion.databases.fetch(dotenv.env['GOAL_DB']!);
  }
}
