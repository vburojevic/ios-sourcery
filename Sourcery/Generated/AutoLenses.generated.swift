// Generated using Sourcery 0.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable variable_name
infix operator *~: MultiplicationPrecedence
infix operator |>: AdditionPrecedence

struct Lens<Whole, Part> {
    let get: (Whole) -> Part
    let set: (Part, Whole) -> Whole
}

func * <A, B, C> (lhs: Lens<A, B>, rhs: Lens<B, C>) -> Lens<A, C> {
    return Lens<A, C>(
        get: { a in rhs.get(lhs.get(a)) },
        set: { (c, a) in lhs.set(rhs.set(c, lhs.get(a)), a) }
    )
}

func *~ <A, B> (lhs: Lens<A, B>, rhs: B) -> (A) -> A {
    return { a in lhs.set(rhs, a) }
}

func |> <A, B> (x: A, f: (A) -> B) -> B {
    return f(x)
}

func |> <A, B, C> (f: @escaping (A) -> B, g: @escaping (B) -> C) -> (A) -> C {
    return { g(f($0)) }
}

extension Pokemon {
  static let idLens = Lens<Pokemon, String>(
    get: { $0.id },
    set: { id, pokemon in
       Pokemon(id: id, name: pokemon.name, height: pokemon.height, weight: pokemon.weight, type: pokemon.type)
    }
  )
  static let nameLens = Lens<Pokemon, String>(
    get: { $0.name },
    set: { name, pokemon in
       Pokemon(id: pokemon.id, name: name, height: pokemon.height, weight: pokemon.weight, type: pokemon.type)
    }
  )
  static let heightLens = Lens<Pokemon, Float>(
    get: { $0.height },
    set: { height, pokemon in
       Pokemon(id: pokemon.id, name: pokemon.name, height: height, weight: pokemon.weight, type: pokemon.type)
    }
  )
  static let weightLens = Lens<Pokemon, Float>(
    get: { $0.weight },
    set: { weight, pokemon in
       Pokemon(id: pokemon.id, name: pokemon.name, height: pokemon.height, weight: weight, type: pokemon.type)
    }
  )
  static let typeLens = Lens<Pokemon, PokemonType>(
    get: { $0.type },
    set: { type, pokemon in
       Pokemon(id: pokemon.id, name: pokemon.name, height: pokemon.height, weight: pokemon.weight, type: type)
    }
  )
}
