import 'package:flutter/material.dart';
import 'package:manager/components/header_user_photo.dart';
import 'package:manager/core/app_colors.dart';
import 'package:manager/core/app_logos.dart';
import '../components/bottom_navigation_bar_component.dart';
import '../components/divier_component.dart';
import '../components/fast_access_component.dart';
import '../components/floating_action_button_component.dart';
import '../components/header_component.dart';
import '../components/mural_content.dart';
import '../components/mural_pagination.dart';
import '../components/shortcuts_component.dart';
import '../components/welcome_message.dart';
import '../core/app_images.dart';
import '../core/app_svgs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          leading: HeaderUserPhotoComponent(photo: AppImages.ana),
          leadingWidth: 70,
          centerTitle: true,
          backgroundColor: AppColors.white,
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DividerComponent(),
                    const WelcomeMessage(),
                    const DividerComponent(),
                    SizedBox(
                      height: 380,
                      child: PageView(
                        clipBehavior: Clip.none,
                        children: const [
                          MuralContent(),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: MuralContent()
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: MuralContent()
                          ),
                        ],
                      ),
                    ),
                    const DividerComponent(
                      height: 20,
                    ),
                    const MuralPagination(),
                    const DividerComponent(
                      height: 20,
                    ),
                    const HeaderComponent(title: 'Acesso Rápido'),
                    SizedBox(
                      height: 110,
                      child: PageView(
                        clipBehavior: Clip.none,
                        controller: PageController(viewportFraction: 0.31),
                        padEnds: false,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FastAcessComponent(
                              icon: AppSvgs.clock,
                              title: 'Horário das \naulas ',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FastAcessComponent(
                              icon: AppSvgs.graphic,
                              title: 'Notas e \nResultados',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FastAcessComponent(
                              icon: AppSvgs.checked,
                              title: 'Avaliações \nQualitativas',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: FastAcessComponent(
                              icon: AppSvgs.cart,
                              title: 'Histórico \n Financeiro',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const HeaderComponent(title: 'Atalhos'),
                    SizedBox(
                      height: 105,
                      child: PageView(
                        clipBehavior: Clip.none,
                        controller: PageController(viewportFraction: 0.31),
                        padEnds: false,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ShortcutsComponent(
                              image: AppLogos.wakkeClass,
                              title: 'Wakke Class',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ShortcutsComponent(
                              image: AppLogos.wakkeStore,
                              title: 'Wakke Store',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ShortcutsComponent(
                              image: AppLogos.wakkeFun,
                              title: 'Wakke Fun',
                            ),
                          ),
                          ShortcutsComponent(
                            image: AppLogos.wakkePlanner,
                            title: 'Wakke planner',
                          ),
                        ],
                      ),
                    ),
                    const DividerComponent(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarComponent(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: const FloatingActionButtonComponent());
  }
}
