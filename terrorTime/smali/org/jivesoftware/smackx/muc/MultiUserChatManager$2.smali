.class Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;
.super Ljava/lang/Object;
.source "MultiUserChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 158
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 20
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Lorg/jivesoftware/smack/packet/Message;

    .line 163
    .local v9, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v9}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v10

    .line 165
    .local v10, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    invoke-virtual {v10}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v9}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v11

    .line 167
    .local v11, "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    if-nez v11, :cond_0

    .line 168
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invite to non bare JID: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lorg/jivesoftware/smack/packet/Message;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_0
    iget-object v1, v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v1, v11}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getMultiUserChat(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v12

    .line 173
    .local v12, "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    iget-object v1, v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$100(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v13

    .line 174
    .local v13, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-virtual {v10}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getInvite()Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;

    move-result-object v14

    .line 175
    .local v14, "invite":Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;
    invoke-virtual {v14}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;->getFrom()Lorg/jxmpp/jid/EntityJid;

    move-result-object v15

    .line 176
    .local v15, "from":Lorg/jxmpp/jid/EntityJid;
    invoke-virtual {v14}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;->getReason()Ljava/lang/String;

    move-result-object v16

    .line 177
    .local v16, "reason":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getPassword()Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, "password":Ljava/lang/String;
    iget-object v1, v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->access$200(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lorg/jivesoftware/smackx/muc/InvitationListener;

    .line 179
    .local v19, "listener":Lorg/jivesoftware/smackx/muc/InvitationListener;
    move-object/from16 v1, v19

    move-object v2, v13

    move-object v3, v12

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v9

    move-object v8, v14

    invoke-interface/range {v1 .. v8}, Lorg/jivesoftware/smackx/muc/InvitationListener;->invitationReceived(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;)V

    .line 180
    .end local v19    # "listener":Lorg/jivesoftware/smackx/muc/InvitationListener;
    goto :goto_0

    .line 182
    .end local v11    # "mucJid":Lorg/jxmpp/jid/EntityBareJid;
    .end local v12    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local v13    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v14    # "invite":Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;
    .end local v15    # "from":Lorg/jxmpp/jid/EntityJid;
    .end local v16    # "reason":Ljava/lang/String;
    .end local v17    # "password":Ljava/lang/String;
    :cond_1
    return-void
.end method
