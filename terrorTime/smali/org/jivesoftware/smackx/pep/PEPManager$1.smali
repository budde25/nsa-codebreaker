.class Lorg/jivesoftware/smackx/pep/PEPManager$1;
.super Ljava/lang/Object;
.source "PEPManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/pep/PEPManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/pep/PEPManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-class v0, Lorg/jivesoftware/smackx/pep/PEPManager;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smackx/pep/PEPManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/pep/PEPManager;

    .line 99
    iput-object p1, p0, Lorg/jivesoftware/smackx/pep/PEPManager$1;->this$0:Lorg/jivesoftware/smackx/pep/PEPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 5
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 102
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 103
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {p1}, Lorg/jivesoftware/smackx/pubsub/EventElement;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/pubsub/EventElement;

    move-result-object v1

    .line 104
    .local v1, "event":Lorg/jivesoftware/smackx/pubsub/EventElement;
    nop

    .line 105
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 106
    .local v2, "from":Lorg/jxmpp/jid/EntityBareJid;
    nop

    .line 107
    iget-object v3, p0, Lorg/jivesoftware/smackx/pep/PEPManager$1;->this$0:Lorg/jivesoftware/smackx/pep/PEPManager;

    invoke-static {v3}, Lorg/jivesoftware/smackx/pep/PEPManager;->access$100(Lorg/jivesoftware/smackx/pep/PEPManager;)Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v3

    new-instance v4, Lorg/jivesoftware/smackx/pep/PEPManager$1$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lorg/jivesoftware/smackx/pep/PEPManager$1$1;-><init>(Lorg/jivesoftware/smackx/pep/PEPManager$1;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/pubsub/EventElement;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v3, v2, v4}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
