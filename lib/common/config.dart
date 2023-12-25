class Config {
  static bool? DEBUG = true;

  static const PAGE_SIZE = 20;

  /// //////////////////////////////////////常量////////////////////////////////////// ///
  static const API_TOKEN = "4d65e2a5626103f92a71867d7b49fea0";
  static const TOKEN_KEY = "token";
  static const USER_NAME_KEY = "user-name";
  static const PW_KEY = "user-pw";
  static const USER_BASIC_CODE = "user-basic-code";
  static const USER_INFO = "user-info";
  static const LANGUAGE_SELECT = "language-select";
  static const LANGUAGE_SELECT_NAME = "language-select-name";
  static const REFRESH_LANGUAGE = "refreshLanguageApp";
  static const THEME_COLOR = "theme-color";
  static const LOCALE = "locale";
}

class syntax {
  static const List<String> dartCodeList = [
    "//var： 变量类型会根据赋值自动推断。\nvar myVariable = 'Hello, Flutter!';\n//final： 一旦赋值后不可更改。(运行时确定，可用于延迟初始化)\nfinal int myNumber = 42;\n//const： 常量，值在编译时就已知且不可改变。\nconst int constVariable = 42; // 编译时常量\n\n//私有变量： 在Dart中，通过在标识符前面添加下划线来表示私有变量。\nString _privateVariable = 'I am private';\n//@protected注解: 类成员可以在其声明的类及其子类中访问，但在类外部是不可见的。\nclass MyBaseClass {\n  @protected\n  String protectedVariable = 'I am protected';\n\n  @protected\n  void protectedMethod() {\n    print('Protected method');\n  }\n}\n\nclass MyDerivedClass extends MyBaseClass {\n  void accessProtectedMember() {\n    // 在子类中可以访问 @protected 成员\n    print(protectedVariable);\n    protectedMethod();\n  }\n}\n\nvoid main() {\n  var derivedObject = MyDerivedClass();\n  derivedObject.accessProtectedMember(); // 可以访问 @protected 成员\n\n  // 在类外部不可访问 @protected 成员\n  // print(derivedObject.protectedVariable);  // 编译错误\n  // derivedObject.protectedMethod();         // 编译错误\n}\n",
    "class MyClass {\n  String name = 'Flutter';\n}",
    "// Dart comments\nvoid myFunction() {\n  // Code here\n}",
  ];
}
