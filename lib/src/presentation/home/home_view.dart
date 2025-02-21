import 'package:flutter/material.dart';
import 'package:gradu_go/src/core/dependency_injection/dependency_injection.dart';
import 'package:gradu_go/src/core/design_system/section.dart';
import 'package:gradu_go/src/presentation/home/home_view_model.dart';

final class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeViewDependencies(
      viewModel: HomeViewModelImpl(
        getEventsUseCase: dependencyInjection(),
        getEstablishmentsUseCase: dependencyInjection(),
      ),
      child: const HomeViewUi._(),
    );
  }
}

final class HomeViewUi extends StatelessWidget {
  const HomeViewUi._();

  @override
  Widget build(BuildContext context) {
    final viewModel = context
        .dependOnInheritedWidgetOfExactType<HomeViewDependencies>()!
        .viewModel;

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: viewModel.stateListenable,
        builder: (context, state, child) {
          final events = state.events;
          final establishments = state.establishments;

          return SectionsView(
            sections: [
              if (events != null)
                SectionView(
                  header: (context) => const Text('Events'),
                  contentBuilder: (context) => CarouselView(
                    itemExtent: 200,
                    children: events.map((event) {
                      return GestureDetector(
                        child: Text(event.name),
                        onTap: () => viewModel.onEventPressed(event: event),
                      );
                    }).toList(),
                  ),
                ),
              if (establishments != null)
                SectionView(
                  header: (context) => const Text('Establishments'),
                  contentBuilder: (context) => ListView.separated(
                    itemCount: establishments.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final establishment = establishments.elementAt(index);
                      return InkWell(
                        child: ListTile(title: Text(establishment.name)),
                        onTap: () => viewModel.onEstablishmentPressed(
                          establishment: establishment,
                        ),
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

final class HomeViewDependencies extends InheritedWidget {
  const HomeViewDependencies({
    required this.viewModel,
    required super.child,
  });

  final HomeViewModel viewModel;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
