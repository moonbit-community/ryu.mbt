///|
test "db2string" {
  inspect(
    ryu_to_string_precision(12345.123456, precision=3),
    content="12345.123",
  )
}

///|
test "db2string2" {
  inspect(ryu_to_string_precision(12345.123456, precision=0), content="12345")
}

///|
test "db2string3" {
  inspect(
    ryu_to_string_precision(12345.123456, precision=10),
    content="12345.1234560000",
  )
}

///|
test "db2string4" {
  inspect(
    ryu_to_string_precision(12345.123456, precision=17),
    content="12345.12345599999935075",
  )
}

// TODO: roundUp

///|
test "db2string5" {
  inspect(
    ryu_to_string_precision(-8888888.1, precision=1),
    content="-8888888.1",
  )
}

///|
test "ryu_to_string_exp" {
  inspect(ryu_to_string_exp(12345.123, precision=3), content="1.235e+04")
}

///|
test "ryu_to_string_exp" {
  inspect(
    ryu_to_string_exp(12345.123, precision=17),
    content="1.23451229999999996e+04",
  )
}
