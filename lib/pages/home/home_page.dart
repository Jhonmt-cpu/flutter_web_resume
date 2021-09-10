import 'package:curriculum/core/assets/app_images.dart';
import 'package:curriculum/core/core.dart';
import 'package:curriculum/pages/home/widgets/skill_level.dart';
import 'package:curriculum/pages/home/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:curriculum/extensions/hover_extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.headerBg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "João Mateus",
                    style: GoogleFonts.roboto(
                      fontSize: 46,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Flutter Junior Developer",
                    style: GoogleFonts.roboto(
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocilaButton(
                        icon: SimpleIcons.github,
                        url: "https://github.com/Jhonmt-cpu",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      SocilaButton(
                        icon: SimpleIcons.linkedin,
                        url:
                            "https://www.linkedin.com/in/joao-mateus-36056b191/",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0, -120, 0),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          100.0,
                        ),
                        color: AppColors.backgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              100.0,
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/54962256?v=4",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12,
                      ),
                      child: Text(
                        "about me",
                        style: GoogleFonts.roboto(
                          color: AppColors.textTitleColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      "PERSONAL DETAILS",
                      style: GoogleFonts.roboto(
                        color: AppColors.textTitleColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                      ),
                      child: Text(
                        "Hello, my name is João Mateus Alves Borges de Melo, but you can call me John, and I am currently a student of two major institutions, Unipam and Rocketseat. In the first I'm studying to graduate in Information Systems and in the Second I've successfully completed an immersive bootcamp focused on technologies such as Node.js, React.Js and React Native. I'm current working at Arpia Tecnologias as an intern. In addition, I have an easy understanding of English and I've already accumulated 6 months of experience in the company Pro Dados Sistemas providing support services to clients.",
                        style: GoogleFonts.roboto(
                          color: AppColors.textTitleColor,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppImages.skillsBg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "my skills",
                      style: GoogleFonts.roboto(
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      "WHAT I'M BEST AT",
                      style: GoogleFonts.roboto(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "Flutter",
                              level: 70,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "Node.js",
                              level: 80,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "React.js",
                              level: 60,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "React Native",
                              level: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "Spring Boot",
                              level: 50,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 10,
                            child: SkillLevel(
                              tech: "Typescript",
                              level: 80,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
