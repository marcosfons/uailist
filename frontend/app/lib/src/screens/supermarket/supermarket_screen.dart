import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_controller.dart';

class SupermarketScreen extends StatefulHookConsumerWidget {
  const SupermarketScreen({
    super.key,
    required this.supermarket,
  });

  final Supermarket supermarket;

  @override
  SupermarketScreenState createState() => SupermarketScreenState();
}

class SupermarketScreenState extends ConsumerState<SupermarketScreen> {
  late final _controller = ref.read(supermarketController);

  final _mapController = MapController(
    location: const LatLng(-21.137036918244654, -44.26195663268238),
    zoom: 13,
  );

  Offset? _dragStart;
  double _scaleStart = 1.0;
  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details, MapTransformer transformer) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      _mapController.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      _mapController.zoom -= 0.02;
      setState(() {});
    } else {
      final now = details.focalPoint;
      final diff = now - _dragStart!;
      _dragStart = now;
      transformer.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  iconSize: 20,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: themeData.colorScheme.primary,
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/supermarkets');
                  },
                ),
              ],
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: null,
                  ),
                  Icon(Icons.photo_camera, size: 25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                initialValue: widget.supermarket.name,
                // onChanged: (value) {
                //   newSupermarket = newSupermarket.copyWith(name: Value(value));
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Endereço'),
                initialValue: widget.supermarket.address,
                // onChanged: (value) {
                //   newSupermarket =
                //       newSupermarket.copyWith(address: Value(value));
                // },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 300,
                child: MapLayout(
                  controller: _mapController,
                  builder: (context, transformer) {
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      // onDoubleTapDown: (details) => _onDoubleTap(
                      //   transformer,
                      //   details.localPosition,
                      // ),
                      onScaleStart: _onScaleStart,
                      onScaleUpdate: (details) =>
                          _onScaleUpdate(details, transformer),
                      onTapUp: (details) {
                        final location =
                            transformer.toLatLng(details.localPosition);

                        //final clicked = transformer.fromLatLngToXYCoords(location);
                        //print('${location.longitude}, ${location.latitude}');
                        //print('${clicked.dx}, ${clicked.dy}');
                        //print('${details.localPosition.dx}, ${details.localPosition.dy}');

                        // newSupermarket = newSupermarket.copyWith(
                        //   latitude: Value(location.latitude),
                        //   longitude: Value(location.longitude),
                        // );
                      },
                      child: Listener(
                        behavior: HitTestBehavior.opaque,
                        onPointerSignal: (event) {
                          if (event is PointerScrollEvent) {
                            final delta = event.scrollDelta.dy / -1000.0;

                            final zoom = (_mapController.zoom + delta)
                                .clamp(2, 18)
                                .toDouble();

                            transformer.setZoomInPlace(
                                zoom, event.localPosition);
                            setState(() {});
                          }
                        },
                        child: Stack(
                          children: [
                            TileLayer(
                              builder: (context, x, y, z) {
                                final tilesInZoom = pow(2.0, z).floor();

                                while (x < 0) {
                                  x += tilesInZoom;
                                }
                                while (y < 0) {
                                  y += tilesInZoom;
                                }

                                x %= tilesInZoom;
                                y %= tilesInZoom;

                                final url =
                                    'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

                                return CachedNetworkImage(
                                  imageUrl: url,
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // const SizedBox(height: 10),
            // Center(
            //   child: FutureLoadElevatedButton(
            //     onPressed: () async {
            //       final error =
            //           await _controller.createSupermarket(newSupermarket);
            //       if (error == null) {
            //         GoRouter.of(context).pop();
            //       } else {
            //         print('Ocorreu um erro');
            //         print(error);
            //       }
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: themeData.colorScheme.primary,
            //       fixedSize: const Size(150, 50),
            //     ),
            //     child: const Text(
            //       'Enviar',
            //       style: TextStyle(fontSize: 18),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
