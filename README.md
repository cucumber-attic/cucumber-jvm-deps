This project repackages the dependencies of Cucumber-JVM into a new package, `cucumber.deps.*`.
This is to prevent conflicts when Cucumber-JVM is used along with other project depending on the same libraries.

To publish a new release:

```
make release
```