.class Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

.field final synthetic val$from:Lorg/jxmpp/jid/EntityFullJid;

.field final synthetic val$isUserStatusModification:Z

.field final synthetic val$myRoomJID:Lorg/jxmpp/jid/EntityFullJid;

.field final synthetic val$packet:Lorg/jivesoftware/smack/packet/Stanza;

.field final synthetic val$presence:Lorg/jivesoftware/smack/packet/Presence;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$3;Lorg/jivesoftware/smack/packet/Presence;Lorg/jxmpp/jid/EntityFullJid;Lorg/jivesoftware/smack/packet/Stanza;ZLorg/jxmpp/jid/EntityFullJid;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    .line 213
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    iput-object p4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$packet:Lorg/jivesoftware/smack/packet/Stanza;

    iput-boolean p5, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$isUserStatusModification:Z

    iput-object p6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$myRoomJID:Lorg/jxmpp/jid/EntityFullJid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 216
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$7;->$SwitchMap$org$jivesoftware$smack$packet$Presence$Type:[I

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v0, v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$500(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$packet:Lorg/jivesoftware/smack/packet/Stanza;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v0

    .line 249
    .local v0, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v1, v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 252
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getStatus()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    .line 253
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$myRoomJID:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v3, v4}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    .line 251
    invoke-static {v1, v2, v3, v0, v4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$900(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/util/Set;ZLorg/jivesoftware/smackx/muc/packet/MUCUser;Lorg/jxmpp/jid/EntityFullJid;)V

    goto/16 :goto_2

    .line 258
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$isUserStatusModification:Z

    if-nez v1, :cond_5

    .line 259
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v1, v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$800(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 260
    .local v2, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v2, v3}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->left(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 261
    .end local v2    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_0

    :cond_2
    goto/16 :goto_2

    .line 218
    .end local v0    # "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v0, v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$500(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 219
    .local v0, "oldPresence":Lorg/jivesoftware/smack/packet/Presence;
    if-eqz v0, :cond_4

    .line 221
    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v1

    .line 222
    .local v1, "mucExtension":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v2

    .line 223
    .local v2, "oldAffiliation":Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v3

    .line 225
    .local v3, "oldRole":Lorg/jivesoftware/smackx/muc/MUCRole;
    iget-object v4, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$packet:Lorg/jivesoftware/smack/packet/Stanza;

    invoke-static {v4}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getAffiliation()Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v4

    .line 227
    .local v4, "newAffiliation":Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->getItem()Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;->getRole()Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v5

    .line 229
    .local v5, "newRole":Lorg/jivesoftware/smackx/muc/MUCRole;
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v6, v6, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-boolean v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$isUserStatusModification:Z

    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    invoke-static {v6, v3, v5, v7, v8}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$600(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jivesoftware/smackx/muc/MUCRole;ZLorg/jxmpp/jid/EntityFullJid;)V

    .line 231
    iget-object v6, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v6, v6, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-boolean v7, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$isUserStatusModification:Z

    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    invoke-static {v6, v2, v4, v7, v8}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$700(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCAffiliation;ZLorg/jxmpp/jid/EntityFullJid;)V

    .line 236
    .end local v1    # "mucExtension":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    .end local v2    # "oldAffiliation":Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .end local v3    # "oldRole":Lorg/jivesoftware/smackx/muc/MUCRole;
    .end local v4    # "newAffiliation":Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    .end local v5    # "newRole":Lorg/jivesoftware/smackx/muc/MUCRole;
    goto :goto_2

    .line 239
    :cond_4
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$isUserStatusModification:Z

    if-nez v1, :cond_5

    .line 240
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v1, v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$800(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;

    .line 241
    .local v2, "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$from:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v2, v3}, Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;->joined(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 242
    .end local v2    # "listener":Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;
    goto :goto_1

    .line 268
    .end local v0    # "oldPresence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->this$1:Lorg/jivesoftware/smackx/muc/MultiUserChat$3;

    iget-object v0, v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-static {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$1000(Lorg/jivesoftware/smackx/muc/MultiUserChat;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/PresenceListener;

    .line 269
    .local v1, "listener":Lorg/jivesoftware/smack/PresenceListener;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$3$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/PresenceListener;->processPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 270
    .end local v1    # "listener":Lorg/jivesoftware/smack/PresenceListener;
    goto :goto_3

    .line 271
    :cond_6
    return-void
.end method
