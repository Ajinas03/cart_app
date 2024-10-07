import 'package:cart_app/config/api_config.dart';
import 'package:cart_app/logic/unAuth/unauth_bloc.dart';
import 'package:cart_app/screens/common/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UnauthUserScreen extends StatelessWidget {
  const UnauthUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white,
        leading: const SizedBox.shrink(),
        title: const TextWidget(
          text: "Products",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocBuilder<UnauthBloc, UnauthState>(
        builder: (context, state) {
          final items = state.productsModel?.data;

          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: items?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            style: ListTileStyle.list,
                            contentPadding: const EdgeInsets.all(0),
                            horizontalTitleGap: 10,
                            leading: Image(
                                image: NetworkImage(
                                    BASE_URL + (items?[index].image ?? ""))),
                            title: TextWidget(
                              text: items?[index].name ?? "",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            subtitle: TextWidget(
                              text: items?[index].description ?? "",
                              fontSize: 14,
                            ),
                            // trailing: CartButton(
                            //   isAdded: false,
                            // ),
                          ),
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
