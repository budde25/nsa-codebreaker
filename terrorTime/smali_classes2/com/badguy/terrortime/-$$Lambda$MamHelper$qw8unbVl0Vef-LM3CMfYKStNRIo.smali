.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$MamHelper$qw8unbVl0Vef-LM3CMfYKStNRIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/jxmpp/jid/Jid;


# direct methods
.method public synthetic constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$qw8unbVl0Vef-LM3CMfYKStNRIo;->f$0:Lorg/jxmpp/jid/Jid;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$qw8unbVl0Vef-LM3CMfYKStNRIo;->f$0:Lorg/jxmpp/jid/Jid;

    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    invoke-static {v0, p1}, Lcom/badguy/terrortime/MamHelper;->lambda$getMessageArchive$4(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Message;)Lcom/badguy/terrortime/Message;

    move-result-object p1

    return-object p1
.end method
