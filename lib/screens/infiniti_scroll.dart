import 'package:flutter/material.dart';

class InfinityScrollScreen extends StatefulWidget {
  const InfinityScrollScreen({Key? key}) : super(key: key);

  @override
  State<InfinityScrollScreen> createState() => _InfinityScrollScreenState();
}

class _InfinityScrollScreenState extends State<InfinityScrollScreen> {
  // creamos el listado desde esta lista
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // compruebo la posicion del scroll y le sumo 500 para adelantarme a la posicion final,
      // y en la posicion final llamo a agregar 5 elementos
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIDs.last;
    // esto me sirve para agregar daos al a lista creada previamente, suma e al ultimo id
    imagesIDs.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    // debo actualizar el estado
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesIDs.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/img/jar-loading.gif'),
              image: NetworkImage(
                  // imagesIDs[index] le paso el indice de la lista que cree antes
                  'https://picsum.photos/500/300?image=${imagesIDs[index]}'),
            );
          },
        ),
      ),
    );
  }
}
