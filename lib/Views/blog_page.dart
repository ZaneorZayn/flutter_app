import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedChipIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          margin: EdgeInsets.all(7),
          child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('All Content', style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text('Explore good blog and Q&A', style: TextStyle(fontSize: 14, color: Colors.white)),
          ],
        ),
        backgroundColor: Colors.pinkAccent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: false,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Q&A'),
                Tab(text: 'Blog'),
                Tab(text: 'Videos'),
                Tab(text: 'My Post'),
              ],
            ),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            margin: EdgeInsets.all(5),
            child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ),
          SizedBox(width: 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            margin: EdgeInsets.all(5),
            child: IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sort),
                        ),
                        _buildCategoryChip('Sexual Health', 0),
                        _buildCategoryChip('Menstrual Health', 1),
                        _buildCategoryChip('Contraception', 2),
                        _buildCategoryChip('Pregnancy', 3),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildTabContent(),
                _buildTabContent(),
                _buildTabContent(),
                _buildTabContent(),
                _buildTabContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ChoiceChip(
        label: Text(label),
        selected: _selectedChipIndex == index,
        onSelected: (bool selected) {
          setState(() {
            _selectedChipIndex = selected ? index : _selectedChipIndex;
          });
        },
        backgroundColor: Colors.white,
        selectedColor: Colors.pinkAccent,
        labelStyle: TextStyle(color: _selectedChipIndex == index ? Colors.white : Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.grey),
        ),
        // This removes the check icon
        selectedShadowColor: Colors.transparent,
      ),
    );
  }
}

Widget _buildTabContent() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Card(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    //backgroundImage: Image.asset("assets/images/Avatar.png"),
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Chanda Hit', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('2 days ago'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Text('What Is Sexual Health, And Why Is It Important?'),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.comment, size: 16),
                  SizedBox(width: 4.0),
                  Text('2'),
                  SizedBox(width: 16.0),
                  Icon(Icons.medical_services, size: 16),
                  SizedBox(width: 4.0),
                  Text('0 doctor answered'),
                  SizedBox(width: 16.0),
                  Icon(Icons.remove_red_eye, size: 16),
                  SizedBox(width: 4.0),
                  Text('2'),
                ],
              ),
              SizedBox(height: 8.0),
              Divider(),
              Center(child: Text('See more detail', style: TextStyle(color: Colors.blue))),
            ],
          ),
        ),
      );
    },
  );
}
