.class Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

.field final synthetic val$from:Lorg/jxmpp/jid/Jid;

.field final synthetic val$key:Lorg/jxmpp/jid/BareJid;

.field final synthetic val$presence:Lorg/jivesoftware/smack/packet/Presence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1498
    const-class v0, Lorg/jivesoftware/smack/roster/Roster;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;Lorg/jxmpp/jid/BareJid;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    .line 1498
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iput-object p2, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    iput-object p3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    iput-object p4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1501
    sget-object v0, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1502
    .local v0, "fromResource":Lorg/jxmpp/jid/parts/Resourcepart;
    const/4 v1, 0x0

    .line 1503
    .local v1, "bareFrom":Lorg/jxmpp/jid/BareJid;
    const/4 v2, 0x0

    .line 1504
    .local v2, "fullFrom":Lorg/jxmpp/jid/FullJid;
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    if-eqz v3, :cond_1

    .line 1505
    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    .line 1506
    if-nez v0, :cond_0

    .line 1507
    sget-object v0, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1508
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    goto :goto_0

    .line 1511
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;

    move-result-object v2

    .line 1520
    :cond_1
    :goto_0
    sget-object v3, Lorg/jivesoftware/smack/roster/Roster$6;->$SwitchMap$org$jivesoftware$smack$packet$Presence$Type:[I

    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    goto/16 :goto_7

    .line 1603
    :cond_2
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v3, v3, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v3}, Lorg/jivesoftware/smack/roster/Roster;->access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 1604
    .local v4, "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v4, v1, v5}, Lorg/jivesoftware/smack/roster/PresenceEventListener;->presenceUnsubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1605
    .end local v4    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    goto :goto_1

    .line 1606
    :cond_3
    goto/16 :goto_7

    .line 1598
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v3, v3, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v3}, Lorg/jivesoftware/smack/roster/Roster;->access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 1599
    .restart local v4    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v4, v1, v5}, Lorg/jivesoftware/smack/roster/PresenceEventListener;->presenceSubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1600
    .end local v4    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    goto :goto_2

    .line 1601
    :cond_5
    goto/16 :goto_7

    .line 1580
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->isEntityBareJid()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1581
    goto/16 :goto_7

    .line 1583
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v3, v3, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1200(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v3

    .line 1585
    .local v3, "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1588
    sget-object v4, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->contains(Lorg/jxmpp/jid/BareJid;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1591
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->access$1300(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1593
    :cond_8
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 1594
    .local v5, "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    iget-object v6, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    iget-object v7, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v5, v6, v7}, Lorg/jivesoftware/smack/roster/PresenceEventListener;->presenceError(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1595
    .end local v5    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    goto :goto_3

    .line 1596
    :cond_9
    goto/16 :goto_7

    .line 1541
    .end local v3    # "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_a
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v3, v3, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1200(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v3

    .line 1542
    .restart local v3    # "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$from:Lorg/jxmpp/jid/Jid;

    invoke-interface {v4}, Lorg/jxmpp/jid/Jid;->hasNoResource()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1544
    sget-object v4, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1550
    :cond_b
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    :goto_4
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->contains(Lorg/jxmpp/jid/BareJid;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1554
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->access$1300(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1565
    :cond_c
    if-eqz v2, :cond_e

    .line 1566
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 1567
    .restart local v5    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    iget-object v6, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v5, v2, v6}, Lorg/jivesoftware/smack/roster/PresenceEventListener;->presenceUnavailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1568
    .end local v5    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    goto :goto_5

    :cond_d
    goto :goto_7

    .line 1570
    :cond_e
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unavailable presence from bare JID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1573
    goto :goto_7

    .line 1523
    .end local v3    # "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_f
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v3, v3, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1200(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v3

    .line 1526
    .restart local v3    # "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    sget-object v4, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$key:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->contains(Lorg/jxmpp/jid/BareJid;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1531
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/roster/Roster;->access$1300(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1533
    :cond_10
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->this$1:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    iget-object v4, v4, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v4}, Lorg/jivesoftware/smack/roster/Roster;->access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 1534
    .restart local v5    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    iget-object v6, p0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener$1;->val$presence:Lorg/jivesoftware/smack/packet/Presence;

    invoke-interface {v5, v2, v6}, Lorg/jivesoftware/smack/roster/PresenceEventListener;->presenceAvailable(Lorg/jxmpp/jid/FullJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1535
    .end local v5    # "presenceEventListener":Lorg/jivesoftware/smack/roster/PresenceEventListener;
    goto :goto_6

    .line 1536
    :cond_11
    nop

    .line 1610
    .end local v3    # "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_12
    :goto_7
    return-void
.end method
