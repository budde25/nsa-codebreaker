.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Client$FPwS0v5nzxnLmZDXzmYdDsGA7cA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$Client$FPwS0v5nzxnLmZDXzmYdDsGA7cA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$Client$FPwS0v5nzxnLmZDXzmYdDsGA7cA;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/badguy/terrortime/Contact;

    invoke-static {v0, p1}, Lcom/badguy/terrortime/Client;->lambda$getContact$7(Ljava/lang/String;Lcom/badguy/terrortime/Contact;)Z

    move-result p1

    return p1
.end method
