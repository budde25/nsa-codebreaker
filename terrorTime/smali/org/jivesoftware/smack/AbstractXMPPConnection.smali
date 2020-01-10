.class public abstract Lorg/jivesoftware/smack/AbstractXMPPConnection;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/XMPPConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;,
        Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHED_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field protected static final SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final asyncRecvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected authenticated:Z

.field protected authenticatedConnectionInitiallyEstablishedTimestamp:J

.field private final collectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/StanzaCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

.field protected final config:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field protected connected:Z

.field protected final connectionCounterValue:I

.field protected final connectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final connectionLock:Ljava/util/concurrent/locks/Lock;

.field private currentAsyncRunnables:I

.field protected final debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

.field private final deferredAsyncRunnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private deferredAsyncRunnablesCount:I

.field private deferredAsyncRunnablesCountPrevious:I

.field private fromMode:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

.field private final getIqRequestHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected host:Ljava/lang/String;

.field protected hostAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/SmackException;",
            ">;"
        }
    .end annotation
.end field

.field private lastStanzaReceived:J

.field private final limitedExcutor:Ljava/util/concurrent/Executor;

.field private maxAsyncRunnables:I

.field private parsingExceptionCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

.field protected port:I

.field protected reader:Ljava/io/Reader;

.field private replyTimeout:J

.field protected final saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field protected final saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/XMPPException;",
            ">;"
        }
    .end annotation
.end field

.field private final sendListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final setIqRequestHandler:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected final streamFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation
.end field

.field protected streamId:Ljava/lang/String;

.field private final syncRecvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/SmackException;",
            ">;"
        }
    .end annotation
.end field

.field private unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

.field private usedPassword:Ljava/lang/String;

.field private usedResource:Lorg/jxmpp/jid/parts/Resourcepart;

.field private usedUsername:Ljava/lang/String;

.field protected user:Lorg/jxmpp/jid/EntityFullJid;

.field protected wasAuthenticated:Z

.field protected writer:Ljava/io/Writer;

