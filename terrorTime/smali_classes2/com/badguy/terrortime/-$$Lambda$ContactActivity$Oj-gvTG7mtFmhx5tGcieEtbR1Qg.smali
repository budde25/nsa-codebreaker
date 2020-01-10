.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Oj-gvTG7mtFmhx5tGcieEtbR1Qg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Oj-gvTG7mtFmhx5tGcieEtbR1Qg;->f$0:Lcom/badguy/terrortime/ContactActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Oj-gvTG7mtFmhx5tGcieEtbR1Qg;->f$0:Lcom/badguy/terrortime/ContactActivity;

    check-cast p1, Lcom/badguy/terrortime/Message;

    invoke-virtual {v0, p1}, Lcom/badguy/terrortime/ContactActivity;->lambda$onCreate$7$ContactActivity(Lcom/badguy/terrortime/Message;)V

    return-void
.end method
