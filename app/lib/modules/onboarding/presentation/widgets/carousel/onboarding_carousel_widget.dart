
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/base/presentation/ui/widgets/base_bloclistener.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless_bloclistener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pallete/flashbar/helpers/flashbar_helper.dart';
import 'package:pallete/flashbar/widgets/flashbar_info_widget.dart';

import '../../blocs/onboarded/set/onboarded_set_cubit.dart';

class OnBoardingCarouselWidget extends BaseWidgetStatelessBlocListener<OnBoardedSetCubit, void> {
  OnBoardingCarouselWidget({
    Key? key,
    this.onIntroEnd,
  }) : super(key: key);

  final introKey = GlobalKey<IntroductionScreenState>();
  final Function()? onIntroEnd;

  @override
  bool listenWhen(ResultState<void> previous, ResultState<void> current) {
    return current.status.isSubmissionFailure || current.status.isSubmissionSuccess;
  }

  @override
  StateListener<void>? get stateListenerError {
    return (context, state) => FlashbarHelper.showFlashbar(
      context, 
      builder: FlashbarInfoWidget.builder,
    );
  }

  @override
  StateListener<void>? get stateListenerSuccess {
    return (context, state) {
      onIntroEnd?.call();
    };
  }

  Widget _buildFullscreenImage() {
    return Container();
    // return Image.asset(
    //   'assets/fullscreen.jpg',
    //   fit: BoxFit.cover,
    //   height: double.infinity,
    //   width: double.infinity,
    //   alignment: Alignment.center,
    // );
  }

  Widget _buildImage(String assetName) {
    return Image.asset('assets/$assetName', width: double.infinity);
  }

  List<PageViewModel> buildPages(BuildContext context, PageDecoration pageDecoration) {
    return [
      PageViewModel(
        title: 'Discover',
        body: 'Discover new meals',
        image: _buildImage('images/snaq-logo.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: 'Explore',
        body: 'Explore the meals on a great variety of plates',
        image: _buildImage('images/snaq-logo.png'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: 'Examine',
        body: 'Examine the nutrition properties of your meals',
        image: _buildImage('images/snaq-logo.png'),
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget buildBody(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.symmetric(vertical: 16.0),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: _buildImage('images/snaq-logo.png'),
      //     ),
      //   ),
      // ),
      pages: buildPages(context, pageDecoration),
      onDone: () => context.read<OnBoardedSetCubit>().setOnBoarded(true),
      onSkip: () => context.read<OnBoardedSetCubit>().setOnBoarded(true),
      showSkipButton: true,
      skipOrBackFlex: 1,
      nextFlex: 1,
      dotsFlex: 5,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      // back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        // color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}