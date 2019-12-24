.class public final Lorg/jivesoftware/smack/roster/RosterEntry;
.super Lorg/jivesoftware/smack/Manager;
.source "RosterEntry.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

.field private final roster:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .param p2, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p3, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 58
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 59
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 60
    iput-object p2, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->roster:Lorg/jivesoftware/smack/roster/Roster;

    .line 61
    return-void
.end method

.method static toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 2
    .param p0, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 292
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;Z)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v0

    return-object v0
.end method

.method static toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 1
    .param p0, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .param p1, "name"    # Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;Z)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v0

    return-object v0
.end method

.method private static toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;Z)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 4
    .param p0, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeAskAttribute"    # Z

    .line 320
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;-><init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;)V

    .line 321
    .local v0, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;)V

    .line 322
    if-eqz p2, :cond_0

    .line 323
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->isSubscriptionPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setSubscriptionPending(Z)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->isApproved()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setApproved(Z)V

    .line 327
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 328
    .local v2, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 329
    .end local v2    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    goto :goto_0

    .line 330
    :cond_1
    return-object v0
.end method

.method static toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Z)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 1
    .param p0, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .param p1, "includeAskAttribute"    # Z

    .line 307
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;Z)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canSeeHisPresence()Z
    .locals 2

    .line 203
    sget-object v0, Lorg/jivesoftware/smack/roster/RosterEntry$1;->$SwitchMap$org$jivesoftware$smack$roster$packet$RosterPacket$ItemType:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canSeeMyPresence()Z
    .locals 3

    .line 186
    sget-object v0, Lorg/jivesoftware/smack/roster/RosterEntry$1;->$SwitchMap$org$jivesoftware$smack$roster$packet$RosterPacket$ItemType:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 191
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    return v1
.end method

.method public cancelSubscription()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 221
    .local v0, "unsubscribed":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 222
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 254
    if-ne p0, p1, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/jivesoftware/smack/roster/RosterEntry;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/roster/RosterEntry;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equalsDeep(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    if-ne p0, p1, :cond_0

    .line 276
    const/4 v0, 0x1

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 278
    return v0

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 280
    return v0

    .line 281
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 282
    .local v0, "other":Lorg/jivesoftware/smack/roster/RosterEntry;
    iget-object v1, v0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getGroups()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/roster/RosterGroup;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->roster:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 148
    .local v2, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v2, p0}, Lorg/jivesoftware/smack/roster/RosterGroup;->contains(Lorg/jivesoftware/smack/roster/RosterEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isApproved()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->isApproved()Z

    move-result v0

    return v0
.end method

.method public isSubscriptionPending()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->isSubscriptionPending()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 107
    .end local p0    # "this":Lorg/jivesoftware/smack/roster/RosterEntry;
    :cond_0
    :try_start_1
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 108
    .local v0, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 112
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 113
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 116
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 102
    .end local v0    # "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getGroups()Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 235
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 236
    .local v3, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 238
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 240
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 242
    :cond_1
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    .end local v3    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method updateItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V
    .locals 0
    .param p1, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 125
    nop

    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/RosterEntry;->item:Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 127
    return-void
.end method
