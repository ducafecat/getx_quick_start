# getx_quick_start

## 前言

这个仓库只是对 getx 功能就行整理和研究，实战中的项目代码架构不在这里实现（可能用 getx 重写一版去年新闻客户端 APP）。

## 研究重点

1. 功能覆盖
2. 三端表现：android ios、web、桌面

## 官仓

https://pub.flutter-io.cn/packages/get

![](./README/2021-03-24-17-37-06.png)

## vscode 插件

https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets

## 开发环境

```
Flutter 2.1.0-12.1.pre • channel dev • https://github.com/flutter/flutter.git
Framework • revision 8264cb3e8a (2 weeks ago) • 2021-03-10 12:37:57 -0800
Engine • revision 711ab3fda0
Tools • Dart 2.13.0 (build 2.13.0-116.0.dev)
```

## 遇到的问题

### 关闭 null-safety

很多第三方包还没有 `null-safety`

.vscode/launch.json

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "getx_quick_start",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "args": ["--no-sound-null-safety"]
    }
  ]
}
```

### 空值检查 unnecessary_non_null_assertion

https://dart.dev/tools/diagnostic-messages#unnecessary_non_null_assertion

原来

```dart
...
val == null
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
          ),
```

现在

```dart
  _buildBackListTileRow(Map? val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
          );
  }
```

## 参考

- [getx_pattern](https://kauemurakami.github.io/getx_pattern/)
- [GetX Snippets](https://marketplace.visualstudio.com/items?itemName=get-snippets.get-snippets)
