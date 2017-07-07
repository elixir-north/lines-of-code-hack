# Lines of Code Hack

### Objective
Your objective is to write a module which counts the significant lines of code in a given file or directory. The API is simple `Loc.count_file/1` should output the lines of code for a single file while `Loc.count_directory(path)` should output the lines of code for all files in the directory (recursively).

- Lines which are solely whitespace (spaces or tabs) should be ignored.
- Lines which are only comments (starts with #) should be ignored.
- Non-Elixir files should be ignored (anything without a `.ex` or `.exs` extension).
- Assume that files and directories passed in exist and are fully readable.

### Testing your solution
To test your solution manually, use the `Loc` module in `iex` like so:

```
$ iex -S mix
iex> Loc.count_file("foo.ex") # => 10
iex> Loc.count_directory("foo/bar") # => 100
```

To run the test suite and ensure your solution passes, use the following:
```
$ mix test
```

---

![](https://media4.giphy.com/media/10AYkGR9M75nLW/giphy.gif?response_id=595fb8e0f6c24119376755d5)