import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_messaging_flutter/main_screen/domain/domain/bloc/main_screen_bloc.build.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_foreground_handler/push_messaging_foreground_handler.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_service/push_messaging_service.build.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final MainScreenBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MainScreenBloc(
        pushService: PushMessagingService.getInstance(),
        handler: PushMessagingForegroundHandler.getInstance());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider<MainScreenBloc>(
        create: (_) => _bloc,
        child: BlocBuilder<MainScreenBloc, MainScreenBlocState>(
            builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _bloc.add(const MainScreenBlocEvent.startAllServices());
                  },
                  child: const Text('Start services'),
                ),
                const SizedBox(height: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("FCM:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8,),
                    SizedBox(
                      width: 350,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              _bloc.state.fcmToken.toString(),
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          ElevatedButton(
                            onPressed: (){
                              Clipboard.setData(ClipboardData(text: _bloc.state.fcmToken.toString())).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Fcm token copied to clipboard")));
                              });
                            },
                            child: Text('Copy'),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
