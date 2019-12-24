.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactActivity$amDjCaoNmOl_SzW_EDCL5XHPsu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Lcom/badguy/terrortime/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/badguy/terrortime/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$amDjCaoNmOl_SzW_EDCL5XHPsu0;->f$0:Lcom/badguy/terrortime/Message;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$amDjCaoNmOl_SzW_EDCL5XHPsu0;->f$0:Lcom/badguy/terrortime/Message;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/badguy/terrortime/ContactActivity;->lambda$null$6(Lcom/badguy/terrortime/Message;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
