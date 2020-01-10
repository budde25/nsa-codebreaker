.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Client$OF4irCVvHD9CrDMRD59yU9HT9Qs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/badguy/terrortime/Client;


# direct methods
.method public synthetic constructor <init>(Lcom/badguy/terrortime/Client;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$Client$OF4irCVvHD9CrDMRD59yU9HT9Qs;->f$0:Lcom/badguy/terrortime/Client;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$Client$OF4irCVvHD9CrDMRD59yU9HT9Qs;->f$0:Lcom/badguy/terrortime/Client;

    check-cast p1, Lcom/badguy/terrortime/Contact;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/Client;->lambda$addAllContacts$8$Client(Lcom/badguy/terrortime/Contact;)V

    return-void
.end method
