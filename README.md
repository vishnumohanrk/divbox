
# divbox  
  
A flutter widget that provides margin and padding utilities.  
Inspired by [ChakraUI styled props](https://vue.chakra-ui.com/style-props)  
   
## Available arguments:  

- `child` => Type: `Widget`  **REQUIRED** 
- `mx`, `my`, `px`, `py` => Horizontal(X) and Vertical(Y) padding and margin => Type: `double`  
- `ml`, `mt`, `mr`, `mb`, `pl`, `pt`, `pr`, `pb` => Left, Top, Right, Bottom Margin and Padding => Type: `double`
- `m`, `p` => Overall Margin and Padding (All 4 sides)
  
Individual values takes higher precedence over axis value.  
Axis values take higher precedence over overall value.

## Usage:

```dart
DivBox(
  m: 45.0,
  mr: 80.0,
  mx: 1.0,
  child: DivBox(
    px: 12.0,
    py: 24.0,
    pt: 75.0,
    child: Text(
      'Dart',
      style: TextStyle(
        fontSize: 24.0,
      ),
    ),
  ),
);
```

See [example](./example)