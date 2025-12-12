import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title; //titulo del header
  final List<Widget> children;

  CustomExpansionTile({required this.title, required this.children});

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin  permite usar animationController

  // Animaciones y controladores
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  bool _expanded = false; // ayuda a saber si esta o no expandido

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Animationcontroller va a controlar el valor de la animación
    // vsync =this ->  ajusta el singleticketprovidfer para optimizar frames
    _controller = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 400),
    );

    // CurveAnimation aplica una curva sobre el controlador, de modo que se le de una animación en concreto al mostrar la información
    // Hace que el contenido aparezca o desaparezca suavemente
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // Con SlideAnimation animamos la posicion con un twwn
    // se aplica zeo otra curva para dar mas soltura al movimiento
    // Hace que el contenido se deslice ligeramente hacia arriba
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  void _handleTap() {
    _expanded = !_expanded;
    setState(() {});
    // si el expanded es truem reproducimos la animacion hacia adelante, si no hacia atras
    if (_expanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header
        ListTile(
          title: Text(widget.title),
          trailing: AnimatedRotation(
            turns: _expanded ? 0.5 : 0.0,
            duration: Duration(microseconds: 500),
            child: Icon(Icons.expand_more),
          ),
          onTap: _handleTap,
        ),

        //CONTENIDO ANIMADO
        ClipRRect(
          child: AnimatedBuilder(
            animation: _controller,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: Column(children: widget.children),
              ),
            ),
            builder: (BuildContext context, Widget? child) {
              return Align(heightFactor: _controller.value, child: child);
            },
          ),
        ),
      ],
    );
  }
}
