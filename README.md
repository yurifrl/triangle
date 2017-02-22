# TriangleChallenge

A program that determine the type of a triangle.

I takes the lengths of the triangle's three sides as input,
and return whether the triangle is equilateral, isosceles or scalene.

## Installation

The package can be installed by adding `triangle_challenge` to your list of
dependencies in `mix.exs`:

```elixir
def deps do
  [{:triangle_challenge, "~> 0.1.0"}]
end

```
The docs can be found at [https://hexdocs.pm/triangle_challenge](https://hexdocs.pm/triangle_challenge).

## Testing
```
docker-compose run --rm web mix test
```

OR

```
mix test
```

My workflow

```
docker-compose run --rm web mix test --listen-on-stdin --cover
docker-compose run --rm web iex -S mix
```

## Reflections
Short excerpts of the work process

### Reflection on design Desisions.
TODO

### Structural Considerations.
TODO

### Readability of code and error cases.
TODO

### Showcase problem solving skills.
TODO
