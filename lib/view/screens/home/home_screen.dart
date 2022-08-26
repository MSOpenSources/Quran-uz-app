import 'package:flutter/material.dart';
import 'package:quran/core/core.dart';
import 'package:quran/routes/app_navigator.dart';
import 'package:quran/view/screens/home/test_page.dart';
import 'package:quran/view/widgets/buttons/app_icon_button.dart';
import 'package:quran/view/widgets/sura_list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final QuranUz _quranUz = QuranUz();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      backgroundColor: AppColors.white,
      body: Scrollbar(
        controller: _scrollController,
        child: ListView.separated(
          controller: _scrollController,
          itemCount: _quranUz.suraList.length,
          separatorBuilder: (ctx, i) => Divider(height: 2.h),
          itemBuilder: (ctx, i) {
            Sura sura = _quranUz.suraList[i];
            return SuraListTile(surah: sura);
          },
        ),
      ),
    );
  }
}
