# getx_quick_start

getx 特性研究

https://pub.flutter-io.cn/packages/get

## 关闭 null-safety

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

## 空值检查 unnecessary_non_null_assertion

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
