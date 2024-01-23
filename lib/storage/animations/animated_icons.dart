import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: AnimIcons(),));
}

class AnimIcons extends StatefulWidget {
  const AnimIcons ({super.key});

  @override
  State<AnimIcons> createState() => _AnimIconsState();
}

class _AnimIconsState extends State<AnimIcons> with SingleTickerProviderStateMixin{
  late AnimationController controller;/// to control animations state
  late Animation<double> animation;
  @override
  void initState() {
    controller=AnimationController(vsync: this,duration: Duration(milliseconds:500));
    animation=Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  void StartAnimation(){
    if(controller.isDismissed){
      controller.forward();
    }else{
      controller.reverse();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: ()=> StartAnimation(),
          child: AnimatedIcon(icon:AnimatedIcons.play_pause , progress: animation)),
      ),
    );
  }
}
