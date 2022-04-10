# KustomExport

> ## **Definição**

<!-- markdown-link-check-disable-next-line -->
[_KustomExport_](https://github.com/deezer/KustomExport) é uma biblioteca Kotlin MultiPlatform (KMP) para gerar uma API TypeScript de forma simples e fácil.

> ## **Exemplo**

### **Código**

```kotlin
@JsExport // Kotlin 1.6.10+
enum class StateEnum { IDLE, RUNNING }
@JsExport
data class SomeDataObject(
    val timestamp: Long,
    val state: StateEnum,
    val idList: List<String>
)
```  

### **Resultado**

```ts
export namespace sample.doc_examples {
    class SomeDataObject {
        constructor(timestamp: any/* kotlin.Long */, state: any/* sample.doc_examples.StateEnum */, idList: any/* kotlin.collections.List<string> */);
        get timestamp(): any/* kotlin.Long */;
        get state(): any/* sample.doc_examples.StateEnum */;
        get idList(): any/* kotlin.collections.List<string> */;
        component1(): any/* kotlin.Long */;
        component2(): any/* sample.doc_examples.StateEnum */;
        component3(): any/* kotlin.collections.List<string> */;
        copy(timestamp: any/* kotlin.Long */, state: any/* sample.doc_examples.StateEnum */, idList: any/* kotlin.collections.List<string> */): sample.doc_examples.SomeDataObject;
        toString(): string;
        hashCode(): number;
        equals(other: Nullable<any>): boolean;
    }
}
```

> ## **Configuração**

1. Instalar os plugins `multiplatform` e `google-devtools-ksp`:

    ```kotlin
    plugins {
      kotlin("multiplatform")
      id("com.google.devtools.ksp") version "1.6.0-1.0.2"
    }
    ```

2. Definir as dependência da biblioteca:

    ```kotlin
    repositories {
      mavenCentral()
      maven(url = "https://raw.githubusercontent.com/Deezer/KustomExport/mvn-repo")
    }

    kotlin {
    // jvm(), js() and other platforms...
      sourceSets {
        val commonMain by getting {
          dependencies {
            implementation("deezer.kustomexport:lib:<version>")
            implementation("deezer.kustomexport:lib-coroutines:<version>")
          }
        }
      }
    }
    ```

3. Habilitar o compilador para gerar o código em TypeScript:

    ```kotlin
    kotlin { 
      // KMP configuration
    }
    dependencies {
      add("kspJs", "deezer.kustomexport:compiler:0.1.0")
    }
    ```
    
