.class final Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RosterPushListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 3

    .line 1720
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    .line 1721
    sget-object p1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v0, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v1, "query"

    const-string v2, "jabber:iq:roster"

    invoke-direct {p0, v1, v2, p1, v0}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    .line 1722
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p2, "x1"    # Lorg/jivesoftware/smack/roster/Roster$1;

    .line 1718
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 19
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v2}, Lorg/jivesoftware/smack/roster/Roster;->access$2400(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 1727
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    move-object v3, v1

    check-cast v3, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    .line 1729
    .local v3, "rosterPacket":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    .line 1730
    .local v4, "ourFullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v4, :cond_0

    .line 1731
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring roster push "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " while "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has no bound resource. This may be a server bug."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1733
    const/4 v5, 0x0

    return-object v5

    .line 1738
    :cond_0
    invoke-interface {v4}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v5

    .line 1739
    .local v5, "ourBareJid":Lorg/jxmpp/jid/EntityBareJid;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v6

    .line 1740
    .local v6, "from":Lorg/jxmpp/jid/Jid;
    if-eqz v6, :cond_2

    .line 1741
    invoke-interface {v6, v4}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1746
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received roster push from full JID. This behavior is since RFC 6121 not longer standard compliant. Please ask your server vendor to fix this and comply to RFC 6121 \u00a7 2.1.6. IQ roster push stanza: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    :cond_1
    invoke-interface {v6, v5}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1751
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring roster push with a non matching \'from\' ourJid=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\' from=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1753
    sget-object v7, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v1, v7}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v7

    return-object v7

    .line 1758
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->getRosterItems()Ljava/util/List;

    move-result-object v7

    .line 1759
    .local v7, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    .line 1760
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring roster push with not exactly one entry. size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1761
    sget-object v8, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v1, v8}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v8

    return-object v8

    .line 1764
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .local v8, "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v9

    .line 1766
    .local v15, "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v9

    .line 1767
    .local v14, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v12, "unchangedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 1772
    .local v13, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    new-instance v9, Lorg/jivesoftware/smack/roster/RosterEntry;

    iget-object v10, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {v9, v13, v10, v2}, Lorg/jivesoftware/smack/roster/RosterEntry;-><init>(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v11, v9

    .line 1773
    .local v11, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v10

    .line 1775
    .local v10, "version":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v9

    sget-object v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    invoke-virtual {v9, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1776
    iget-object v1, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v1, v14, v11}, Lorg/jivesoftware/smack/roster/Roster;->access$2000(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1777
    iget-object v1, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v1}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1778
    iget-object v1, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v1}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v1

    invoke-virtual {v11}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v9

    invoke-interface {v1, v9, v10}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->removeEntry(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Z

    move-object/from16 v18, v2

    move-object v1, v10

    move-object/from16 v16, v11

    move-object v10, v13

    move-object v2, v14

    goto :goto_1

    .line 1777
    :cond_4
    move-object/from16 v18, v2

    move-object v1, v10

    move-object/from16 v16, v11

    move-object v10, v13

    move-object v2, v14

    goto :goto_1

    .line 1781
    :cond_5
    invoke-static {v13}, Lorg/jivesoftware/smack/roster/Roster;->access$1700(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1782
    iget-object v9, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    move-object v1, v10

    .end local v10    # "version":Ljava/lang/String;
    .local v1, "version":Ljava/lang/String;
    move-object v10, v8

    move-object/from16 v16, v11

    .end local v11    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .local v16, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    move-object v11, v15

    move-object/from16 v17, v13

    .end local v13    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .local v17, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    move-object/from16 v18, v2

    move-object v2, v14

    .end local v14    # "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local v2, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local v18, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    move-object/from16 v14, v16

    invoke-static/range {v9 .. v14}, Lorg/jivesoftware/smack/roster/Roster;->access$1800(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1783
    iget-object v9, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v9}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1784
    iget-object v9, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v9}, Lorg/jivesoftware/smack/roster/Roster;->access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    move-result-object v9

    move-object/from16 v10, v17

    .end local v17    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .local v10, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-interface {v9, v10, v1}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->addEntry(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Ljava/lang/String;)Z

    goto :goto_1

    .line 1783
    .end local v10    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .restart local v17    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :cond_6
    move-object/from16 v10, v17

    .end local v17    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .restart local v10    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    goto :goto_1

    .line 1781
    .end local v1    # "version":Ljava/lang/String;
    .end local v16    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v18    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .local v10, "version":Ljava/lang/String;
    .restart local v11    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .restart local v13    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .restart local v14    # "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    :cond_7
    move-object/from16 v18, v2

    move-object v1, v10

    move-object/from16 v16, v11

    move-object v10, v13

    move-object v2, v14

    .line 1788
    .end local v11    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v13    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .end local v14    # "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .restart local v1    # "version":Ljava/lang/String;
    .local v2, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local v10, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .restart local v16    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .restart local v18    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :goto_1
    iget-object v9, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v9}, Lorg/jivesoftware/smack/roster/Roster;->access$2200(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 1791
    iget-object v9, v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v9, v8, v15, v2}, Lorg/jivesoftware/smack/roster/Roster;->access$2300(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1793
    invoke-static {v3}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v9

    return-object v9
.end method
