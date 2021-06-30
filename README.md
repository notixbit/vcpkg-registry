# vcpkg-registry
vcpkg-registry for notixbit open-source libraries

## Available ports

- [ntbpp](https://github.com/notixbit/ntbpp)

## Usage

**vcpkg-configuration.json**

```json
{
  "registries": [
    {
      "kind": "git",
      "repository": "https://github.com/notixbit/vcpkg-registry",
      "baseline": "c4f78a946944d1a51e89bde41cd61b0460eb6a60",
      "packages": []
    }
  ]
}
```

You can also limit the scope of packages ([ports](ports)) that you want to fetch from our registry:

```json
"packages": [ "ntbpp", "...<another-one>", "...<check ports/>"]
```
