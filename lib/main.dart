import 'package:block_management/bloc/counter/counter_bloc.dart';
import 'package:block_management/bloc/counter/counter_state.dart';
import 'package:block_management/bloc/cubit/counter/counter_cubit.dart';
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
            // BlocProvider<CounterBlock>
            //   (create:(_)=>CounterBlock()),


            //cubit dey kemna hobe
            BlocProvider(create:
            (_)=>CounterCubit(),)



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

    // final counterBloc=context.read<CounterBlock>();

    //cubit edit
    final counterCubit=context.read<CounterCubit>();

    return Scaffold(
      appBar: AppBar(title: Text("Flutter Clean Architecture and BLOC"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            // BlocBuilder<CounterBlock,CounterStates>(

            //cubit dey
            BlocBuilder<CounterCubit,int>(
              builder: (context,count){
                return  Text("Counting Value: ${count}",style: TextStyle(fontSize: 50));
              },
            ),


            SizedBox(height: 50),

            ElevatedButton(onPressed: (){
              // counterBloc.add(Increment());
              counterCubit.increment();
            }, child: Text("Increment")),

            SizedBox(height: 50),

            ElevatedButton(onPressed: (){
              // counterBloc.add(Decrement());
              counterCubit.decrement();
            }, child: Text("Decrement")),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

}




