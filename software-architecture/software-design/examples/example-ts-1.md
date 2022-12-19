# Exemplo em TypeScript

```ts
export interface NotificationProps {
  recipientId: string;
  content: string;
  category: string;
  readAt?: Date | null; // readAt aceita: Date / null / undefined
  createdAt: Date;
}

export class Notification {
  private props: NotificationProps;

  constructor(props: NotificationProps) {
    this.props = props;
  }

  public get content() {
    return this.props.content;
  }

  public set content(content: string) {
    this.props.content = content;
  }

  public get category() {
    return this.props.category;
  }

  public set category(category: string) {
    this.props.category = category;
  }
}
```
