// Using Composition and Inheritance

abstract class Widget {}

class Text extends Widget {
  final String text;

  Text(this.text);

}

class Button extends Widget{
  final Widget child;
  void Function()? onPressed;

  Button({required this.child,required this.onPressed });
}

void main(List<String> args) {
  final button = Button(
    child: Text('Connect'), 
    onPressed: () => {});
}