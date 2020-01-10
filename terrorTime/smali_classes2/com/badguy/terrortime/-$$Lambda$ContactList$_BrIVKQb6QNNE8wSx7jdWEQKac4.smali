.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactList$_BrIVKQb6QNNE8wSx7jdWEQKac4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/badguy/terrortime/ContactList;


# direct methods
.method public synthetic constructor <init>(Lcom/badguy/terrortime/ContactList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$ContactList$_BrIVKQb6QNNE8wSx7jdWEQKac4;->f$0:Lcom/badguy/terrortime/ContactList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$ContactList$_BrIVKQb6QNNE8wSx7jdWEQKac4;->f$0:Lcom/badguy/terrortime/ContactList;

    check-cast p1, Lorg/jxmpp/jid/Jid;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/ContactList;->lambda$addContacts$0$ContactList(Lorg/jxmpp/jid/Jid;)V

    return-void
.end method
