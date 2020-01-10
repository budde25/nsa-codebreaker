.class Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;
.super Ljava/lang/Object;
.source "ChatStateManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/chatstates/ChatStateManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 135
    iput-object p1, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 17
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 138
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    check-cast v8, Lorg/jivesoftware/smack/packet/Message;

    .line 140
    .local v8, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v9

    .line 141
    .local v9, "fullFrom":Lorg/jxmpp/jid/EntityFullJid;
    invoke-interface {v9}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v10

    .line 143
    .local v10, "bareFrom":Lorg/jxmpp/jid/EntityBareJid;
    iget-object v0, v7, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$200(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/chat2/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat2/ChatManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/jivesoftware/smack/chat2/ChatManager;->chatWith(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/chat2/Chat;

    move-result-object v11

    .line 144
    .local v11, "chat":Lorg/jivesoftware/smack/chat2/Chat;
    const-string v0, "http://jabber.org/protocol/chatstates"

    invoke-virtual {v8, v0}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v12

    .line 145
    .local v12, "extension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-interface {v12}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v13

    .line 149
    .local v13, "chatStateElementName":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Lorg/jivesoftware/smackx/chatstates/ChatState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/chatstates/ChatState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v0

    .line 154
    .local v14, "state":Lorg/jivesoftware/smackx/chatstates/ChatState;
    nop

    .line 155
    move-object v5, v14

    .line 158
    .local v5, "finalState":Lorg/jivesoftware/smackx/chatstates/ChatState;
    iget-object v0, v7, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$400(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v7, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$400(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    iget-object v2, v7, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$400(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    move-object v3, v0

    .line 164
    .local v3, "finalListeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    iget-object v1, v7, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$500(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v15

    new-instance v6, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v4, v11

    move-object/from16 v16, v0

    move-object v0, v6

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    .local v16, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2$1;-><init>(Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;Ljava/util/List;Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v15, v11, v0}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 172
    return-void

    .line 161
    .end local v3    # "finalListeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    .end local v16    # "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/chatstates/ChatStateListener;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 151
    .end local v5    # "finalState":Lorg/jivesoftware/smackx/chatstates/ChatState;
    .end local v14    # "state":Lorg/jivesoftware/smackx/chatstates/ChatState;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 152
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid chat state element name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method
