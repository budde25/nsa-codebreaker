.class Lorg/jivesoftware/smackx/carbons/CarbonManager$2;
.super Ljava/lang/Object;
.source "CarbonManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/carbons/CarbonManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 112
    iput-object p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 8
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 116
    .local v0, "wrappingMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    move-result-object v1

    .line 117
    .local v1, "carbonExtension":Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->getDirection()Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    move-result-object v2

    .line 118
    .local v2, "direction":Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;->getForwarded()Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    move-result-object v3

    .line 119
    .local v3, "forwarded":Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;->getForwardedStanza()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/Message;

    .line 120
    .local v4, "carbonCopy":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-interface {v5}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v5

    .line 122
    .local v5, "from":Lorg/jxmpp/jid/BareJid;
    iget-object v6, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;->this$0:Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-static {v6}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->access$100(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v6

    new-instance v7, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;

    invoke-direct {v7, p0, v2, v4, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager$2$1;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager$2;Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v6, v5, v7}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
