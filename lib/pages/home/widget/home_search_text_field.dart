import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchTextField extends StatefulWidget {
  const HomeSearchTextField({super.key});

  @override
  State<HomeSearchTextField> createState() => _HomeSearchTextFieldState();
}

class _HomeSearchTextFieldState extends State<HomeSearchTextField> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      controller: _controller,
      focusNode: _focusNode,
      style: const TextStyle(color: Colors.white, fontSize: 16),
      onFieldSubmitted: (_) {
        _focusNode.unfocus();
      },
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: .w400,
          color: _focusNode.hasFocus ? Colors.white : const Color(0xFF55433C),
        ),
        prefixIcon: SizedBox(
          width: 25,
          height: 25,
          child: Center(
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              width: 25,
              height: 25,
              colorFilter: ColorFilter.mode(
                _focusNode.hasFocus ? Colors.white : const Color(0xFF55433C),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        suffixIcon: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/filter.svg",
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              _focusNode.hasFocus ? Colors.white : const Color(0xFF55433C),
              BlendMode.srcIn,
            ),
          ),
          onPressed: () {},
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xFF55433C), width: 1),
        ),
      ),
      onTap: () => setState(() {}),
      onEditingComplete: () => setState(() {}),
    );
  }
}
