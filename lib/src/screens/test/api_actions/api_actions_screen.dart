import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tcap_myt/src/screens/test/api_actions/api_actions_cubit.dart';
import 'package:tcap_myt/src/screens/test/api_actions/api_actions_state.dart';
import 'package:tcap_myt/src/screens/test/widget/widgets/test_button_widget.dart';

class ApiActionsScreen extends StatefulWidget {
  const ApiActionsScreen({Key? key}) : super(key: key);

  @override
  _ApiActionsScreenState createState() => _ApiActionsScreenState();
}

class _ApiActionsScreenState extends State<ApiActionsScreen> {
  late ApiActionsCubit _cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _cubit = ApiActionsCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _cubit,
      child: BlocListener<ApiActionsCubit, ApiActionsState>(
        listener: (context, state) {
          log('Bloclistener: state: $state', name: runtimeType.toString());

          switch (state.runtimeType) {
            case ApiActionsInitial:
              log('match initial');
              break;
            case ApiActionsLoading:
              log('match initial');
              break;
            case ApiActionsSuccess:
              log('match success');
              break;
            case ApiActionsFailure:
              log('match failure');
              break;
            default:
          }
        },
        child: BlocBuilder<ApiActionsCubit, ApiActionsState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Api actions'),
              ),
              body: buildBody(context, state),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TestButtonWidget(
                          onPress: () {
                            _cubit.onFetchExpectSuccess();
                          },
                          child: const Text(
                            'FETCH SUCCESS',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TestButtonWidget(
                          onPress: () {
                            _cubit.onFetchExpectError();
                          },
                          child: const Text('FETCH ERROR'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context, ApiActionsState state) {
    switch (state.runtimeType) {
      case ApiActionsInitial:
        return const Center(
          child: Text('ready to test'),
        );
      case ApiActionsLoading:
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      case ApiActionsSuccess:
        return buildSuccessBody(context, state as ApiActionsSuccess);
      case ApiActionsFailure:
        return buildFailureBody(context, state as ApiActionsFailure);
      default:
        return Container();
    }
  }

  Widget buildSuccessBody(BuildContext context, ApiActionsSuccess state) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: ListView(
        children: [
          Text(
            state.currentcyPriceResponse.chartName ?? '',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text('''
Updated : ${state.currentcyPriceResponse.time?.updated ?? ''}
UpdatedISO : ${state.currentcyPriceResponse.time?.updatedISO ?? ''}
Updateduk : ${state.currentcyPriceResponse.time?.updateduk ?? ''}'''),
          SizedBox(
            height: 16.h,
          ),
          Text('Disclaimer : ${state.currentcyPriceResponse.disclaimer ?? ''}'),
          SizedBox(
            height: 16.h,
          ),
          Text('${state.currentcyPriceResponse.bpi?.USD?.code} : ${state.currentcyPriceResponse.disclaimer ?? ''}'),
          Text('${state.currentcyPriceResponse.bpi?.GBP?.code} : ${state.currentcyPriceResponse.disclaimer ?? ''}'),
          Text('${state.currentcyPriceResponse.bpi?.EUR?.code} : ${state.currentcyPriceResponse.disclaimer ?? ''}')
        ],
      ),
    );
  }

  Widget buildFailureBody(BuildContext context, ApiActionsFailure state) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView(
          children: [
            Text(
              'ERROR ${state.error.response?.statusCode.toString() ?? ''}',
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.cancel_rounded,
              size: 100.w,
              color: Colors.red,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              state.error.response?.statusMessage.toString() ?? '',
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
