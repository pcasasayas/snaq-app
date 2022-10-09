
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
    return Container();
    // return Image.asset('assets/$assetName', width: width);
  }

  List<PageViewModel> buildPages(BuildContext context, PageDecoration pageDecoration) {
    return [
      PageViewModel(
        title: "Fractional shares",
        body:
        "Instead of having to buy an entire share, invest any amount you want.",
        image: _buildImage('img1.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Learn as you go",
        body:
        "Download the Stockpile app and master the market with our mini-lesson.",
        image: _buildImage('img2.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Kids and teens",
        body:
        "Kids and teens can track their stocks 24/7 and place trades that you approve.",
        image: _buildImage('img3.jpg'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Full Screen Page",
        body:
        "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
        image: _buildFullscreenImage(),
        decoration: pageDecoration.copyWith(
          contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          fullScreen: true,
          bodyFlex: 2,
          imageFlex: 3,
        ),
      ),
      PageViewModel(
        title: "Another title page",
        body: "Another beautiful body text for this example onboarding",
        image: _buildImage('img2.jpg'),
        footer: ElevatedButton(
          onPressed: () {
            // introKey.currentState?.animateScroll(0);
            FlashbarHelper.showFlashbar(
              context, 
              builder: FlashbarInfoWidget.builder,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Text(
            'FooButton',
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Title of last page - reversed",
        bodyWidget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Click on "),
            Icon(Icons.edit),
            Text(" to edit a post"),
          ],
        ),
        decoration: pageDecoration.copyWith(
          bodyFlex: 2,
          imageFlex: 4,
          bodyAlignment: Alignment.bottomCenter,
          imageAlignment: Alignment.topCenter,
        ),
        image: _buildImage('img1.jpg'),
        reverse: true,
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
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('flutter.png'),
          ),
        ),
      ),
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