# _Schemas_ no Prisma

> ## **Sintaxe**

```
model {
  [nome] [tipo] [constraints]
  // ...
}
```

> ## **Exemplo**

```
model Notification {
  id          String    @id
  recipientId String
  content     String
  category    String
  readAt      DateTime?
  createdAt   DateTime  @default(now())

  @@index([recipientId])
}
```
