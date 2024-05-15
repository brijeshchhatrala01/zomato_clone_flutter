import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar(
      {super.key,
      required TextEditingController searchFood,
      required this.onPressed})
      : _searchFood = searchFood;

  final TextEditingController _searchFood;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhiteColor,
      pinned: true,
      title: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kGrey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  autofocus: false,
                  controller: _searchFood,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Pav Bhaji",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const VerticalDivider(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: primaryColorWhite,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
