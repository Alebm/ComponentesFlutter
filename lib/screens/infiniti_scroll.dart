import 'package:componentesflutter/theme/app_theme.dart';
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

  bool isloading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // compruebo la posicion del scroll y le sumo 500 para adelantarme a la posicion final,
      // y en la posicion final llamo a agregar 5 elementos
      if ((scrollController.position.pixels + 100) >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  // creo un evento asincrono, con tiempos

  Future fetchData() async {
    if (isloading) return;

    isloading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add5();

    isloading = false;
    setState(() {});
    // de esta forma compruebo si estoy en el final y hago el movimiento de que sale otra imagen
    // si no estoy en el final no hace el movimiento
    if (scrollController.position.pixels + 50 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 150,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
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
            if (isloading)
              Positioned(
                bottom: 25,
                left: size.width * 0.5 - 25,
                child: const _LoadingIcon(),
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
