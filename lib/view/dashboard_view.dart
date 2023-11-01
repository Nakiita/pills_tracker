import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget _buildCard(
    String image,
    String title,
    String subtitle,
    String time,
    String duration,
  ) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {
        // Handle card dismissal, e.g., remove the item from the list.
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: 375,
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset(
                  image,
                  width: 70,
                  height: 100,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170.0),
                    child: Text(
                      duration,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hey, Sasha!",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                width: 150,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_sharp),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Thursday",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
              const SizedBox(
                width: 200,
              ),
              const SizedBox(height: 50),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 375,
                  height: 125,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                    padding: EdgeInsets.only(bottom: 5)),
                                const Text(
                                  "Your plan \n is almost done!",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.arrow_drop_up_outlined),
                                      color: Colors.green,
                                    ),
                                    const Text(
                                      "13% than a week ago",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'assets/images/progress.jpg',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 375,
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.black,
                      ),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 158, 235, 198),
                        Colors.lightBlue,
                        Color.fromARGB(255, 158, 235, 198),
                      ])),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      Text(
                        "Get Vaccinated",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Nearest vaccination center",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      // ClipRRect(
                      //   child: Image.asset(
                      //     'assets/images/progress.jpg',
                      //     width: 100,
                      //     height: 95,
                      //   ),
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "8:00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          _buildCard(
            'assets/images/omega.jpg',
            'Omega 3',
            '1 tablet after meals',
            '8:00',
            '7 days',
          ),
          _buildCard(
            'assets/images/comlivit.jpg',
            'Comlitive',
            '1 tablet after meals',
            '8:00',
            '7 days',
          ),
          const Text(
            "14:00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          _buildCard(
            'assets/images/5HTP.jpg',
            '5-HTP',
            '1 ampoule',
            '14:00',
            '2 days',
          ),
        ],
      ),
    );
  }
}
