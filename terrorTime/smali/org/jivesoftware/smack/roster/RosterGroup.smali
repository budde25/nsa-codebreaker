.class public Lorg/jivesoftware/smack/roster/RosterGroup;
.super Lorg/jivesoftware/smack/Manager;
.source "RosterGroup.java"


# instance fields
.field private final entries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 53
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->name:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    .line 56
    return-void
.end method


# virtual methods
.method public addEntry(Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 178
    .local v1, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 179
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v2

    .line 180
    .local v2, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 183
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 185
    .end local v1    # "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .end local v2    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :cond_0
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addEntryLocal(Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Lorg/jivesoftware/smack/roster/RosterEntry;)Z
    .locals 2
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Lorg/jxmpp/jid/Jid;)Z
    .locals 1
    .param p1, "user"    # Lorg/jxmpp/jid/Jid;

    .line 158
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/RosterGroup;->getEntry(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 111
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEntry(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/roster/RosterEntry;
    .locals 5
    .param p1, "user"    # Lorg/jxmpp/jid/Jid;

    .line 123
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 124
    return-object v0

    .line 128
    :cond_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object p1

    .line 129
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 131
    .local v3, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    monitor-exit v1

    return-object v3

    .line 134
    .end local v3    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    :cond_1
    goto :goto_0

    .line 135
    :cond_2
    monitor-exit v1

    .line 136
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEntryCount()I
    .locals 2

    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public removeEntry(Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 209
    .local v1, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 210
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v2

    .line 211
    .local v2, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->removeGroupName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 214
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 216
    .end local v1    # "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .end local v2    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :cond_0
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeEntryLocal(Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 229
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->entries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 82
    .local v2, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    new-instance v3, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 83
    .local v3, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 84
    invoke-static {v2}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v4

    .line 85
    .local v4, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    iget-object v5, p0, Lorg/jivesoftware/smack/roster/RosterGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->removeGroupName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4, p1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 89
    nop

    .end local v2    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v3    # "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .end local v4    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    goto :goto_0

    .line 90
    :cond_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
