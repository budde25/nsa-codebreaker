.class Lorg/jivesoftware/smack/roster/Roster$2;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/Roster;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;

.field final synthetic val$connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 255
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$2;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iput-object p2, p0, Lorg/jivesoftware/smack/roster/Roster$2;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

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
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 260
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 261
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 262
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    const/4 v2, 0x0

    .line 263
    .local v2, "subscribeAnswer":Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    sget-object v3, Lorg/jivesoftware/smack/roster/Roster$6;->$SwitchMap$org$jivesoftware$smack$roster$Roster$SubscriptionMode:[I

    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$2;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v4}, Lorg/jivesoftware/smack/roster/Roster;->access$200(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 281
    :cond_0
    sget-object v2, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Deny:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    goto :goto_2

    .line 277
    :cond_1
    sget-object v2, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    .line 278
    goto :goto_2

    .line 265
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$2;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v3}, Lorg/jivesoftware/smack/roster/Roster;->access$300(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/roster/SubscribeListener;

    .line 266
    .local v7, "subscribeListener":Lorg/jivesoftware/smack/roster/SubscribeListener;
    invoke-interface {v7, v1, v0}, Lorg/jivesoftware/smack/roster/SubscribeListener;->processSubscribe(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_3

    .line 268
    goto :goto_1

    .line 270
    .end local v7    # "subscribeListener":Lorg/jivesoftware/smack/roster/SubscribeListener;
    :cond_3
    goto :goto_0

    .line 271
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 272
    return-void

    .line 285
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 286
    return-void

    .line 290
    :cond_6
    sget-object v3, Lorg/jivesoftware/smack/roster/Roster$6;->$SwitchMap$org$jivesoftware$smack$roster$SubscribeListener$SubscribeAnswer:[I

    invoke-virtual {v2}, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->ordinal()I

    move-result v7

    aget v3, v3, v7

    if-eq v3, v6, :cond_8

    if-eq v3, v5, :cond_9

    if-ne v3, v4, :cond_7

    .line 299
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 300
    .local v3, "response":Lorg/jivesoftware/smack/packet/Presence;
    goto :goto_3

    .line 302
    .end local v3    # "response":Lorg/jivesoftware/smack/packet/Presence;
    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 292
    :cond_8
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    .line 293
    .local v3, "bareFrom":Lorg/jxmpp/jid/BareJid;
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$2;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v4, v3}, Lorg/jivesoftware/smack/roster/RosterUtil;->askForSubscriptionIfRequired(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)V

    .line 296
    .end local v3    # "bareFrom":Lorg/jxmpp/jid/BareJid;
    :cond_9
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 297
    .local v3, "response":Lorg/jivesoftware/smack/packet/Presence;
    nop

    .line 305
    :goto_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 306
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$2;->val$connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v4, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 307
    return-void
.end method
