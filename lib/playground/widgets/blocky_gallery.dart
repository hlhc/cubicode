import 'package:blocky/blocky.dart';
import 'package:cubicode/playground/cubit/playground_cubit.dart';
import 'package:cubicode/playground/widgets/blocky_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlockyGallery extends StatefulWidget {
  const BlockyGallery({super.key});

  @override
  State<BlockyGallery> createState() => _BlockyGalleryState();
}

class _BlockyGalleryState extends State<BlockyGallery>
    with TickerProviderStateMixin {
  final _sheet = GlobalKey();
  late final _controller = DraggableScrollableController();
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onChanged);
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _onChanged() {
    final currentSize = _controller.size;
    if (currentSize <= 0.05) _collapse();
  }

  void _animateSheet(double size) {
    _controller.animateTo(
      size,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  DraggableScrollableSheet get sheet =>
      _sheet.currentWidget! as DraggableScrollableSheet;
  void _collapse() => _animateSheet(sheet.snapSizes!.first);
  void _anchor() => _animateSheet(sheet.snapSizes!.last);
  // void _expand() => _animateSheet(sheet.maxChildSize);
  // void _hide() => _animateSheet(sheet.minChildSize);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DraggableScrollableSheet(
          key: _sheet,
          initialChildSize: 0.1,
          minChildSize: 0,
          maxChildSize: 0.8,
          snap: true,
          snapSizes: const [0.1, 0.5],
          controller: _controller,
          builder: (BuildContext context, ScrollController scrollController) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Icon(Icons.drag_handle_rounded),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      tabs: const [
                        Tab(icon: Icon(Icons.abc)),
                        Tab(icon: Icon(Icons.functions)),
                        Tab(icon: Icon(Icons.directions)),
                        Tab(icon: Icon(Icons.text_fields)),
                        Tab(icon: Icon(Icons.loop)),
                        Tab(icon: Icon(Icons.music_note)),
                        Tab(icon: Icon(Icons.location_on)),
                      ],
                      onTap: (v) {
                        _anchor();
                      },
                    ),
                  ),
                  SliverFillRemaining(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        varBlocks,
                        mathBlocks,
                        conditionBlocks,
                        textBlocks,
                        loopBlocks,
                        soundBlocks,
                        locationBlocks,
                      ]
                          .map(
                            (e) => ListView.separated(
                              itemBuilder: (ctx, index) => BlockySelect(
                                def: e[index],
                                onClick: () {
                                  context
                                      .read<PlaygroundCubit>()
                                      .addBlocks(e[index]);
                                  _collapse();
                                },
                              ),
                              separatorBuilder: (ctx, index) =>
                                  const SizedBox(height: 8),
                              itemCount: e.length,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
