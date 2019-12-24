.class public final Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;
.super Lorg/jivesoftware/smack/Manager;
.source "JingleTransportMethodManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final transportPreference:[Ljava/lang/String;


# instance fields
.field private final transportManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->INSTANCES:Ljava/util/WeakHashMap;

    .line 42
    const-string v0, "urn:xmpp:jingle:transports:s5b:1"

    const-string v1, "urn:xmpp:jingle:transports:ibb:1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportPreference:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 48
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportManagers:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method public static getBestAvailableTransportManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getBestAvailableTransportManager()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    .line 53
    .local v1, "manager":Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;
    if-nez v1, :cond_0

    .line 54
    new-instance v2, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 55
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-object v1

    .line 51
    .end local v1    # "manager":Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTransportManager(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v0

    return-object v0
.end method

.method public static getTransportManager(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle/element/Jingle;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBestAvailableTransportManager()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportPreference:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 97
    .local v3, "ns":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v4

    .line 98
    .local v4, "tm":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<*>;"
    if-eqz v4, :cond_0

    .line 99
    return-object v4

    .line 96
    .end local v3    # "ns":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "tm":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<*>;"
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportManagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v1

    return-object v1

    .line 108
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBestAvailableTransportManager(Ljava/util/Set;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 113
    .local p1, "except":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportPreference:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 114
    .local v3, "ns":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v4

    .line 115
    .local v4, "tm":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<*>;"
    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    goto :goto_1

    .line 119
    :cond_0
    return-object v4

    .line 113
    .end local v3    # "ns":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "tm":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<*>;"
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportManagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    .local v1, "ns":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v0

    return-object v0

    .line 130
    .end local v1    # "ns":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportManagers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    return-object v0
.end method

.method public getTransportManager(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/element/Jingle;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getContents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    .line 78
    .local v0, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    return-object v1

    .line 82
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v2

    .line 83
    .local v2, "transport":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    if-nez v2, :cond_1

    .line 84
    return-object v1

    .line 87
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getTransportManager(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;

    move-result-object v1

    return-object v1
.end method

.method public registerTransportManager(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "*>;)V"
        }
    .end annotation

    .line 61
    .local p1, "manager":Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;, "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<*>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->transportManagers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
