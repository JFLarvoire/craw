cmd's internal echo command leaves the errorlevel unchanged.
The trick used to echo strings without a CRLF (<NUL set/p =string) sets the errorlevel to 1.
To silently clear the errorlevel before running echo, we use another trick: (call,)

Echo a string without quotes:
  $ (call,) & echo Youpi
  Youpi
Echo a string with quotes:
  $ (call,) & echo "OK"
  "OK"
Generate a non-0 errorlevel:
  $ more oops.txt 2> swallow_error_message.txt
  [1]
