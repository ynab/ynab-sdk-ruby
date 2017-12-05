# YNAB API Ruby Library

The YNAB API Ruby library provides access to the YNAB API from
applications written in Ruby.

Please read the [YNAB API documentation](https://api.youneedabudget.com) for an
overview of using the API and a complete list of the available resources.

## Installation

```
gem install ynab
```

## Usage

To use this client, you must
[obtain an access token](https://api.youneedabudget.com/#authentication) from
the [My Account](https://app.youneedabudget.com/settings) area of the YNAB web
application.

```
require 'ynab'

```

## Examples

See the [examples](https://github.com/ynab/ynab-sdk-ruby/tree/master/examples)
folder for example usage scenarios.

## Development

To generate latest based on swagger spec:

```
rake generate
```

To run tests:

```
rake spec
```

## License

Copyright (c) 2017 You Need A Budget, LLC

Licensed under the Apache-2.0 license