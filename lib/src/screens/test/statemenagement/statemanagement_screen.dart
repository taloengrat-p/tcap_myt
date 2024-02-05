import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tcap_myt/src/screens/test/statemenagement/statemanagement_cubit.dart';
import 'package:tcap_myt/src/screens/test/statemenagement/statemanagement_state.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';

class StatemanagementScreen extends StatefulWidget {
  const StatemanagementScreen({Key? key}) : super(key: key);

  @override
  _StatemanagementScreenState createState() => _StatemanagementScreenState();
}

class _StatemanagementScreenState extends State<StatemanagementScreen> {
  late StatemanagementCubit _cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cubit = StatemanagementCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: BlocListener<StatemanagementCubit, StatemanagementState>(
        listener: (context, state) {
          log('Bloclistener: state: $state', name: runtimeType.toString());
          switch (state.runtimeType) {
            case StatemanagementInitial:
              log('match initial');
              break;
            case StatemanagementLoading:
              log('match loading');
              break;
            default:
          }
        },
        child: BlocBuilder<StatemanagementCubit, StatemanagementState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Statemanagement'),
              ),
              body: ListView(
                children: [
                  Container(
                    height: 100,
                    color: Colors.green,
                    child: Text(state.toString()),
                  ),
                  TestButtonWidget(
                    onPress: () {
                      _cubit.onSendLoading();
                    },
                    child: Text('Send Loading'),
                  ),
                  TestButtonWidget(
                    onPress: () {
                      _cubit.onSendError();
                    },
                    child: Text('Send Error'),
                  ),
                  TestButtonWidget(
                    onPress: () {
                      _cubit.onSendSuccess();
                    },
                    child: Text('Send Success'),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
