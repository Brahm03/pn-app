import 'package:flutter/material.dart';
import 'package:pn_app/src/core/consts/colors/app_colors.dart';

class SaveTheBooks extends StatelessWidget {
  const SaveTheBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bcgraunt,
      appBar: AppBar(
        backgroundColor: AppColor.bcgraunt,
        title: Text("SaveTheBooks", style: TextStyle(color: AppColor.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Divider(color: Colors.brown),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    width: 368,
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 6.5,
                              bottom: 7.5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColor.orang,
                            ),
                            child: Text(
                              "All Items",
                              style: TextStyle(color: AppColor.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 550,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                width: 80,
                                height: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "The Midnight Library",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.white,
                                  ),
                                ),
                                Text(
                                  "Matt Haig",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.white,
                                  ),
                                ),
                                SizedBox(height: 24),
                                Row(
                                  children: [
                                    Icon(Icons.hourglass_empty, size: 12),
                                    Text(
                                      "Added 2 days ago",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.white,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColor.orang,
                                      ),
        
                                      child: Center(child: Text("data")),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 244,
                color: AppColor.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
