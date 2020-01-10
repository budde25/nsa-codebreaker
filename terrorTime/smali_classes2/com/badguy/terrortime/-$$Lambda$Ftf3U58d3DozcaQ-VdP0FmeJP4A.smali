.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Ftf3U58d3DozcaQ-VdP0FmeJP4A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/badguy/terrortime/Client;


# direct methods
.method public synthetic constructor <init>(Lcom/badguy/terrortime/Client;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$Ftf3U58d3DozcaQ-VdP0FmeJP4A;->f$0:Lcom/badguy/terrortime/Client;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$Ftf3U58d3DozcaQ-VdP0FmeJP4A;->f$0:Lcom/badguy/terrortime/Client;

    check-cast p1, Lcom/badguy/terrortime/Message;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/Client;->decryptMessage(Lcom/badguy/terrortime/Message;)Z

    move-result p1

    return p1
.end method
