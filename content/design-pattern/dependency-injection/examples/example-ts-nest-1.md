# Exemplo em TypeScript com NestJS

```ts
@Injectable()
export class SMTPMailService {
  sendEmail(): string {
    return "SMTP Mail";
  }
}

@Module({
  // ...
  providers: [SMTPMailService],
})
```
