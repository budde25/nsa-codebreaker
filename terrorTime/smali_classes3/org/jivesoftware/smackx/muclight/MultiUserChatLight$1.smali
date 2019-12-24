.class Lorg/jivesoftware/smackx/muclight/MultiUserChatLight$1;
.super Ljava/lang/Object;
.source "MultiUserChatLight.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityJid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight$1;->this$0:Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 101
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 102
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight$1;->this$0:Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->access$000(Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/MessageListener;

    .line 103
    .local v2, "listener":Lorg/jivesoftware/smack/MessageListener;
    invoke-interface {v2, v0}, Lorg/jivesoftware/smack/MessageListener;->processMessage(Lorg/jivesoftware/smack/packet/Message;)V

    .line 104
    .end local v2    # "listener":Lorg/jivesoftware/smack/MessageListener;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method
