import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger(); //! Uso de Loggins para app

class SearchForm extends StatefulWidget {
  // final ValueChanged<String> onValue;

  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  late final textController = TextEditingController();
  late final focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );

    final inputDecoration = InputDecoration(
      hintText: 'Search',
      filled: true,
      fillColor: Color(0xFFF4F6FD),

      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,

      contentPadding: .symmetric(horizontal: 0, vertical: 14),

      prefixIcon: IconButton(
        onPressed: () {},
        icon: Icon(FluentIcons.search_24_filled, color: Color(0xFF526400)),
      ),
    );

    return Padding(
      padding: .only(top: 20 ),
      child: TextFormField(
        decoration: inputDecoration,

        controller: textController,
        focusNode: focusNode,
        onTapOutside: (event) {
          focusNode.unfocus();
        },

        onFieldSubmitted: (value) {
          // widget.onValue(value);
          textController.clear();
          focusNode.requestFocus();

          logger.d('submit value $value');
        },

        // onChanged: (value) {
        //   logger.d('changed $value');
        // },
      ),
    );
  }
}
