.class public final Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;
.super Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
.source "JingleIBBTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
        "Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 37
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 38
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/provider/JingleIBBTransportProvider;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/provider/JingleIBBTransportProvider;-><init>()V

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->addJingleContentTransportProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;

    .line 39
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    .line 43
    .local v1, "manager":Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;
    if-nez v1, :cond_0

    .line 44
    new-instance v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 45
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v0

    return-object v1

    .line 41
    .end local v1    # "manager":Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 63
    return-void
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "urn:xmpp:jingle:transports:ibb:1"

    return-object v0
.end method

.method public transportSession(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
    .locals 1
    .param p1, "jingleSession"    # Lorg/jivesoftware/smackx/jingle/JingleSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    return-object v0
.end method
