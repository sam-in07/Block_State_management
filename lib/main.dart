import 'package:block_management/bloc/counter/counter_bloc.dart';
import 'package:block_management/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter/counter_event.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: MultiBlocProvider(
          providers: [
            BlocProvider<CounterBlock>
              (create:(_)=>CounterBlock()),
            //counter vitore joto gula prover  thakbe sob avbe add korte hobe
            // BlocProvider<CounterBlock>
            //   (create:(_)=>CounterBlock()),
            // BlocProvider<CounterBlock>
            //   (create:(_)=>CounterBlock()),
            // BlocProvider<CounterBlock>
            //   (create:(_)=>CounterBlock()),


          ],
          child: MyHomePage(),
        )
    );
  }
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final counterBloc=context.read<CounterBlock>();

    return Scaffold(
      appBar: AppBar(title: Text("Flutter Clean Architecture and BLOC"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            BlocBuilder<CounterBlock,CounterStates>(
              builder: (context,state){
                return  Text("Counting Value: ${state.counterValue}",style: TextStyle(fontSize: 50));
              },
            ),


            SizedBox(height: 50),

            ElevatedButton(onPressed: (){
              counterBloc.add(Increment());
            }, child: Text("Increment")),

            SizedBox(height: 50),

            ElevatedButton(onPressed: (){
              counterBloc.add(Decrement());
            }, child: Text("Decrement")),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

}




