import 'package:dexider/pages/home_viewmodel.dart';
import 'package:dexider/sections/about.dart';
import 'package:dexider/sections/drawer.dart';
import 'package:dexider/sections/footer.dart';
import 'package:dexider/sections/hero_banner.dart';
import 'package:dexider/sections/testimonial.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  late HomeViewModel _viewModel;

  @override
  void initState() {
    _viewModel = HomeViewModel();
    _viewModel.start();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_viewModel.navBar["value"]["name"]),
      ),
      drawer: DrawerContent(
        actions: _viewModel.navBar["value"]["actions"], 
        logo: _viewModel.navBar["value"]["logo"], 
        name: _viewModel.navBar["value"]["name"], 
      ),
      body: ListView(
        children: [
          HeroBanner(
            bgImage: _viewModel.banner["value"]["bgImage"], 
            btnTxt: _viewModel.banner["value"]["btnTxt"], 
            desc: _viewModel.banner["value"]["desc"],  
            title: _viewModel.banner["value"]["title"] 
          ),
          About(
            title: _viewModel.about["value"]["title"], 
            text: _viewModel.about["value"]["text"], 
            image: _viewModel.about["value"]["image"]),
          Testimonial(
            testimonials: _viewModel.testimonial["value"]),
          Footer(
            copyright: _viewModel.footer["value"]["copyright"], 
            link1: _viewModel.footer["value"]["link1"],
            link2: _viewModel.footer["value"]["link2"],
          )
        ],
      ),
    );
  }
}