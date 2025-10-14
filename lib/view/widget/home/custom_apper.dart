import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onpressdsearch;
  final void Function()? onpressdnotification;
  const CustomAppBar(
      {super.key,
      required this.onpressdsearch,
      required this.onpressdnotification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
                  //textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: onpressdsearch,
                          icon: const Icon(Icons.search, size: 30),
                        ),
                      ),
                      hintText: "Find product",
                      hintStyle: const TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[200]))),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              onPressed: onpressdnotification,
              icon: Icon(
                Icons.notification_add_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
