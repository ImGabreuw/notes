# Exemplo em TypeScript e Nest

```ts
export abstract class MailService {
  abstract sendEmail(): string;
}

@Injectable()
export class SMTPMailService implements MailService {
  sendEmail(): string {
    return "SMTP Mail";
  }
}

@Injectable()
export class PostmarkMailService implements MailService {
  sendEmail(): string {
    return "Postmark Mail";
  }
}

@Controller()
export class AppController {
  constructor(private readonly mailService: MailService) {}

  // ...
}

@Module({
  // ...
  providers: [
    {
      provide: MailService,
      useClass: SMTPMailService, // ou PostmarkMailService,
    },
  ],
})
export class AppModule {}
```

> Essa flexibilidade na mudação de `SMTPMailService` para `PostmarkMailService` e vice versa é possível por causa da **inversão de dependência** e do **polimorfismo** fornecido pelo TypeScript
