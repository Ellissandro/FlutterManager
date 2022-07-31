import 'package:flutter/material.dart';
import 'package:manager/components/title_component.dart';
import 'package:manager/core/app_colors.dart';
import 'package:manager/core/app_logos.dart';
import '../components/card_component.dart';
import '../components/mural_content.dart';
import '../components/pagination_square.dart';
import '../components/user_photo.dart';
import '../components/welcome_message.dart';
import '../core/app_images.dart';
import '../core/app_svgs.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        toolbarHeight: 70,
        title: Image.asset(
          AppLogos.wakke,
          width: 140,
        ),
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 40,
              width: 40,
              margin: const EdgeInsets.all(13),
              padding: const EdgeInsets.all(1.5),
              child: UserPhoto(photo: AppImages.ana),
            ),
            Positioned(
              left: 18,
              bottom: 42,
              height: 30,
              width: 30,
              child: Image.asset(
                AppImages.startElvelOne,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        leadingWidth: 70,
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 1,
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: WelcomeMessage(),
                ),
                const SizedBox(height: 10),
                const MuralContent(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                    SizedBox(width: 5),
                    PaginationSquare(),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: TitleComponent(title: 'Acesso Rápido'),
                ),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            physics:
                const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true, // You won't see infinite size error
            children: <Widget>[
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppSvgs.clock,
                      height: 40,
                      color: AppColors.theme,
                    ),
                    const Text('Horário das \nAulas',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppSvgs.graphic,
                      height: 40,
                      color: AppColors.theme,
                    ),
                    const Text('Notas e \nResultados',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppSvgs.checked,
                      height: 40,
                      color: AppColors.theme,
                    ),
                    const Text('Avaliações Qualitativas',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10, top: 20),
            child: TitleComponent(title: 'Atalhos'),
          ),
          GridView.count(
            crossAxisCount: 3,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics:
                const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
            shrinkWrap: true, // You won't see infinite size error
            children: <Widget>[
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppLogos.wakkeClass,
                      height: 50,
                    ),
                    const Text('Wakke Class',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppLogos.wakkeStore,
                      height: 50,
                    ),
                    const Text('Wakke Store',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
              CardComponent(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      AppLogos.wakkeFun,
                      height: 50,
                    ),
                    const Text('Wakke Fun',
                        style: TextStyle(fontSize: 12, color: AppColors.theme)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(currentIndex: 2, items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgs.calendar,
                height: 20,
                color: AppColors.strongGray,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgs.chat,
                height: 20,
                color: AppColors.strongGray,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgs.chat,
                height: 20,
                color: AppColors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgs.landscape,
                height: 20,
                color: AppColors.strongGray,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppSvgs.avatar,
                height: 20,
                color: AppColors.strongGray,
              ),
              label: '',
            ),
          ]),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () => {},
          elevation: 0,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(AppLogos.wakkeManager),
          ),
        ),
      ),
    );
  }
}
