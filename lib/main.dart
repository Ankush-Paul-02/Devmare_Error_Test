import 'package:devmare/src/bloc/swipe/swipe_bloc.dart';
import 'package:devmare/src/config/routes/app_router.dart';
import 'package:devmare/src/model/models.dart';
import 'package:devmare/src/screens/onboarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => SwipeBloc()..add(LoadUsersEvent(users: User.users)))
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true, 
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: OnBoardingScreen.routeName,
        ),
      ),
    );
  }
}
