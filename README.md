### What is Rack?

"Rack" is actually a few different things:

- **An architecture** - Rack defines a very simple interface, and any code that conforms to this interface can be used in a Rack application. This makes it very easy to build small, focused, and reusable bits of code and then use Rack to compose these bits into a larger application.
- **A Ruby gem** - Rack is is distributed as a Ruby gem that provides the glue code needed to compose our code.

### The Rack Interface
Rack defines a very simple interface. Rack compliant code must have the following three characteristics:

- **It must respond to ``call``**
- **The ``call`` method must accept a single argument** - This argument is typically called ``env`` or ``environment``, and it bundles all of the data about the request.
- **The ``call`` method must return an array of three elements** These elements are, in order, ``status`` for the HTTP status code, ``headers``, and ``body`` for the actual content of the response.

A nice side effect of the ``call`` interface is that procs and lambdas can be used as Rack objects.

### Usage

https://github.com/rack/rack

```
bundle install
gem install rackup
rackup
http://0.0.0.0:9292
```