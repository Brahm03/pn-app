import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pn_app/gen/assets.gen.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';
import 'package:pn_app/src/features/home/mock_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;

List<String> items = [
  'Fiction',
  'Non-Fiction',
  'Sci-Fi',
  'Biography',
  "Action",
  "Advanture",
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimary,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight),
              Row(
                children: [
                  Text(
                    "PN",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColor.orange,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColor.kPrimary,
                    radius: 20,
                    child: Image.asset(
                      Assets.icons.bell.path,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: AppColor.orange,
                    radius: 20,
                    child: Image.asset(
                      Assets.icons.profilePicture.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColor.kPrimary,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.orange),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.icons.searchPng.path,
                        height: 18,
                        width: 18,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Search  for  books, authors...",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                          color: AppColor.lightGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 36,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        width: 85,
                        height: 36,
                        margin: EdgeInsets.only(right: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.orange
                              : AppColor.kPrimary,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.orange),
                        ),
                        child: Text(
                          items[index],
                          style: TextStyle(color: AppColor.white, fontSize: 14),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    "Continue Reading",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.white,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 158,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kPrimary,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColor.orange),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        height: 134,
                        width: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.orange),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.whitebook.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Great Gatsby",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColor.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "F. Scott Fitzgerald",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.lightGrey,
                            ),
                          ),
                          SizedBox(height: 46),
                          Row(
                            children: [
                              Text(
                                "75% completed",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.orange,
                                ),
                              ),
                              SizedBox(width: 39),
                              Text(
                                "124/180 pages",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.lightGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Container(
                            height: 6,
                            width: 212,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: AppColor.orange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Text(
                    "Recommended for You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColor.white,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See More",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              book["image"]!,
                              height: 150,
                              width: 105,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            book["title"]!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColor.white,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            book["author"]!,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColor.lightGrey,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: AppColor.orange,
                                size: 14,
                              ),
                              SizedBox(width: 4),
                              Text(
                                book["rating"]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Trending Today",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white,
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.kPrimary,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColor.orange),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        height: 134,
                        width: 86,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.orange),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.audioBooks.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 19,
                            width: 111,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColor.orange,
                            ),
                            child: Center(
                              child: Text(
                                "Editor's Choice",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "The Architecture of\nSilence",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColor.white,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "By Julian Barnes",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.lightGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 52),
                      Image.asset(Assets.icons.audioButton.path, scale: 4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