.field private xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    nop

    .line 134
    const-class v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 276
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

    .line 291
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$2;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->CACHED_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 307
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    .line 164
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->collectors:Ljava/util/Collection;

    .line 169
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionLock:Ljava/util/concurrent/locks/Lock;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamFeatures:Ljava/util/Map;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connected:Z

    .line 214
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultReplyTimeout()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->replyTimeout:J

    .line 231
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "establishing TLS"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 239
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "last stream features received from server"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 245
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "SASL mechanisms stream feature from server"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 257
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionCounterValue:I

    .line 267
    sget-object v1, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->OMITTED:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->fromMode:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    .line 271
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultParsingExceptionCallback()Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->parsingExceptionCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 313
    new-instance v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$3;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->limitedExcutor:Ljava/util/concurrent/Executor;

    .line 333
    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticated:Z

    .line 342
    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->wasAuthenticated:Z

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    .line 1068
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getUnknownIqRequestReplyMode()Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 1799
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnables:Ljava/util/Queue;

    .line 1805
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultConcurrencyLevelLimit()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->maxAsyncRunnables:I

    .line 353
    new-instance v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 354
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 355
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getDebuggerFactory()Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    move-result-object v0

    .line 356
    .local v0, "debuggerFactory":Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;
    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0, p0}, Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;->create(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/debugger/SmackDebugger;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    goto :goto_0

    .line 359
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 362
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->getConnectionCreationListeners()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/ConnectionCreationListener;

    .line 363
    .local v2, "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    invoke-interface {v2, p0}, Lorg/jivesoftware/smack/ConnectionCreationListener;->connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 364
    .end local v2    # "listener":Lorg/jivesoftware/smack/ConnectionCreationListener;
    goto :goto_1

    .line 365
    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 133
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnables:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$210(Lorg/jivesoftware/smack/AbstractXMPPConnection;)I
    .locals 2
    .param p0, "x0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 133
    iget v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->currentAsyncRunnables:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->currentAsyncRunnables:I

    return v0
.end method

.method static synthetic access$310(Lorg/jivesoftware/smack/AbstractXMPPConnection;)I
    .locals 2
    .param p0, "x0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 133
    iget v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCount:I

    return v0
.end method

.method protected static asyncGo(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 1864
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->CACHED_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1865
    return-void
.end method

.method private firePacketInterceptors(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 7
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 1022
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1023
    .local v0, "interceptorsToInvoke":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/StanzaListener;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    monitor-enter v1

    .line 1024
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;

    .line 1025
    .local v3, "interceptorWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;->filterMatches(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1026
    invoke-virtual {v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;->getInterceptor()Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    .end local v3    # "interceptorWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;
    :cond_0
    goto :goto_0

    .line 1029
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/StanzaListener;

    .line 1032
    .local v2, "interceptor":Lorg/jivesoftware/smack/StanzaListener;
    :try_start_1
    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1035
    goto :goto_2

    .line 1033
    :catch_0
    move-exception v3

    .line 1034
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "Packet interceptor threw exception"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    .end local v2    # "interceptor":Lorg/jivesoftware/smack/StanzaListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 1037
    :cond_2
    return-void

    .line 1029
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected static schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1868
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 892
    if-eqz p1, :cond_0

    .line 895
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 896
    .local v0, "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    monitor-exit v1

    .line 899
    return-void

    .line 898
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 893
    .end local v0    # "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .line 805
    if-nez p1, :cond_0

    .line 806
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public addOneTimeSyncCallback(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 5
    .param p1, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 1690
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$12;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$12;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;)V

    .line 1700
    .local v0, "packetListener":Lorg/jivesoftware/smack/StanzaListener;
    invoke-virtual {p0, v0, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 1701
    new-instance v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$13;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$13;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;)V

    .line 1706
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1701
    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1707
    return-void
.end method

.method public addPacketInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 0
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 985
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 986
    return-void
.end method

.method public addPacketSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 0
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 911
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 912
    return-void
.end method

.method public addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 3
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 991
    if-eqz p1, :cond_0

    .line 994
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;-><init>(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 995
    .local v0, "interceptorWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    monitor-enter v1

    .line 996
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    monitor-exit v1

    .line 998
    return-void

    .line 997
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 992
    .end local v0    # "interceptorWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$InterceptorWrapper;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet interceptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 916
    if-eqz p1, :cond_0

    .line 919
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 920
    .local v0, "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    monitor-exit v1

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 917
    .end local v0    # "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addStreamFeature(Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 2
    .param p1, "feature"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 1504
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamFeatures:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    return-void
.end method

.method public addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 3
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 874
    if-eqz p1, :cond_0

    .line 877
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 878
    .local v0, "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    monitor-enter v1

    .line 879
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    monitor-exit v1

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 875
    .end local v0    # "wrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet listener is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected afterFeaturesReceived()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$SecurityRequiredException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1490
    return-void
.end method

.method protected afterSuccessfulLogin(Z)V
    .locals 2
    .param p1, "resumed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 614
    if-nez p1, :cond_0

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticatedConnectionInitiallyEstablishedTimestamp:J

    .line 618
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticated:Z

    .line 624
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v0, :cond_1

    .line 625
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->user:Lorg/jxmpp/jid/EntityFullJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->userHasLogged(Lorg/jxmpp/jid/EntityFullJid;)V

    .line 627
    :cond_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->callConnectionAuthenticatedListener(Z)V

    .line 633
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 634
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 636
    :cond_2
    return-void
.end method

.method protected asyncGoLimited(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1810
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/Runnable;)V

    .line 1827
    .local v0, "wrappedRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnables:Ljava/util/Queue;

    monitor-enter v1

    .line 1828
    :try_start_0
    iget v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->currentAsyncRunnables:I

    iget v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->maxAsyncRunnables:I

    if-ge v2, v3, :cond_0

    .line 1829
    iget v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->currentAsyncRunnables:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->currentAsyncRunnables:I

    .line 1830
    invoke-static {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1832
    :cond_0
    iget v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCount:I

    .line 1833
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnables:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1836
    :goto_0
    const/16 v2, 0x64

    .line 1837
    .local v2, "HIGH_WATERMARK":I
    const/16 v3, 0x14

    .line 1839
    .local v3, "INFORM_WATERMARK":I
    iget v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCount:I

    .line 1841
    .local v4, "deferredAsyncRunnablesCount":I
    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    iget v6, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCountPrevious:I

    if-ge v6, v5, :cond_1

    .line 1843
    sget-object v5, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "High watermark of 100 simultaneous executing runnables reached"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 1844
    :cond_1
    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    iget v6, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCountPrevious:I

    if-ge v6, v5, :cond_2

    .line 1846
    sget-object v5, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "20 simultaneous executing runnables reached"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1849
    :cond_2
    :goto_1
    iput v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnablesCountPrevious:I

    .line 1850
    .end local v2    # "HIGH_WATERMARK":I
    .end local v3    # "INFORM_WATERMARK":I
    .end local v4    # "deferredAsyncRunnablesCount":I
    monitor-exit v1

    .line 1851
    return-void

    .line 1850
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected bindResourceAndEstablishSession(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 6
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 581
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Waiting for last features to be received before continuing with resource binding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWaitOrThrow()V

    .line 585
    const-string v0, "bind"

    const-string v1, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/Bind;->newSet(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v0

    .line 595
    .local v0, "bindResource":Lorg/jivesoftware/smack/packet/Bind;
    new-instance v1, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    invoke-virtual {p0, v1, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 596
    .local v1, "packetCollector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Bind;

    .line 600
    .local v2, "response":Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Bind;->getJid()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->user:Lorg/jxmpp/jid/EntityFullJid;

    .line 601
    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->user:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityFullJid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;

    .line 603
    const-string v3, "session"

    const-string v4, "urn:ietf:params:xml:ns:xmpp-session"

    invoke-virtual {p0, v3, v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Session$Feature;

    .line 606
    .local v3, "sessionFeature":Lorg/jivesoftware/smack/packet/Session$Feature;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Session$Feature;->isOptional()Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    new-instance v4, Lorg/jivesoftware/smack/packet/Session;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Session;-><init>()V

    .line 608
    .local v4, "session":Lorg/jivesoftware/smack/packet/Session;
    new-instance v5, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-direct {v5, v4}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    invoke-virtual {p0, v5, v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 611
    .end local v4    # "session":Lorg/jivesoftware/smack/packet/Session;
    :cond_0
    return-void

    .line 588
    .end local v0    # "bindResource":Lorg/jivesoftware/smack/packet/Bind;
    .end local v1    # "packetCollector":Lorg/jivesoftware/smack/StanzaCollector;
    .end local v2    # "response":Lorg/jivesoftware/smack/packet/Bind;
    .end local v3    # "sessionFeature":Lorg/jivesoftware/smack/packet/Session$Feature;
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/SmackException$ResourceBindingNotOfferedException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$ResourceBindingNotOfferedException;-><init>()V

    throw v0
.end method

.method protected callConnectionAuthenticatedListener(Z)V
    .locals 6
    .param p1, "resumed"    # Z

    .line 1302
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 1304
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1, p0, p1}, Lorg/jivesoftware/smack/ConnectionListener;->authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    goto :goto_1

    .line 1305
    :catch_0
    move-exception v2

    .line 1308
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Exception in authenticated listener"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1310
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1311
    :cond_0
    return-void
.end method

.method callConnectionClosedListener()V
    .locals 6

    .line 1314
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 1316
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    goto :goto_1

    .line 1318
    :catch_0
    move-exception v2

    .line 1321
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error in listener while closing connection"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1323
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1324
    :cond_0
    return-void
.end method

.method protected callConnectionClosedOnErrorListener(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1327
    const/4 v0, 0x1

    .line 1328
    .local v0, "logWarning":Z
    instance-of v1, p1, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    if-eqz v1, :cond_0

    .line 1329
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    .line 1330
    .local v1, "see":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StreamError;->getCondition()Lorg/jivesoftware/smack/packet/StreamError$Condition;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/StreamError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/StreamError$Condition;

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->wasAuthenticated:Z

    if-eqz v2, :cond_0

    .line 1332
    const/4 v0, 0x0

    .line 1333
    sget-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Connection closed with not-authorized stream error after it was already authenticated. The account was likely deleted/unregistered on the server"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1337
    .end local v1    # "see":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    :cond_0
    if-eqz v0, :cond_1

    .line 1338
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " closed with error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1340
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/ConnectionListener;

    .line 1342
    .local v2, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    :try_start_0
    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/ConnectionListener;->connectionClosedOnError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    goto :goto_1

    .line 1344
    :catch_0
    move-exception v3

    .line 1347
    .local v3, "e2":Ljava/lang/Exception;
    sget-object v4, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "Error in listener while closing connection"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1349
    .end local v2    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    .end local v3    # "e2":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 1350
    :cond_2
    return-void
.end method

.method protected callConnectionConnectedListener()V
    .locals 2

    .line 1296
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/ConnectionListener;

    .line 1297
    .local v1, "listener":Lorg/jivesoftware/smack/ConnectionListener;
    invoke-interface {v1, p0}, Lorg/jivesoftware/smack/ConnectionListener;->connected(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1298
    .end local v1    # "listener":Lorg/jivesoftware/smack/ConnectionListener;
    goto :goto_0

    .line 1299
    :cond_0
    return-void
.end method

.method public declared-synchronized connect()Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->throwAlreadyConnectedExceptionIfAppropriate()V

    .line 429
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->initState()V

    .line 430
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectInternal()V

    .line 440
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isSecureConnection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->required:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$SecurityRequiredByClientException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$SecurityRequiredByClientException;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    .end local p0    # "this":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :cond_1
    :goto_0
    nop

    .line 449
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connected:Z

    .line 450
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->callConnectionConnectedListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    monitor-exit p0

    return-object p0

    .line 443
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->instantShutdown()V

    .line 445
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract connectInternal()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 2
    .param p1, "configuration"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 861
    new-instance v0, Lorg/jivesoftware/smack/StanzaCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/StanzaCollector;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/StanzaCollector$Configuration;)V

    .line 863
    .local v0, "collector":Lorg/jivesoftware/smack/StanzaCollector;
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->collectors:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 864
    return-object v0
.end method

.method public createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 2
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 855
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    .line 856
    .local v0, "configuration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    return-object v1
.end method

.method public createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 3
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .param p2, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 837
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    .line 838
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setRequest(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v0

    .line 841
    .local v0, "configuration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 844
    .local v1, "packetCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    nop

    .line 850
    return-object v1

    .line 846
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 847
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 848
    throw v2
.end method

.method public createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 828
    new-instance v0, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-direct {v0, p1, p0}, Lorg/jivesoftware/smack/filter/IQReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 830
    .local v0, "packetFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 831
    .local v1, "packetCollector":Lorg/jivesoftware/smack/StanzaCollector;
    return-object v1
.end method

.method public disconnect()V
    .locals 5

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "unavailablePresence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    move-object v0, v1

    .line 761
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    sget-object v2, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Connection is already disconnected"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 766
    .end local v1    # "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    :goto_0
    return-void
.end method

.method public declared-synchronized disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 4
    .param p1, "unavailablePresence"    # Lorg/jivesoftware/smack/packet/Presence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 780
    if-eqz p1, :cond_0

    .line 782
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    goto :goto_0

    .line 783
    .end local p0    # "this":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Was interrupted while sending unavailable presence. Continuing to disconnect the connection"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->shutdown()V

    .line 790
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->callConnectionClosedListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    monitor-exit p0

    return-void

    .line 779
    .end local p1    # "unavailablePresence":Lorg/jivesoftware/smack/packet/Presence;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 948
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 949
    .local v0, "debugger":Lorg/jivesoftware/smack/debugger/SmackDebugger;
    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->onOutgoingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V

    .line 953
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 954
    .local v1, "listenersToNotify":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/StanzaListener;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    monitor-enter v2

    .line 955
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    .line 956
    .local v4, "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    invoke-virtual {v4, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->filterMatches(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 957
    invoke-virtual {v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->getListener()Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v4    # "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_1
    goto :goto_0

    .line 960
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 962
    return-void

    .line 965
    :cond_3
    new-instance v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$4;

    invoke-direct {v2, p0, v1, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$4;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/util/List;Lorg/jivesoftware/smack/packet/Stanza;)V

    invoke-static {v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    .line 979
    return-void

    .line 960
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public final getAuthenticatedConnectionInitiallyEstablishedTimestamp()J
    .locals 2

    .line 1765
    iget-wide v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticatedConnectionInitiallyEstablishedTimestamp:J

    return-wide v0
.end method

.method public getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public getConnectionCounter()I
    .locals 1

    .line 1410
    iget v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionCounterValue:I

    return v0
.end method

.method protected getConnectionLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 2
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamFeatures:Ljava/util/Map;

    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/ExtensionElement;

    return-object v0
.end method

.method public getFromMode()Lorg/jivesoftware/smack/XMPPConnection$FromMode;
    .locals 1

    .line 1420
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->fromMode:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLastStanzaReceived()J
    .locals 2

    .line 1753
    iget-wide v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastStanzaReceived:J

    return-wide v0
.end method

.method public getParsingExceptionCallback()Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;
    .locals 1

    .line 1784
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->parsingExceptionCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 391
    iget v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->port:I

    return v0
.end method

.method public getReplyTimeout()J
    .locals 2

    .line 1060
    iget-wide v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->replyTimeout:J

    return-wide v0
.end method

.method protected getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .line 746
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsedSaslMechansism()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->getNameOfLastUsedSaslMechansism()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUser()Lorg/jxmpp/jid/EntityFullJid;
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->user:Lorg/jxmpp/jid/EntityFullJid;

    return-object v0
.end method

.method public getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;

    if-eqz v0, :cond_0

    .line 379
    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 1500
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initDebugger()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 1051
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->reader:Ljava/io/Reader;

    .line 1054
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->writer:Ljava/io/Writer;

    .line 1056
    :cond_0
    return-void

    .line 1048
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Reader or writer isn\'t initialized."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initState()V
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 409
    return-void
.end method

.method public abstract instantShutdown()V
.end method

.method protected invokeStanzaCollectorsAndNotifyRecvListeners(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 11
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 1134
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_8

    .line 1135
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 1136
    .local v0, "iq":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->isRequestIQ()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1137
    move-object v1, v0

    .line 1138
    .local v1, "iqRequest":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    .line 1141
    .local v3, "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v4, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    .line 1148
    iget-object v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    monitor-enter v4

    .line 1149
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 1150
    .local v7, "iqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    monitor-exit v4

    .line 1151
    goto :goto_0

    .line 1150
    .end local v7    # "iqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1153
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Should only encounter IQ type \'get\' or \'set\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1143
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    monitor-enter v4

    .line 1144
    :try_start_1
    iget-object v7, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 1145
    .restart local v7    # "iqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    nop

    .line 1155
    :goto_0
    if-nez v7, :cond_5

    .line 1157
    sget-object v4, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$SmackConfiguration$UnknownIqRequestReplyMode:[I

    iget-object v8, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->ordinal()I

    move-result v8

    aget v4, v4, v8

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1164
    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 1165
    .local v4, "replyCondition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    goto :goto_1

    .line 1167
    .end local v4    # "replyCondition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1161
    :cond_3
    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 1162
    .restart local v4    # "replyCondition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    nop

    .line 1172
    :goto_1
    invoke-static {v4}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v5

    .line 1175
    .local v5, "errorIQ":Lorg/jivesoftware/smack/packet/ErrorIQ;
    :try_start_2
    invoke-virtual {p0, v5}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1179
    goto :goto_3

    .line 1177
    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 1178
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v8, Lorg/jivesoftware/smack/AbstractXMPPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Exception while sending error IQ to unkown IQ request"

    invoke-virtual {v8, v9, v10, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    .end local v4    # "replyCondition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .end local v5    # "errorIQ":Lorg/jivesoftware/smack/packet/ErrorIQ;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_5

    .line 1159
    :cond_4
    return-void

    .line 1181
    :cond_5
    const/4 v4, 0x0

    .line 1182
    .local v4, "executorService":Ljava/util/concurrent/Executor;
    sget-object v8, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$iqrequest$IQRequestHandler$Mode:[I

    invoke-interface {v7}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getMode()Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    move-result-object v9

    invoke-virtual {v9}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v6, :cond_7

    if-eq v8, v5, :cond_6

    goto :goto_4

    .line 1187
    :cond_6
    iget-object v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->limitedExcutor:Ljava/util/concurrent/Executor;

    goto :goto_4

    .line 1184
    :cond_7
    sget-object v5, Lorg/jivesoftware/smack/AbstractXMPPConnection;->ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-virtual {v5, p0}, Lorg/jivesoftware/smack/AsyncButOrdered;->asExecutorFor(Ljava/lang/Object;)Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 1185
    nop

    .line 1190
    :goto_4
    move-object v5, v7

    .line 1191
    .local v5, "finalIqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    new-instance v6, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;

    invoke-direct {v6, p0, v5, v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$5;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1220
    .end local v4    # "executorService":Ljava/util/concurrent/Executor;
    .end local v5    # "finalIqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    :goto_5
    return-void

    .line 1145
    .end local v7    # "iqRequestHandler":Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1227
    .end local v0    # "iq":Lorg/jivesoftware/smack/packet/IQ;
    .end local v1    # "iqRequest":Lorg/jivesoftware/smack/packet/IQ;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    :cond_8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1228
    .local v0, "listenersToNotify":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/StanzaListener;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    monitor-enter v1

    .line 1229
    :try_start_4
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    .line 1230
    .local v3, "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->filterMatches(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1231
    invoke-virtual {v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->getListener()Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v3    # "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_9
    goto :goto_6

    .line 1234
    :cond_a
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1236
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/StanzaListener;

    .line 1237
    .local v2, "listener":Lorg/jivesoftware/smack/StanzaListener;
    new-instance v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$6;

    invoke-direct {v3, p0, v2, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$6;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/packet/Stanza;)V

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGoLimited(Ljava/lang/Runnable;)V

    .line 1247
    .end local v2    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    goto :goto_7

    .line 1250
    :cond_b
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->collectors:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/StanzaCollector;

    .line 1251
    .local v2, "collector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/StanzaCollector;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1252
    .end local v2    # "collector":Lorg/jivesoftware/smack/StanzaCollector;
    goto :goto_8

    .line 1255
    :cond_c
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1256
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    monitor-enter v2

    .line 1257
    :try_start_5
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;

    .line 1258
    .restart local v3    # "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->filterMatches(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1259
    invoke-virtual {v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;->getListener()Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1261
    .end local v3    # "listenerWrapper":Lorg/jivesoftware/smack/AbstractXMPPConnection$ListenerWrapper;
    :cond_d
    goto :goto_9

    .line 1262
    :cond_e
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1266
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection;->ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;

    new-instance v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;

    invoke-direct {v2, p0, v0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection$7;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/util/Collection;Lorg/jivesoftware/smack/packet/Stanza;)V

    invoke-virtual {v1, p0, v2}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 1281
    return-void

    .line 1262
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 1234
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public final isAnonymous()Z
    .locals 2

    .line 640
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUsedSaslMechansism()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANONYMOUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAuthenticated()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticated:Z

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connected:Z

    return v0
.end method

.method public abstract isSecureConnection()Z
.end method

.method public abstract isUsingCompression()Z
.end method

.method public declared-synchronized login()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedUsername:Ljava/lang/String;

    goto :goto_0

    .end local p0    # "this":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getUsername()Ljava/lang/CharSequence;

    move-result-object v0

    .line 501
    .local v0, "username":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedPassword:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "password":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedResource:Lorg/jxmpp/jid/parts/Resourcepart;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedResource:Lorg/jxmpp/jid/parts/Resourcepart;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getResource()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v2

    .line 503
    .local v2, "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->login(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    .line 499
    .end local v0    # "username":Ljava/lang/CharSequence;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized login(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/CharSequence;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getResource()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->login(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 519
    .end local p0    # "this":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .end local p1    # "username":Ljava/lang/CharSequence;
    .end local p2    # "password":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized login(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/CharSequence;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 538
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-boolean v0, v0, Lorg/jivesoftware/smack/ConnectionConfiguration;->allowNullOrEmptyUsername:Z

    if-nez v0, :cond_0

    .line 539
    const-string v0, "Username must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 541
    .end local p0    # "this":Lorg/jivesoftware/smack/AbstractXMPPConnection;
    :cond_0
    const-string v0, "Did you call connect() before login()?"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->throwNotConnectedExceptionIfAppropriate(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->throwAlreadyLoggedInExceptionIfAppropriate()V

    .line 543
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedUsername:Ljava/lang/String;

    .line 544
    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedPassword:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedResource:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 546
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedUsername:Ljava/lang/String;

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedPassword:Ljava/lang/String;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->usedResource:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->loginInternal(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 537
    .end local p1    # "username":Ljava/lang/CharSequence;
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract loginInternal(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected parseAndProcessStanza(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1080
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1081
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1082
    .local v0, "parserDepth":I
    const/4 v1, 0x0

    .line 1084
    .local v1, "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStanza(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1094
    goto :goto_0

    .line 1086
    :catch_0
    move-exception v2

    .line 1087
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1089
    .local v3, "content":Ljava/lang/CharSequence;
    new-instance v4, Lorg/jivesoftware/smack/UnparseableStanza;

    invoke-direct {v4, v3, v2}, Lorg/jivesoftware/smack/UnparseableStanza;-><init>(Ljava/lang/CharSequence;Ljava/lang/Exception;)V

    .line 1090
    .local v4, "message":Lorg/jivesoftware/smack/UnparseableStanza;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getParsingExceptionCallback()Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    move-result-object v5

    .line 1091
    .local v5, "callback":Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;
    if-eqz v5, :cond_0

    .line 1092
    invoke-interface {v5, v4}, Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;->handleUnparsableStanza(Lorg/jivesoftware/smack/UnparseableStanza;)V

    .line 1095
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "content":Ljava/lang/CharSequence;
    .end local v4    # "message":Lorg/jivesoftware/smack/UnparseableStanza;
    .end local v5    # "callback":Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;
    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1096
    if-eqz v1, :cond_1

    .line 1097
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1099
    :cond_1
    return-void
.end method

.method protected final parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1424
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->streamFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1425
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1427
    .local v1, "initialDepth":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1429
    .local v2, "eventType":I
    const-string v3, "compression"

    const-string v4, "starttls"

    const-string v5, "bind"

    const-string v6, "mechanisms"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    add-int/lit8 v10, v1, 0x1

    if-ne v9, v10, :cond_8

    .line 1430
    const/4 v9, 0x0

    .line 1431
    .local v9, "streamFeature":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1432
    .local v10, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 1433
    .local v11, "namespace":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x1

    sparse-switch v13, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "session"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v14

    goto :goto_2

    :sswitch_2
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_2

    :sswitch_4
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v15

    goto :goto_2

    :goto_1
    move v3, v12

    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v15, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v14, :cond_2

    .line 1450
    invoke-static {v10, v11}, Lorg/jivesoftware/smack/provider/ProviderManager;->getStreamFeatureProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/provider/ExtensionElementProvider;

    move-result-object v3

    .line 1451
    .local v3, "provider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    if-eqz v3, :cond_1

    .line 1452
    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/jivesoftware/smack/packet/ExtensionElement;

    goto :goto_3

    .line 1451
    :cond_1
    move-object/from16 v8, p1

    goto :goto_3

    .line 1447
    .end local v3    # "provider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    :cond_2
    move-object/from16 v8, p1

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseCompressionFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/compress/packet/Compress$Feature;

    move-result-object v9

    .line 1448
    goto :goto_3

    .line 1444
    :cond_3
    move-object/from16 v8, p1

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseSessionFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Session$Feature;

    move-result-object v9

    .line 1445
    goto :goto_3

    .line 1441
    :cond_4
    move-object/from16 v8, p1

    sget-object v9, Lorg/jivesoftware/smack/packet/Bind$Feature;->INSTANCE:Lorg/jivesoftware/smack/packet/Bind$Feature;

    .line 1442
    goto :goto_3

    .line 1438
    :cond_5
    move-object/from16 v8, p1

    new-instance v3, Lorg/jivesoftware/smack/packet/Mechanisms;

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Mechanisms;-><init>(Ljava/util/Collection;)V

    move-object v9, v3

    .line 1439
    goto :goto_3

    .line 1435
    :cond_6
    move-object/from16 v8, p1

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStartTlsFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StartTls;

    move-result-object v9

    .line 1436
    nop

    .line 1456
    :goto_3
    if-eqz v9, :cond_7

    .line 1457
    invoke-virtual {v0, v9}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addStreamFeature(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 1459
    .end local v9    # "streamFeature":Lorg/jivesoftware/smack/packet/ExtensionElement;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "namespace":Ljava/lang/String;
    :cond_7
    goto :goto_4

    .line 1429
    :cond_8
    move-object/from16 v8, p1

    .line 1460
    if-ne v2, v7, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v1, :cond_d

    .line 1461
    nop

    .line 1465
    .end local v2    # "eventType":I
    const-string v2, "urn:ietf:params:xml:ns:xmpp-sasl"

    invoke-virtual {v0, v6, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1467
    const-string v2, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v0, v4, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 1468
    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v2

    sget-object v4, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-ne v2, v4, :cond_a

    .line 1469
    :cond_9
    iget-object v2, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1470
    iget-object v2, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1476
    :cond_a
    const-string v2, "urn:ietf:params:xml:ns:xmpp-bind"

    invoke-virtual {v0, v5, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1477
    const-string v2, "http://jabber.org/protocol/compress"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 1478
    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1481
    :cond_b
    iget-object v2, v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1484
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->afterFeaturesReceived()V

    .line 1485
    return-void

    .line 1463
    :cond_d
    :goto_4
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2858f7c6 -> :sswitch_4
        0x2e243d -> :sswitch_3
        0x4e7d0959 -> :sswitch_2
        0x555a5966 -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch
.end method

.method protected populateHostAddresses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 668
    .local v0, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v1, v1, Lorg/jivesoftware/smack/ConnectionConfiguration;->hostAddress:Ljava/net/InetAddress;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hostAddresses:Ljava/util/List;

    .line 670
    new-instance v1, Lorg/jivesoftware/smack/util/dns/HostAddress;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget v2, v2, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v3, v3, Lorg/jivesoftware/smack/ConnectionConfiguration;->hostAddress:Ljava/net/InetAddress;

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(ILjava/net/InetAddress;)V

    .line 671
    .local v1, "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hostAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v1    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v1, v1, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Lorg/minidns/dnsname/DnsName;

    if-eqz v1, :cond_2

    .line 674
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hostAddresses:Ljava/util/List;

    .line 675
    invoke-static {}, Lorg/jivesoftware/smack/util/DNSUtil;->getDNSResolver()Lorg/jivesoftware/smack/util/dns/DNSResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v2, v2, Lorg/jivesoftware/smack/ConnectionConfiguration;->host:Lorg/minidns/dnsname/DnsName;

    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget v3, v3, Lorg/jivesoftware/smack/ConnectionConfiguration;->port:I

    iget-object v4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getDnssecMode()Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupHostAddress(Lorg/minidns/dnsname/DnsName;ILjava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/jivesoftware/smack/util/dns/HostAddress;

    move-result-object v1

    .line 676
    .restart local v1    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    if-eqz v1, :cond_1

    .line 677
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hostAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v1    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    :cond_1
    goto :goto_0

    .line 681
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    invoke-static {v1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 682
    .local v1, "dnsName":Lorg/minidns/dnsname/DnsName;
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getDnssecMode()Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveXMPPServiceDomain(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->hostAddresses:Ljava/util/List;

    .line 685
    .end local v1    # "dnsName":Lorg/minidns/dnsname/DnsName;
    :goto_0
    nop

    .line 686
    return-object v0
.end method

.method protected processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1110
    nop

    .line 1112
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 1113
    .local v0, "debugger":Lorg/jivesoftware/smack/debugger/SmackDebugger;
    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->onIncomingStreamElement(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)V

    .line 1117
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->lastStanzaReceived:J

    .line 1119
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->invokeStanzaCollectorsAndNotifyRecvListeners(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1120
    return-void
.end method

.method public registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    .locals 3
    .param p1, "iqRequestHandler"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 1711
    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getElement()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1718
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    monitor-enter v1

    .line 1719
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    monitor-exit v1

    return-object v2

    .line 1720
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1722
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only IQ type of \'get\' and \'set\' allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1714
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    monitor-enter v1

    .line 1715
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    monitor-exit v1

    return-object v2

    .line 1716
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public removeAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z
    .locals 2
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 903
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncRecvListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 905
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .line 813
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

.method public removePacketInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 0
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/StanzaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1003
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V

    .line 1004
    return-void
.end method

.method public removePacketSendingListener(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 0
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;)V

    .line 929
    return-void
.end method

.method public removeStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector;)V
    .locals 1
    .param p1, "collector"    # Lorg/jivesoftware/smack/StanzaCollector;

    .line 869
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->collectors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 870
    return-void
.end method

.method public removeStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 2
    .param p1, "packetInterceptor"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 1008
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    monitor-enter v0

    .line 1009
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->interceptors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    monitor-exit v0

    .line 1011
    return-void

    .line 1010
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 2
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 933
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    monitor-enter v0

    .line 934
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    monitor-exit v0

    .line 936
    return-void

    .line 935
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z
    .locals 2
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 885
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    monitor-enter v0

    .line 886
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->syncRecvListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 887
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendAsync(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackFuture;
    .locals 2
    .param p2, "replyFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">(TS;",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            ")",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "TS;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1537
    .local p1, "stanza":Lorg/jivesoftware/smack/packet/Stanza;, "TS;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendAsync(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;J)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendAsync(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;J)Lorg/jivesoftware/smack/SmackFuture;
    .locals 4
    .param p2, "replyFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">(TS;",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            "J)",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "TS;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1543
    .local p1, "stanza":Lorg/jivesoftware/smack/packet/Stanza;, "TS;"
    const-string v0, "stanza must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1546
    const-string v0, "replyFilter must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1548
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;-><init>()V

    .line 1550
    .local v0, "future":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TS;Ljava/lang/Exception;>;"
    new-instance v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;)V

    .line 1570
    .local v1, "stanzaListener":Lorg/jivesoftware/smack/StanzaListener;
    new-instance v2, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;

    invoke-direct {v2, p0, v1, p2, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, p3, p4, v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1594
    invoke-virtual {p0, v1, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 1596
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    goto :goto_1

    .line 1598
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 1599
    .local v2, "exception":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->setException(Ljava/lang/Exception;)V

    .line 1602
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public sendIqRequestAndWaitForResponse(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lorg/jivesoftware/smack/packet/IQ;",
            ">(",
            "Lorg/jivesoftware/smack/packet/IQ;",
            ")TI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 819
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    .line 820
    .local v0, "collector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 822
    .local v1, "resultResponse":Lorg/jivesoftware/smack/packet/IQ;
    move-object v2, v1

    .line 823
    .local v2, "concreteResultResponse":Lorg/jivesoftware/smack/packet/IQ;, "TI;"
    return-object v2
.end method

.method public sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/SmackFuture;
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/IQ;",
            ")",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;J)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;J)Lorg/jivesoftware/smack/SmackFuture;
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "J)",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 1531
    new-instance v0, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-direct {v0, p1, p0}, Lorg/jivesoftware/smack/filter/IQReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1532
    .local v0, "replyFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendAsync(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;J)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v1

    return-object v1
.end method

.method public sendIqWithResponseCallback(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 1
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1668
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendIqWithResponseCallback(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V

    .line 1669
    return-void
.end method

.method public sendIqWithResponseCallback(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V
    .locals 6
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p3, "exceptionCallback"    # Lorg/jivesoftware/smack/ExceptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1675
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendIqWithResponseCallback(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V

    .line 1676
    return-void
.end method

.method public sendIqWithResponseCallback(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V
    .locals 7
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p3, "exceptionCallback"    # Lorg/jivesoftware/smack/ExceptionCallback;
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1683
    new-instance v2, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-direct {v2, p1, p0}, Lorg/jivesoftware/smack/filter/IQReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1684
    .local v2, "replyFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V

    .line 1685
    return-void
.end method

.method public abstract sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 717
    const-string v0, "Stanza must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 718
    nop

    .line 720
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->throwNotConnectedExceptionIfAppropriate()V

    .line 721
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$XMPPConnection$FromMode:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->fromMode:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection$FromMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 727
    goto :goto_0

    .line 723
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 724
    nop

    .line 734
    :goto_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->firePacketInterceptors(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 735
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanzaInternal(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 736
    return-void
.end method

.method protected abstract sendStanzaInternal(Lorg/jivesoftware/smack/packet/Stanza;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 1
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p2, "replyFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .param p3, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V

    .line 1513
    return-void
.end method

.method public sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V
    .locals 7
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p2, "replyFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .param p3, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p4, "exceptionCallback"    # Lorg/jivesoftware/smack/ExceptionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1520
    nop

    .line 1521
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v5

    .line 1520
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V

    .line 1522
    return-void
.end method

.method public sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V
    .locals 3
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p2, "replyFilter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;
    .param p3, "callback"    # Lorg/jivesoftware/smack/StanzaListener;
    .param p4, "exceptionCallback"    # Lorg/jivesoftware/smack/ExceptionCallback;
    .param p5, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1610
    const-string v0, "stanza must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1613
    const-string v0, "replyFilter must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1614
    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1616
    new-instance v0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;

    invoke-direct {v0, p0, p3, p4}, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V

    .line 1636
    .local v0, "packetListener":Lorg/jivesoftware/smack/StanzaListener;
    new-instance v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;

    invoke-direct {v1, p0, v0, p4, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, p5, p6, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1660
    invoke-virtual {p0, v0, p2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 1661
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1662
    return-void
.end method

.method public setFromMode(Lorg/jivesoftware/smack/XMPPConnection$FromMode;)V
    .locals 0
    .param p1, "fromMode"    # Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    .line 1415
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->fromMode:Lorg/jivesoftware/smack/XMPPConnection$FromMode;

    .line 1416
    return-void
.end method

.method public setMaxAsyncOperations(I)V
    .locals 2
    .param p1, "maxAsyncOperations"    # I

    .line 1854
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1858
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->deferredAsyncRunnables:Ljava/util/Queue;

    monitor-enter v0

    .line 1859
    :try_start_0
    iput p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->maxAsyncRunnables:I

    .line 1860
    monitor-exit v0

    .line 1861
    return-void

    .line 1860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max async operations must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParsingExceptionCallback(Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 1775
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->parsingExceptionCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 1776
    return-void
.end method

.method public setReplyTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 1065
    iput-wide p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->replyTimeout:J

    .line 1066
    return-void
.end method

.method public setUnknownIqRequestReplyMode(Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;)V
    .locals 1
    .param p1, "unknownIqRequestReplyMode"    # Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 1076
    const-string v0, "Mode must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->unknownIqRequestReplyMode:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 1077
    return-void
.end method

.method protected setWasAuthenticated()V
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->wasAuthenticated:Z

    if-nez v0, :cond_0

    .line 1291
    iget-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->authenticated:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->wasAuthenticated:Z

    .line 1293
    :cond_0
    return-void
.end method

.method protected abstract shutdown()V
.end method

.method protected throwAlreadyConnectedExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    return-void

    .line 705
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;-><init>()V

    throw v0
.end method

.method protected throwAlreadyLoggedInExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    return-void

    .line 711
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;-><init>()V

    throw v0
.end method

.method protected throwNotConnectedExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->throwNotConnectedExceptionIfAppropriate(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method protected throwNotConnectedExceptionIfAppropriate(Ljava/lang/String;)V
    .locals 1
    .param p1, "optionalHint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    return-void

    .line 699
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1789
    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 1790
    .local v0, "localEndpoint":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    const-string v1, "not-authenticated"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    .local v1, "localEndpointString":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getConnectionCounter()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public unregisterIQRequestHandler(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    .locals 3
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 1734
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smack/AbstractXMPPConnection$15;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    invoke-virtual {p3}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1741
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    monitor-enter v1

    .line 1742
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getIqRequestHandler:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    monitor-exit v1

    return-object v2

    .line 1743
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1745
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only IQ type of \'get\' and \'set\' allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1737
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    monitor-enter v1

    .line 1738
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setIqRequestHandler:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    monitor-exit v1

    return-object v2

    .line 1739
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public final unregisterIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;
    .locals 3
    .param p1, "iqRequestHandler"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 1728
    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getElement()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 1729
    invoke-interface {p1}, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    .line 1728
    invoke-virtual {p0, v0, v1, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->unregisterIQRequestHandler(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    move-result-object v0

    return-object v0
.end method
