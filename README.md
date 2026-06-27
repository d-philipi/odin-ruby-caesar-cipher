# Caesar Cipher Exercise

A Ruby practice project inspired by the [Caesar Cipher assignment](https://www.theodinproject.com/lessons/ruby-caesar-cipher) from [The Odin Project](https://www.theodinproject.com/) Ruby course.

## What is a Caesar Cipher?

In cryptography, a **Caesar cipher** is a simple substitution cipher where each letter in the plaintext is replaced by another letter a fixed number of positions away in the alphabet.

For example, with a shift of **3**:

| Original | `h` | `e` | `l` | `l` | `o` |
|----------|-----|-----|-----|-----|-----|
| Encoded  | `k` | `h` | `o` | `o` | `r` |

Letters near the end of the alphabet **wrap around** — shifting `z` by 3 becomes `c`.

The technique is named after Julius Caesar, who reportedly used it in private correspondence.

## Project Objective

Implement a `caesar_cipher` method that takes a string and a shift value, then returns a new encoded string.

```ruby
caesar_cipher('hello', 3)
# => 'khoor'
```

This exercise reinforces:

- String manipulation (`chars`, `map`, `reduce`)
- Conditionals (`if` / `else`)
- Working with arrays and ranges
- The modulo operator (`%`) for alphabet wrap-around
- Input validation

## Project Structure

```
odin-ruby-caesar-cipher/
├── exercise/
│   └── caesar_cipher_exercise.rb   # Your implementation goes here
├── solution/
│   └── caesar_cipher_exercise.rb   # Reference solution (spoiler!)
├── spec/
│   ├── caesar_cipher_exercise_spec.rb
│   └── spec_helper.rb
├── .rspec
└── README.md
```

| Folder / file | Purpose |
|---------------|---------|
| `exercise/` | Write your code here while learning |
| `spec/` | RSpec tests that verify your solution |
| `solution/` | A completed reference implementation |

By default, the specs load your code from `exercise/caesar_cipher_exercise.rb`.

## Requirements

Your `caesar_cipher(string, number)` method should handle the following cases.

### Positive shift values

Shift each letter forward in the alphabet.

```ruby
caesar_cipher('hello', 3)  # => 'khoor'
caesar_cipher('hello', 5)  # => 'mjqqt'
caesar_cipher('hello', 7)  # => 'olssv'
```

### Negative shift values

Shift each letter backward in the alphabet (equivalent to a left shift).

```ruby
caesar_cipher('hello', -3)  # => 'ebiil'
caesar_cipher('hello', -5)  # => 'czggj'
caesar_cipher('hello', -7)  # => 'axeeh'
```

### Invalid shift values

If the shift value is not a valid integer, return a warning message:

```ruby
caesar_cipher('hello', 'abc')
# => 'Warning: Shift value must be an integer'
```

### Numeric strings

If the shift value is a string that contains **only digits** (optionally with a leading minus sign), treat it as an integer:

```ruby
caesar_cipher('hello', '123')   # => 'axeeh'
caesar_cipher('hello', '-123')  # => 'olssv'
```

> **Tip:** Do not rely on `.to_i` alone to validate strings. `"abc".to_i` returns `0`, which looks valid but is not. Use a regex like `/\A-?\d+\z/` or `Integer(value)` with error handling instead.

## Getting Started

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/) installed
- [RSpec](https://rspec.info/) gem (`gem install rspec`)

### Run the tests

From the project root:

```bash
cd odin-ruby-caesar-cipher
rspec
```

Or run a specific spec file:

```bash
rspec spec/caesar_cipher_exercise_spec.rb
```

### Workflow

1. Open `exercise/caesar_cipher_exercise.rb` and implement `caesar_cipher`.
2. Run `rspec` — the first active test should pass once your basic logic works.
3. Tests marked with `xit` are skipped. Remove the `x` from `xit` to enable the next test (change `xit` to `it`).
4. Repeat until all tests pass.

## Hints

- Build an alphabet array: `('a'..'z').to_a`
- Find a letter's position with `alphabet.index(char)`
- Use `%` to wrap indices when they go past `z` or below `a`
- Iterate over characters with `.chars.map`, `.chars.reduce`, or `.each`
- Ruby provides `negative?` and `positive?` on integers (not `is_negative?` / `is_positive?`)
- Blocks use `do ... end` or `{ ... }` — that `do` belongs to methods like `map`, not to `if` statements

## Odin Project Reference

The original Odin assignment also mentions:

- Preserving letter case (uppercase stays uppercase)
- Leaving punctuation and spaces unchanged

This exercise focuses on lowercase letter shifting and extended input validation. Once you finish here, consider extending your solution to match the full Odin brief:

```ruby
caesar_cipher('What a string!', 5)
# => 'Bmfy f xywnsl!'
```

## Resources

- [Odin Project — Caesar Cipher](https://www.theodinproject.com/lessons/ruby-caesar-cipher)
- [Odin Project — Ruby Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby)
- [Ruby `String` documentation](https://ruby-doc.org/core/String.html)
- [Ruby `Enumerable#map`](https://ruby-doc.org/core/Enumerable.html#method-i-map)

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE).
