# CooklangParser

CooklangParser is a Swift package that provides parsing capabilities for Cooklang, a markup language designed for writing recipes.

## Features

- Parse Cooklang recipes into structured data
- Extract ingredients, cookware, and cooking steps
- Support for Cooklang syntax including quantities, timers, and metadata

## Installation

### Swift Package Manager

You can add CooklangParser to your project using Swift Package Manager. Add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/cooklang/ios.git", from: "0.13.3")
]


```
Then, include "CooklangParser" as a dependency for your target:

```swift
targets: [
    .target(
        name: "YourTarget",
        dependencies: ["CooklangParser"]),
]
```

## Usage

Here's a quick example of how to use CooklangParser:

```swift
import CooklangParser
let cooklangText = """
>> servings: 2
Preheat the oven to 200°C.
Mix @flour{200%g}, @sugar{100%g}, and @baking powder{1%tsp} in a bowl.
Add @milk{150%ml} and @eggs{2} to the dry ingredients and mix well.
Pour the batter into a @baking pan{} and bake for ~{30%minutes}.
"""
let parser = CooklangParser()
let recipe = try parser.parse(cooklangText)
print("Ingredients:")
for ingredient in recipe.ingredients {
    print("- \(ingredient.name): \(ingredient.quantity ?? "N/A") \(ingredient.unit ?? "")")
}
print("\nSteps:")
for (index, step) in recipe.steps.enumerated() {
    print("\(index + 1). \(step)")
}
```

## Documentation

For more detailed information on how to use CooklangParser, please refer to the [bindings documentation](https://github.com/cooklang/cooklang-rs/tree/main/bindings).

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

