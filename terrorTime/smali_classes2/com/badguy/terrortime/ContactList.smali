.class public Lcom/badguy/terrortime/ContactList;
.super Ljava/lang/Object;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/ContactList$ContactListener;
    }
.end annotation


# instance fields
.field private mAvailabilityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/badguy/terrortime/Client;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field

.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRoster:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/roster/Roster;Lcom/badguy/terrortime/Client;)V
    .locals 3
    .param p1, "roster"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p2, "client"    # Lcom/badguy/terrortime/Client;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/badguy/terrortime/ContactList;->mClient:Lcom/badguy/terrortime/Client;

    .line 35
    iput-object p1, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    .line 36
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    new-instance v1, Lcom/badguy/terrortime/ContactList$ContactListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/badguy/terrortime/ContactList$ContactListener;-><init>(Lcom/badguy/terrortime/ContactList;Lcom/badguy/terrortime/ContactList$1;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/Roster;->addRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ContactList;->mJidMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContactMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ContactList;->mAvailabilityMap:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/badguy/terrortime/ContactList;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactList;
    .param p1, "x1"    # Ljava/util/Collection;

    .line 24
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactList;->addContacts(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/badguy/terrortime/ContactList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactList;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactList;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/badguy/terrortime/ContactList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactList;

    .line 24
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mAvailabilityMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/ContactList;)Lcom/badguy/terrortime/Client;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactList;

    .line 24
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mClient:Lcom/badguy/terrortime/Client;

    return-object v0
.end method

.method private addContacts(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "contacts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$_BrIVKQb6QNNE8wSx7jdWEQKac4;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/-$$Lambda$ContactList$_BrIVKQb6QNNE8wSx7jdWEQKac4;-><init>(Lcom/badguy/terrortime/ContactList;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 67
    return-void
.end method

.method public static synthetic lambda$09gMaIPFwd-9UDclAHTGVNxlQOs(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jxmpp/jid/BareJid;
    .locals 0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7IaM-DzmRIGb710fxba30-RRcHo(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jxmpp/jid/BareJid;
    .locals 0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo(Lorg/jxmpp/jid/parts/Localpart;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/jxmpp/jid/parts/Part;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Vi20EXpwvwX-vQG5DZy6UxPK9iM()Ljava/util/Optional;
    .locals 1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getLocalPart$1(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 1
    .param p0, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 83
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/BareJid;->getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getUserJid$2()Ljava/lang/Exception;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No connection object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "intentAction"    # Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public getAvailabilityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mAvailabilityMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContactJids()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContactMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getContactNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public getJidAtIndex(I)Ljava/util/Optional;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContactMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getJidFromString(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ContactList;->getRosterEntry(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$Vi20EXpwvwX-vQG5DZy6UxPK9iM;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$Vi20EXpwvwX-vQG5DZy6UxPK9iM;

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$7IaM-DzmRIGb710fxba30-RRcHo;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$7IaM-DzmRIGb710fxba30-RRcHo;

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public getLocalPart(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/ContactList;->getRosterEntry(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$Vi20EXpwvwX-vQG5DZy6UxPK9iM;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$Vi20EXpwvwX-vQG5DZy6UxPK9iM;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$lug0BpjG90OFpXLjcQRVfOcwvaI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$lug0BpjG90OFpXLjcQRVfOcwvaI;

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$VP9Vi6dnBqtMmiP_oVVUGWH3Gxo;

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public getRoster()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/roster/Roster;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getRosterEntry(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation

    .line 70
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mJidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSetOfJids()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;

    .line 94
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 95
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 93
    return-object v0
.end method

.method public getUserJid()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getXMPPTCPConnection()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 112
    .local v0, "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 113
    .end local v0    # "connection":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "Failed to get user jid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$addContacts$0$ContactList(Lorg/jxmpp/jid/Jid;)V
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 54
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mJidMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContactMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mClient:Lcom/badguy/terrortime/Client;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/Client;->addContact(Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    .line 58
    .local v0, "local":Lorg/jxmpp/jid/parts/Localpart;
    if-nez v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/badguy/terrortime/ContactList;->mAvailabilityMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    invoke-virtual {v0}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/badguy/terrortime/ContactList;->mAvailabilityMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_0
    return-void
.end method

.method public refreshContactList()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mJidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 45
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContactMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/badguy/terrortime/ContactList;->mRoster:Lorg/jivesoftware/smack/roster/Roster;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$09gMaIPFwd-9UDclAHTGVNxlQOs;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/ContactList;->addContacts(Ljava/util/Collection;)V

    .line 50
    :cond_0
    return-void
.end method
