import 'package:flutter/material.dart';

class ChooseField extends StatefulWidget {
  const ChooseField({
    required this.title,
    required this.onTap,
    super.key,
    this.hint = '',
    this.onPressedTrailingBtn,
    this.trailingFullState,
    this.trailingEmptyState,
    this.leadingIcon,
    this.replaceContent,
    this.isActive = true,
  });

  final String hint;
  final String title;
  final VoidCallback? onPressedTrailingBtn;
  final VoidCallback onTap;
  final Widget? trailingFullState;
  final Widget? trailingEmptyState;
  final Widget? leadingIcon;
  final bool isActive;
  final Widget? replaceContent;

  @override
  State createState() => _ChooseFieldState();
}

class _ChooseFieldState extends State<ChooseField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final title = widget.title;
    final hint = widget.hint;

    return GestureDetector(
      onTap: widget.isActive ? widget.onTap : null,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: widget.replaceContent ??
            Row(
              children: [
                Expanded(child: _buildTextField(textTheme, title, hint)),
                _buildCloseButton(title),
              ],
            ),
      ),
    );
  }

  Widget _buildTextField(TextTheme textTheme, String title, String hint) {
    const animationDuration = Duration(milliseconds: 200);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (hint.isNotEmpty)
          AnimatedDefaultTextStyle(
            style: title.isNotEmpty
                ? textTheme.labelSmall!
                : textTheme.bodyMedium!
                    .copyWith(color: Theme.of(context).hintColor),
            duration: animationDuration,
            child: Text(hint),
          ),
        if (title.isNotEmpty)
          Row(
            children: [
              if (widget.leadingIcon != null)
                Row(
                  children: [
                    widget.leadingIcon ?? const SizedBox.shrink(),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              Flexible(
                child: Text(
                  title,
                  style: widget.isActive
                      ? textTheme.bodyMedium
                      : textTheme.bodyMedium!.copyWith(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildCloseButton(String titleText) {
    return titleText.isNotEmpty
        ? Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                widget.onPressedTrailingBtn?.call();
              },
              child: widget.trailingFullState ?? const SizedBox.shrink(),
            ),
          )
        : widget.trailingEmptyState != null
            ? Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: widget.trailingEmptyState,
                ),
              )
            : const SizedBox.shrink();
  }
}
