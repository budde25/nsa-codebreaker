.class Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresencePacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p2, "x1"    # Lorg/jivesoftware/smack/roster/Roster$1;

    .line 1452
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 7
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$700(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/Roster$RosterState;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$RosterState;->loading:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    if-ne v0, v1, :cond_0

    .line 1461
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->waitUntilLoaded()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    goto :goto_0

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Presence listener was interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1468
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$1000(Lorg/jivesoftware/smack/roster/Roster;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roster not loaded while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1471
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    .line 1472
    .local v0, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 1475
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    if-eqz v1, :cond_2

    .line 1476
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .local v2, "key":Lorg/jxmpp/jid/BareJid;
    goto :goto_1

    .line 1478
    .end local v2    # "key":Lorg/jxmpp/jid/BareJid;
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v2}, Lorg/jivesoftware/smack/roster/Roster;->access$1100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 1479
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v2, :cond_3

    .line 1480
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection was null while trying to handle exotic presence stanza: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1481
    return-void

    .line 1486
    :cond_3
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    .line 1487
    .local v3, "myJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v3, :cond_4

    .line 1488
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection had no local address in Roster\'s presence listener. Possibly we received a presence without from before being authenticated. Presence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1492
    return-void

    .line 1494
    :cond_4
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exotic presence stanza without from received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1495
    invoke-interface {v3}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .line 1498
    .end local v3    # "myJid":Lorg/jxmpp/jid/EntityFullJid;
    .local v2, "key":Lorg/jxmpp/jid/BareJid;
    :goto_1
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v3}, Lorg/jivesoftware/smack/roster/Roster;->access$1500(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v3

    new-instance v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;-><init>(Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;Lorg/jxmpp/jid/BareJid;)V

    invoke-virtual {v3, v2, v4}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 1612
    return-void
.end method
