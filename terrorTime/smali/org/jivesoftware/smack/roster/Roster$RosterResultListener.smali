.class Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jivesoftware/smack/util/SuccessCallback<",
        "Lorg/jivesoftware/smack/packet/IQ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0

    .line 1618
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p2, "x1"    # Lorg/jivesoftware/smack/roster/Roster$1;

    .line 1618
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1618
    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V

    return-void
.end method

.method public onSuccess(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 17
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 1622
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$1600(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    .line 1623
    .local v3, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "RosterResultListener received {}"

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1625
    .local v10, "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1626
    .local v11, "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 1627
    .local v12, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1629
    .local v13, "unchangedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    instance-of v0, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    if-eqz v0, :cond_6

    .line 1631
    move-object v0, v2

    check-cast v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    .line 1634
    .local v0, "rosterPacket":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v4

    .line 1635
    .local v14, "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->getRosterItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 1636
    .local v5, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-static {v5}, Lorg/jivesoftware/smack/roster/Roster;->access$1700(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1637
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    .end local v5    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :cond_0
    goto :goto_0

    .line 1641
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 1642
    .local v8, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    new-instance v9, Lorg/jivesoftware/smack/roster/RosterEntry;

    iget-object v4, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {v9, v8, v4, v3}, Lorg/jivesoftware/smack/roster/RosterEntry;-><init>(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1643
    .local v9, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    iget-object v4, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    move-object v5, v10

    move-object v6, v11

    move-object v7, v13

    move-object/from16 v16, v8

    .end local v8    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .local v16, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-static/range {v4 .. v9}, Lorg/jivesoftware/smack/roster/Roster;->access$1800(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1644
    .end local v9    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v16    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    goto :goto_1

    .line 1647
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1648
    .local v4, "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/Jid;>;"
    iget-object v5, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v5}, Lorg/jivesoftware/smack/roster/Roster;->access$1900(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 1649
    .local v6, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1650
    .end local v6    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    goto :goto_2

    .line 1651
    :cond_3
    invoke-interface {v4, v10}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1652
    invoke-interface {v4, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1653
    invoke-interface {v4, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1654
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jxmpp/jid/Jid;

    .line 1655
    .local v6, "user":Lorg/jxmpp/jid/Jid;
    iget-object v7, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v7}, Lorg/jivesoftware/smack/roster/Roster;->access$1900(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jivesoftware/smack/roster/RosterEntry;

    invoke-static {v7, v12, v8}, Lorg/jivesoftware/smack/roster/Roster;->access$2000(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1656
    .end local v6    # "user":Lorg/jxmpp/jid/Jid;
    goto :goto_3

    .line 1658
    :cond_4
    iget-object v5, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v5}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1659
    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 1660
    .local v5, "version":Ljava/lang/String;
    iget-object v6, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v6}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v6

    invoke-interface {v6, v14, v5}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->resetEntries(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 1663
    .end local v5    # "version":Ljava/lang/String;
    :cond_5
    iget-object v5, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v5}, Lorg/jivesoftware/smack/roster/Roster;->access$2200(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 1664
    .end local v0    # "rosterPacket":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .end local v4    # "toDelete":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/Jid;>;"
    .end local v14    # "validItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    goto :goto_7

    .line 1670
    :cond_6
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->getEntries()Ljava/util/List;

    move-result-object v14

    .line 1671
    .local v14, "storedItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    if-nez v14, :cond_7

    .line 1673
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->resetStore()V

    .line 1675
    :try_start_0
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->reload()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotLoggedInException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    goto :goto_5

    .line 1676
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Exception while trying to load the roster after the roster store was corrupted"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1682
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 1684
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 1685
    .local v15, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    new-instance v9, Lorg/jivesoftware/smack/roster/RosterEntry;

    iget-object v4, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {v9, v15, v4, v3}, Lorg/jivesoftware/smack/roster/RosterEntry;-><init>(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1686
    .restart local v9    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    iget-object v4, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    move-object v5, v10

    move-object v6, v11

    move-object v7, v13

    move-object v8, v15

    invoke-static/range {v4 .. v9}, Lorg/jivesoftware/smack/roster/Roster;->access$1800(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1687
    .end local v9    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v15    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    goto :goto_6

    .line 1690
    .end local v14    # "storedItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    :cond_8
    :goto_7
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    sget-object v4, Lorg/jivesoftware/smack/roster/Roster$RosterState;->loaded:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    invoke-static {v0, v4}, Lorg/jivesoftware/smack/roster/Roster;->access$702(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$RosterState;)Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 1691
    iget-object v4, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    monitor-enter v4

    .line 1692
    :try_start_1
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1693
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1695
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0, v10, v11, v12}, Lorg/jivesoftware/smack/roster/Roster;->access$2300(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1703
    :try_start_2
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$800(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1704
    :try_start_3
    iget-object v0, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$800(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/roster/RosterLoadedListener;

    .line 1705
    .local v5, "rosterLoadedListener":Lorg/jivesoftware/smack/roster/RosterLoadedListener;
    iget-object v6, v1, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-interface {v5, v6}, Lorg/jivesoftware/smack/roster/RosterLoadedListener;->onRosterLoaded(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 1706
    .end local v5    # "rosterLoadedListener":Lorg/jivesoftware/smack/roster/RosterLoadedListener;
    goto :goto_8

    .line 1707
    :cond_9
    monitor-exit v4

    .line 1711
    goto :goto_9

    .line 1707
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v10    # "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .end local v11    # "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .end local v12    # "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .end local v13    # "unchangedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .end local p1    # "packet":Lorg/jivesoftware/smack/packet/IQ;
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1709
    .restart local v3    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .restart local v10    # "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .restart local v11    # "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .restart local v12    # "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .restart local v13    # "unchangedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .restart local p1    # "packet":Lorg/jivesoftware/smack/packet/IQ;
    :catch_3
    move-exception v0

    .line 1710
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "RosterLoadedListener threw exception"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1712
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void

    .line 1693
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
