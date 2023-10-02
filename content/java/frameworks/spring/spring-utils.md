# Classe SpringUtils do Spring

> ## **Método `cleanPath()`**

### **Definição**

O método `cleanPath()` tem a função de ajustar o separador de diretório de um String (contendo a caminho de um arquivo) com base OS.

### **Exemplo**

```java
public String storeFile(MultipartFile file) throws IOException {
    String cleanedFileName = StringUtils.cleanPath(file.getOriginalFilename());
    Path filePath = Paths.get(fileStoragePath + "\\" + cleanedFileName);

    Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

    return cleanedFileName;
}
```