.class Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;
.super Ljava/lang/Object;
.source "MultiUserChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

.field final synthetic val$mucs:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

    .line 195
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;->val$mucs:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 198
    const-string v0, "Could not leave room"

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

    iget-object v1, v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$400(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;

    move-result-object v1

    .line 199
    .local v1, "failedCallback":Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;->val$mucs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/EntityBareJid;

    .line 200
    .local v3, "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

    iget-object v4, v4, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getMultiUserChat(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v4

    .line 202
    .local v4, "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getNickname()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v5

    .line 205
    .local v5, "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    if-nez v5, :cond_1

    return-void

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    .line 216
    nop

    .line 218
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Lorg/jxmpp/jid/parts/Resourcepart;)V
    :try_end_1
    .catch Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    nop

    .line 228
    .end local v3    # "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    .end local v4    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local v5    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    goto :goto_0

    .line 219
    .restart local v3    # "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    .restart local v4    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .restart local v5    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v1, :cond_2

    .line 222
    invoke-interface {v1, v4, v2}, Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;->autoJoinFailed(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/Exception;)V

    goto :goto_2

    .line 224
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_2
    return-void

    .line 209
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v2

    .line 210
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v1, :cond_3

    .line 211
    invoke-interface {v1, v4, v2}, Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;->autoJoinFailed(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/Exception;)V

    goto :goto_4

    .line 213
    :cond_3
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :goto_4
    return-void

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    .end local v4    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local v5    # "nickname":Lorg/jxmpp/jid/parts/Resourcepart;
    :cond_4
    return-void
.end method
