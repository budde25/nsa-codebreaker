.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;->f$0:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/badguy/terrortime/-$$Lambda$Client$RvLwVaSZdo56VGeC57UBTCbPC5w;->f$1:Z

    check-cast p1, Lcom/badguy/terrortime/Message;

    invoke-static {v0, v1, p1}, Lcom/badguy/terrortime/Client;->lambda$getMessages$10(Ljava/lang/String;ZLcom/badguy/terrortime/Message;)Z

    move-result p1

    return p1
.end method
