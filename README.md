# BigOrangeQWQ/ryu

This project extends the standard library's Ryu algorithm for fast float-to-string conversion, providing two additional functions that support more parameters for flexible formatting.

## Example

```moonbit

test "ryu_to_string_precision" {
  inspect(
    ryu_to_string_precision(12345.123456, precision=3),
    content="12345.123",
  )
}

///|
test "ryu_to_string_exp" {
  inspect(
    ryu_to_string_exp(12345.123, precision=17),
    content="1.23451229999999996e+04",
  )
}

```


## Standard library
- [Moonbit Core Ryu](https://github.com/moonbitlang/core/tree/main/double/internal/ryu).