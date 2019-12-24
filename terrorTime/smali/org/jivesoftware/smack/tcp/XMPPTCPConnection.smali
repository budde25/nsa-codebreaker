.class public Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
.super Lorg/jivesoftware/smack/AbstractXMPPConnection;
.source "XMPPTCPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;,
        Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final QUEUE_SIZE:I = 0x1f4

.field private static defaultBundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

.field private static useSmDefault:Z

.field private static useSmResumptionDefault:Z


# instance fields
.field private bundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

.field private clientHandledStanzasCount:J

.field private final closingStreamReceived:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/SmackException;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

.field private disconnectedButResumeable:Z

.field private final initialOpenStreamSend:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/XMPPException;",
            ">;"
        }
    .end annotation
.end field

.field protected final packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

.field protected final packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

.field private final readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

.field private final requestAckPredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private secureSocket:Ljavax/net/ssl/SSLSocket;

.field private serverHandledStanzasCount:J

.field private smClientMaxResumptionTime:I

.field private final smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/SmackException;",
            ">;"
        }
    .end annotation
.end field

.field private final smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/XMPPException$FailedNonzaException;",
            ">;"
        }
    .end annotation
.end field

.field private smServerMaxResumptionTime:I

.field private smSessionId:Ljava/lang/String;

.field private smWasEnabledAtLeastOnce:Z

.field private socket:Ljava/net/Socket;

.field private final stanzaAcknowledgedListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stanzaDroppedListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private final stanzaIdAcknowledgedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation
.end field

.field private useSm:Z

.field private useSmResumption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    nop

    .line 158
    const-class v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmDefault:Z

    .line 223
    sput-boolean v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumptionDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "jid"    # Ljava/lang/CharSequence;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/CharSequence;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 365
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->builder()Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setUsernameAndPassword(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;

    .line 366
    invoke-static {p3}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setXmppDomain(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;

    .line 366
    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->build()Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;)V
    .locals 3
    .param p1, "config"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    .line 324
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    .line 172
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    .line 177
    new-instance v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    .line 182
    new-instance v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    .line 184
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "initial open stream element send to server"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initialOpenStreamSend:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 190
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "stream compression feature"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 196
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "stream compression"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 203
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "stream closing element received"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->closingStreamReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 219
    sget-object v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->defaultBundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->bundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    .line 232
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "stream resumed element"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 235
    new-instance v1, Lorg/jivesoftware/smack/SynchronizationPoint;

    const-string v2, "stream enabled element"

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 241
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smClientMaxResumptionTime:I

    .line 246
    iput v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smServerMaxResumptionTime:I

    .line 251
    sget-boolean v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmDefault:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSm:Z

    .line 252
    sget-boolean v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumptionDefault:Z

    iput-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumption:Z

    .line 258
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->serverHandledStanzasCount:J

    .line 269
    iput-wide v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->clientHandledStanzasCount:J

    .line 276
    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smWasEnabledAtLeastOnce:Z

    .line 285
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    .line 294
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaDroppedListeners:Ljava/util/Collection;

    .line 300
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    .line 309
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    .line 325
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    .line 326
    new-instance v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$1;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 334
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->dropSmState()V

    return-void
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initialOpenStreamSend:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->parseAndProcessStanza(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)J
    .locals 2
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-wide v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->clientHandledStanzasCount:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)J
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # J

    .line 155
    iput-wide p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->clientHandledStanzasCount:J

    return-wide p1
.end method

.method static synthetic access$1502(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->streamId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->parseFeatures(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->proceedTLSReceived()V

    return-void
.end method

.method static synthetic access$2100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initReaderAndWriter()V

    return-void
.end method

.method static synthetic access$2700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;I)I
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # I

    .line 155
    iput p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smServerMaxResumptionTime:I

    return p1
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Z

    .line 155
    iput-boolean p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smWasEnabledAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementCounterError;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->processHandledCount(J)V

    return-void
.end method

.method static synthetic access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$3402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Ljava/util/concurrent/BlockingQueue;

    .line 155
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestSmAcknowledgementInternal()V

    return-void
.end method

.method static synthetic access$3600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendSmAcknowledgementInternal()V

    return-void
.end method

.method static synthetic access$3800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->closingStreamReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$3900()Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1

    .line 155
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 155
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->notifyConnectionError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$4300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->bundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 155
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Stanza;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->lastFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 155
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->callConnectionClosedOnErrorListener(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$900()Ljava/util/logging/Logger;
    .locals 1

    .line 155
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private connectUsingConfiguration()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$ConnectionException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 604
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->populateHostAddresses()Ljava/util/List;

    move-result-object v2

    .line 605
    .local v2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 606
    .local v0, "socketFactory":Ljavax/net/SocketFactory;
    iget-object v3, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getProxyInfo()Lorg/jivesoftware/smack/proxy/ProxyInfo;

    move-result-object v3

    .line 607
    .local v3, "proxyInfo":Lorg/jivesoftware/smack/proxy/ProxyInfo;
    iget-object v4, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getConnectTimeout()I

    move-result v4

    .line 608
    .local v4, "timeout":I
    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 608
    :cond_0
    move-object v5, v0

    .line 611
    .end local v0    # "socketFactory":Ljavax/net/SocketFactory;
    .local v5, "socketFactory":Ljavax/net/SocketFactory;
    :goto_0
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->hostAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/jivesoftware/smack/util/dns/HostAddress;

    .line 613
    .local v7, "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/util/dns/HostAddress;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/util/dns/HostAddress;->getPort()I

    move-result v9

    .line 615
    .local v9, "port":I
    const-string v10, "Established TCP connection to "

    if-nez v3, :cond_3

    .line 616
    invoke-virtual {v7}, Lorg/jivesoftware/smack/util/dns/HostAddress;->getInetAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 617
    .local v11, "inetAddresses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    nop

    .line 619
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;

    invoke-direct {v0, v5}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;-><init>(Ljavax/net/SocketFactory;)V

    move-object v12, v0

    .line 624
    .local v12, "socketFuture":Lorg/jivesoftware/smack/SmackFuture$SocketFuture;
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/net/InetAddress;

    .line 625
    .local v13, "inetAddress":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v13, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v14, v0

    .line 626
    .local v14, "inetSocketAddress":Ljava/net/InetSocketAddress;
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "Trying to establish TCP connection to "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v12, v14, v4}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->connectAsync(Ljava/net/SocketAddress;I)V

    .line 630
    :try_start_0
    invoke-virtual {v12}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    nop

    .line 639
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 641
    iput-object v8, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->host:Ljava/lang/String;

    .line 642
    iput v9, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->port:I

    .line 643
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v7, v13, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;->setException(Ljava/net/InetAddress;Ljava/lang/Exception;)V

    .line 633
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 634
    move-object/from16 v6, v16

    goto :goto_2

    .line 636
    :cond_1
    goto :goto_3

    .line 619
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "socketFuture":Lorg/jivesoftware/smack/SmackFuture$SocketFuture;
    .end local v13    # "inetAddress":Ljava/net/InetAddress;
    .end local v14    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :cond_2
    move-object/from16 v16, v6

    .line 645
    :goto_3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .end local v7    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "port":I
    .end local v11    # "inetAddresses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 647
    .restart local v7    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    .restart local v8    # "host":Ljava/lang/String;
    .restart local v9    # "port":I
    :cond_3
    move-object/from16 v16, v6

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host of HostAddress "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " must not be null when using a Proxy"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at port "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "hostAndPort":Ljava/lang/String;
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to establish TCP connection via Proxy to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 652
    :try_start_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxySocketConnection()Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

    move-result-object v0

    iget-object v11, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    invoke-interface {v0, v11, v8, v9, v4}, Lorg/jivesoftware/smack/proxy/ProxySocketConnection;->connect(Ljava/net/Socket;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    nop

    .line 658
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 660
    iput-object v8, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->host:Ljava/lang/String;

    .line 661
    iput v9, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->port:I

    .line 662
    return-void

    .line 653
    :catch_1
    move-exception v0

    .line 654
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;->setException(Ljava/lang/Exception;)V

    .line 655
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 668
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "hostAndPort":Ljava/lang/String;
    .end local v7    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "port":I
    :cond_4
    invoke-static {v2}, Lorg/jivesoftware/smack/SmackException$ConnectionException;->from(Ljava/util/List;)Lorg/jivesoftware/smack/SmackException$ConnectionException;

    move-result-object v0

    throw v0
.end method

.method private dropSmState()V
    .locals 1

    .line 1994
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    .line 1995
    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    .line 1996
    return-void
.end method

.method private initConnection()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    .line 684
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initReaderAndWriter()V

    .line 686
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    .line 687
    .local v0, "availableReaderWriterSemaphorePermits":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 688
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 692
    .local v2, "logObjects":[Ljava/lang/Object;
    sget-object v3, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Not every reader/writer threads where terminated on connection re-initializtion of {0}. Available permits {1}"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    .end local v2    # "logObjects":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 696
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->init()V

    .line 699
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->init()V

    .line 700
    return-void
.end method

.method private initReaderAndWriter()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 704
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 705
    .local v1, "os":Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    if-eqz v2, :cond_0

    .line 706
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 707
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 710
    :cond_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    .line 711
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->reader:Ljava/io/Reader;

    .line 714
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initDebugger()V

    .line 715
    return-void
.end method

.method private maybeEnableCompression()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->isCompressionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    return-void

    .line 939
    :cond_0
    const-string v0, "compression"

    const-string v1, "http://jabber.org/protocol/compress"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/compress/packet/Compress$Feature;

    .line 940
    .local v0, "compression":Lorg/jivesoftware/smack/compress/packet/Compress$Feature;
    if-nez v0, :cond_1

    .line 942
    return-void

    .line 946
    :cond_1
    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeGetCompressionHandler(Lorg/jivesoftware/smack/compress/packet/Compress$Feature;)Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    if-eqz v1, :cond_2

    .line 947
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    new-instance v2, Lorg/jivesoftware/smack/compress/packet/Compress;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;->getCompressionMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/compress/packet/Compress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->sendAndWaitForResponseOrThrow(Lorg/jivesoftware/smack/packet/Nonza;)V

    goto :goto_0

    .line 949
    :cond_2
    sget-object v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "Could not enable compression because no matching handler/method pair was found"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void
.end method

.method private static maybeGetCompressionHandler(Lorg/jivesoftware/smack/compress/packet/Compress$Feature;)Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
    .locals 4
    .param p0, "compression"    # Lorg/jivesoftware/smack/compress/packet/Compress$Feature;

    .line 903
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getCompressionHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    .line 904
    .local v1, "handler":Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;->getCompressionMethod()Ljava/lang/String;

    move-result-object v2

    .line 905
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/compress/packet/Compress$Feature;->getMethods()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    return-object v1

    .line 907
    .end local v1    # "handler":Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;
    .end local v2    # "method":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyConnectionError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 990
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->ASYNC_BUT_ORDERED:Lorg/jivesoftware/smack/AsyncButOrdered;

    new-instance v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V

    invoke-virtual {v0, p0, v1}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 1025
    return-void
.end method

.method private proceedTLSReceived()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 733
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 735
    .local v0, "daneVerifier":Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;
    iget-object v2, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getDnssecMode()Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->needsDnssecAndDane:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    if-ne v2, v3, :cond_2

    .line 736
    invoke-static {}, Lorg/jivesoftware/smack/util/DNSUtil;->getDaneProvider()Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

    move-result-object v2

    .line 737
    .local v2, "daneProvider":Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;
    if-eqz v2, :cond_1

    .line 740
    invoke-interface {v2}, Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;->newInstance()Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 742
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DANE requested but DANE provider did not return a DANE verifier"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 738
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "DANE enabled but no SmackDaneProvider configured"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 735
    .end local v2    # "daneProvider":Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;
    :cond_2
    move-object v2, v0

    .line 746
    .end local v0    # "daneVerifier":Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;
    .local v2, "daneVerifier":Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;
    :goto_0
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getCustomSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 747
    .local v3, "context":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    .line 748
    .local v4, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .line 750
    .local v5, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v6, 0x1

    if-nez v3, :cond_b

    .line 751
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getKeystoreType()Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "keyStoreType":Ljava/lang/String;
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v8

    .line 753
    .local v8, "callbackHandler":Ljavax/security/auth/callback/CallbackHandler;
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getKeystorePath()Ljava/lang/String;

    move-result-object v9

    .line 754
    .local v9, "keystorePath":Ljava/lang/String;
    const-string v0, "PKCS11"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "Exception"

    const/4 v13, 0x0

    if-eqz v10, :cond_3

    .line 756
    :try_start_0
    const-string v10, "sun.security.pkcs11.SunPKCS11"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v14, v6, [Ljava/lang/Class;

    const-class v15, Ljava/io/InputStream;

    aput-object v15, v14, v13

    invoke-virtual {v10, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 757
    .local v10, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name = SmartCard\nlibrary = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v15}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getPKCS11Library()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 758
    .local v14, "pkcs11Config":Ljava/lang/String;
    new-instance v15, Ljava/io/ByteArrayInputStream;

    const-string v12, "UTF-8"

    invoke-virtual {v14, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v15, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v12, v15

    .line 759
    .local v12, "config":Ljava/io/ByteArrayInputStream;
    new-array v15, v6, [Ljava/lang/Object;

    aput-object v12, v15, v13

    invoke-virtual {v10, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/Provider;

    .line 760
    .local v15, "p":Ljava/security/Provider;
    invoke-static {v15}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 761
    invoke-static {v0, v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    move-object v4, v0

    .line 762
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string v6, "PKCS11 Password: "

    invoke-direct {v0, v6, v13}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    move-object v5, v0

    .line 763
    const/4 v6, 0x1

    new-array v0, v6, [Ljavax/security/auth/callback/Callback;

    aput-object v5, v0, v13

    invoke-interface {v8, v0}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 764
    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v10    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "config":Ljava/io/ByteArrayInputStream;
    .end local v14    # "pkcs11Config":Ljava/lang/String;
    .end local v15    # "p":Ljava/security/Provider;
    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v6, v10, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 768
    const/4 v0, 0x0

    .line 769
    .end local v4    # "ks":Ljava/security/KeyStore;
    .local v0, "ks":Ljava/security/KeyStore;
    move-object v4, v0

    goto :goto_1

    .line 771
    .end local v0    # "ks":Ljava/security/KeyStore;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :cond_3
    const-string v0, "Apple"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 772
    const-string v6, "KeychainStore"

    invoke-static {v6, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 773
    .end local v4    # "ks":Ljava/security/KeyStore;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    move-object v4, v0

    goto :goto_1

    .line 777
    .end local v0    # "ks":Ljava/security/KeyStore;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :cond_4
    if-eqz v7, :cond_6

    .line 778
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 779
    if-eqz v8, :cond_5

    invoke-static {v9}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    :try_start_1
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string v6, "Keystore Password: "

    invoke-direct {v0, v6, v13}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    move-object v5, v0

    .line 782
    const/4 v6, 0x1

    new-array v0, v6, [Ljavax/security/auth/callback/Callback;

    aput-object v5, v0, v13

    invoke-interface {v8, v0}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 783
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 788
    goto :goto_1

    .line 785
    :catch_1
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v6, v10, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    const/4 v0, 0x0

    .line 788
    .end local v4    # "ks":Ljava/security/KeyStore;
    .local v0, "ks":Ljava/security/KeyStore;
    move-object v4, v0

    goto :goto_1

    .line 790
    .end local v0    # "ks":Ljava/security/KeyStore;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 794
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 796
    .local v6, "kms":[Ljavax/net/ssl/KeyManager;
    if-eqz v4, :cond_8

    .line 797
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 798
    .local v10, "keyManagerFactoryAlgorithm":Ljava/lang/String;
    const/4 v11, 0x0

    .line 800
    .local v11, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :try_start_2
    invoke-static {v10}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v0

    .line 805
    goto :goto_2

    .line 802
    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 803
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v12, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could get the default KeyManagerFactory for the \'"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\' algorithm"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v14, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    if-eqz v11, :cond_8

    .line 808
    if-nez v5, :cond_7

    .line 809
    const/4 v12, 0x0

    :try_start_3
    invoke-virtual {v11, v4, v12}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_3

    .line 812
    :cond_7
    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    invoke-virtual {v11, v4, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 813
    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 815
    :goto_3
    invoke-virtual {v11}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v0

    .line 819
    goto :goto_4

    .line 817
    :catch_3
    move-exception v0

    .line 818
    .local v0, "npe":Ljava/lang/NullPointerException;
    sget-object v12, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "NullPointerException"

    invoke-virtual {v12, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 824
    .end local v0    # "npe":Ljava/lang/NullPointerException;
    .end local v10    # "keyManagerFactoryAlgorithm":Ljava/lang/String;
    .end local v11    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :cond_8
    :goto_4
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 826
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 827
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    iget-object v10, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v10}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getCustomX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v10

    .line 829
    .local v10, "customTrustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v2, :cond_9

    .line 831
    invoke-interface {v2, v3, v6, v10, v0}, Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;->init(Ljavax/net/ssl/SSLContext;[Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/X509TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_5

    .line 833
    :cond_9
    const/4 v11, 0x0

    .line 834
    .local v11, "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v10, :cond_a

    .line 835
    const/4 v12, 0x1

    new-array v13, v12, [Ljavax/net/ssl/TrustManager;

    const/4 v12, 0x0

    aput-object v10, v13, v12

    move-object v11, v13

    .line 837
    :cond_a
    invoke-virtual {v3, v6, v11, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 841
    .end local v0    # "secureRandom":Ljava/security/SecureRandom;
    .end local v6    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v7    # "keyStoreType":Ljava/lang/String;
    .end local v8    # "callbackHandler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v9    # "keystorePath":Ljava/lang/String;
    .end local v10    # "customTrustManager":Ljavax/net/ssl/X509TrustManager;
    .end local v11    # "customTrustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_b
    :goto_5
    iget-object v0, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    .line 843
    .local v0, "plain":Ljava/net/Socket;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    .line 844
    invoke-virtual {v7}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v8

    .line 843
    const/4 v9, 0x1

    invoke-virtual {v6, v0, v7, v8, v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    .line 846
    iget-object v6, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 850
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v7, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getEnabledSSLProtocols()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getEnabledSSLCiphers()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/jivesoftware/smack/util/TLSUtils;->setEnabledProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 853
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initReaderAndWriter()V

    .line 856
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 858
    if-eqz v2, :cond_c

    .line 859
    invoke-interface {v2, v6}, Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;->finish(Ljavax/net/ssl/SSLSocket;)V

    .line 862
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    .line 863
    .local v7, "verifier":Ljavax/net/ssl/HostnameVerifier;
    if-eqz v7, :cond_f

    .line 869
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getXmppServiceDomainAsDnsNameIfPossible()Lorg/minidns/dnsname/DnsName;

    move-result-object v8

    .line 873
    .local v8, "xmppServiceDomainDnsName":Lorg/minidns/dnsname/DnsName;
    if-eqz v8, :cond_d

    .line 874
    iget-object v9, v8, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .local v9, "verifierHostname":Ljava/lang/String;
    goto :goto_6

    .line 877
    .end local v9    # "verifierHostname":Ljava/lang/String;
    :cond_d
    sget-object v9, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMPP service domain name \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "\' can not be represented as DNS name. TLS X.509 certificate validiation may fail."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 885
    .end local v8    # "xmppServiceDomainDnsName":Lorg/minidns/dnsname/DnsName;
    .restart local v9    # "verifierHostname":Ljava/lang/String;
    :goto_6
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v8

    .line 886
    .local v8, "verificationSuccessful":Z
    if-eqz v8, :cond_e

    .line 893
    iput-object v6, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->secureSocket:Ljavax/net/ssl/SSLSocket;

    .line 894
    return-void

    .line 887
    :cond_e
    new-instance v10, Ljava/security/cert/CertificateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hostname verification of certificate failed. Certificate does not authenticate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 864
    .end local v8    # "verificationSuccessful":Z
    .end local v9    # "verifierHostname":Ljava/lang/String;
    :cond_f
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No HostnameVerifier set. Use connectionConfiguration.setHostnameVerifier() to configure."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private processHandledCount(J)V
    .locals 18
    .param p1, "handledCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementCounterError;
        }
    .end annotation

    .line 2015
    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    iget-wide v1, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->serverHandledStanzasCount:J

    invoke-static {v9, v10, v1, v2}, Lorg/jivesoftware/smack/sm/SMUtils;->calculateDelta(JJ)J

    move-result-wide v11

    .line 2016
    .local v11, "ackedStanzasCount":J
    new-instance v1, Ljava/util/ArrayList;

    .line 2017
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v11, v2

    if-gtz v2, :cond_0

    long-to-int v2, v11

    goto :goto_0

    .line 2018
    :cond_0
    const v2, 0x7fffffff

    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v1

    .line 2019
    .local v13, "ackedStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    const-wide/16 v1, 0x0

    move-wide v14, v1

    .local v14, "i":J
    :goto_1
    cmp-long v1, v14, v11

    if-gez v1, :cond_2

    .line 2020
    iget-object v1, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/jivesoftware/smack/packet/Stanza;

    .line 2023
    .local v8, "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    if-eqz v8, :cond_1

    .line 2027
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    .end local v8    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    const-wide/16 v1, 0x1

    add-long/2addr v14, v1

    goto :goto_1

    .line 2024
    .restart local v8    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    :cond_1
    new-instance v16, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementCounterError;

    iget-wide v4, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->serverHandledStanzasCount:J

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-wide v6, v11

    move-object/from16 v17, v8

    .end local v8    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    .local v17, "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementCounterError;-><init>(JJJLjava/util/List;)V

    throw v16

    .line 2030
    .end local v14    # "i":J
    .end local v17    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    :cond_2
    const/4 v1, 0x0

    .line 2031
    .local v1, "atLeastOneStanzaAcknowledgedListener":Z
    iget-object v2, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2033
    const/4 v1, 0x1

    goto :goto_3

    .line 2037
    :cond_3
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Stanza;

    .line 2038
    .local v3, "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v4

    .line 2039
    .local v4, "id":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2040
    const/4 v1, 0x1

    .line 2041
    goto :goto_3

    .line 2043
    .end local v3    # "ackedStanza":Lorg/jivesoftware/smack/packet/Stanza;
    .end local v4    # "id":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 2047
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 2048
    new-instance v2, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;

    invoke-direct {v2, v0, v13}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$4;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/util/List;)V

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->asyncGo(Ljava/lang/Runnable;)V

    .line 2078
    :cond_6
    iput-wide v9, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->serverHandledStanzasCount:J

    .line 2079
    return-void
.end method

.method private requestSmAcknowledgementInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1794
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    sget-object v1, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;->INSTANCE:Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->sendStreamElement(Lorg/jivesoftware/smack/packet/Element;)V

    .line 1795
    return-void
.end method

.method private sendSmAcknowledgementInternal()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    new-instance v1, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;

    iget-wide v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->clientHandledStanzasCount:J

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->sendStreamElement(Lorg/jivesoftware/smack/packet/Element;)V

    .line 1818
    return-void
.end method

.method public static setDefaultBundleAndDeferCallback(Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;)V
    .locals 0
    .param p0, "defaultBundleAndDeferCallback"    # Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    .line 2089
    sput-object p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->defaultBundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    .line 2090
    return-void
.end method

.method public static setUseStreamManagementDefault(Z)V
    .locals 0
    .param p0, "useSmDefault"    # Z

    .line 1683
    sput-boolean p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmDefault:Z

    .line 1684
    return-void
.end method

.method public static setUseStreamManagementResumptiodDefault(Z)V
    .locals 0
    .param p0, "useSmResumptionDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1694
    invoke-static {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->setUseStreamManagementResumptionDefault(Z)V

    .line 1695
    return-void
.end method

.method public static setUseStreamManagementResumptionDefault(Z)V
    .locals 0
    .param p0, "useSmResumptionDefault"    # Z

    .line 1703
    if-eqz p0, :cond_0

    .line 1705
    invoke-static {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->setUseStreamManagementDefault(Z)V

    .line 1707
    :cond_0
    sput-boolean p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumptionDefault:Z

    .line 1708
    return-void
.end method

.method private shutdown(Z)V
    .locals 5
    .param p1, "instant"    # Z

    .line 514
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "PacketWriter shutdown()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdown(Z)V

    .line 516
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "PacketWriter has been shut down"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 518
    if-nez p1, :cond_0

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->closingStreamReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWait()Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    goto :goto_1

    .line 525
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while waiting for closing stream element from the server "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "PacketReader shutdown()"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->shutdown()V

    .line 532
    sget-object v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "PacketReader has been shut down"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->socket:Ljava/net/Socket;

    .line 535
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 540
    goto :goto_2

    .line 538
    :catch_2
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "shutdown"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->setWasAuthenticated()V

    .line 546
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    .line 547
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->readerWriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 549
    iget-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    if-eqz v1, :cond_2

    .line 550
    return-void

    .line 556
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmResumptionPossible()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 557
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    goto :goto_3

    .line 559
    :cond_3
    iput-boolean v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    .line 562
    iput-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    .line 566
    :goto_3
    iput-boolean v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->authenticated:Z

    .line 567
    iput-boolean v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->connected:Z

    .line 568
    iput-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->secureSocket:Ljavax/net/ssl/SSLSocket;

    .line 569
    iput-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->reader:Ljava/io/Reader;

    .line 570
    iput-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    .line 572
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initState()V

    .line 573
    return-void
.end method


# virtual methods
.method public addRequestAckPredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z
    .locals 2
    .param p1, "predicate"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 1754
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    monitor-enter v0

    .line 1755
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addStanzaAcknowledgedListener(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 1831
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1832
    return-void
.end method

.method public addStanzaDroppedListener(Lorg/jivesoftware/smack/StanzaListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 1863
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaDroppedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1864
    return-void
.end method

.method public addStanzaIdAcknowledgedListener(Ljava/lang/String;Lorg/jivesoftware/smack/StanzaListener;)Lorg/jivesoftware/smack/StanzaListener;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/jivesoftware/smack/StanzaListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;
        }
    .end annotation

    .line 1892
    iget-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smWasEnabledAtLeastOnce:Z

    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getMaxSmResumptionTime()I

    move-result v0

    const/16 v1, 0x2a30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1897
    .local v0, "removeAfterSeconds":I
    new-instance v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$3;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$3;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)V

    int-to-long v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1903
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/StanzaListener;

    return-object v1

    .line 1893
    .end local v0    # "removeAfterSeconds":I
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;-><init>()V

    throw v0
.end method

.method protected afterFeaturesReceived()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$SecurityRequiredByServerException;
        }
    .end annotation

    .line 1038
    const-string v0, "starttls"

    const-string v1, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StartTls;

    .line 1039
    .local v0, "startTlsFeature":Lorg/jivesoftware/smack/packet/StartTls;
    if-eqz v0, :cond_3

    .line 1040
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StartTls;->required()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1041
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException$SecurityRequiredByServerException;

    invoke-direct {v1}, Lorg/jivesoftware/smack/SmackException$SecurityRequiredByServerException;-><init>()V

    .line 1042
    .local v1, "smackException":Lorg/jivesoftware/smack/SmackException$SecurityRequiredByServerException;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1043
    throw v1

    .line 1046
    .end local v1    # "smackException":Lorg/jivesoftware/smack/SmackException$SecurityRequiredByServerException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getSecurityMode()Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    if-eq v1, v2, :cond_2

    .line 1047
    new-instance v1, Lorg/jivesoftware/smack/packet/StartTls;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/StartTls;-><init>()V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V

    goto :goto_1

    .line 1049
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    goto :goto_1

    .line 1052
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1055
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1059
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1061
    :cond_4
    return-void
.end method

.method protected afterSuccessfulLogin(Z)V
    .locals 1
    .param p1, "resumed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    .line 395
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->afterSuccessfulLogin(Z)V

    .line 396
    return-void
.end method

.method protected connectInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 968
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->closingStreamReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 971
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->connectUsingConfiguration()V

    .line 974
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initConnection()V

    .line 977
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->tlsHandled:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWaitOrThrow()V

    .line 980
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->saslFeatureReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWaitOrThrow()V

    .line 981
    return-void
.end method

.method public getMaxSmResumptionTime()I
    .locals 3

    .line 2009
    iget v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smClientMaxResumptionTime:I

    const v1, 0x7fffffff

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2010
    .local v0, "clientResumptionTime":I
    :goto_0
    iget v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smServerMaxResumptionTime:I

    if-lez v2, :cond_1

    move v1, v2

    .line 2011
    .local v1, "serverResumptionTime":I
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected initState()V
    .locals 1

    .line 577
    invoke-super {p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->initState()V

    .line 578
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 579
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 580
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 581
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 582
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->initialOpenStreamSend:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 583
    return-void
.end method

.method public declared-synchronized instantShutdown()V
    .locals 1

    monitor-enter p0

    .line 508
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 507
    .end local p0    # "this":Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDisconnectedButSmResumptionPossible()Z
    .locals 1

    .line 1956
    iget-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmResumptionPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSecureConnection()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->secureSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmAvailable()Z
    .locals 2

    .line 1929
    const-string v0, "sm"

    const-string v1, "urn:xmpp:sm:3"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSmEnabled()Z
    .locals 1

    .line 1938
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->wasSuccessful()Z

    move-result v0

    return v0
.end method

.method public isSmResumptionPossible()Z
    .locals 9

    .line 1966
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1967
    return v1

    .line 1969
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownTimestamp:Ljava/lang/Long;

    .line 1971
    .local v0, "shutdownTimestamp":Ljava/lang/Long;
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1972
    return v2

    .line 1976
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1977
    .local v3, "current":J
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getMaxSmResumptionTime()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 1978
    .local v5, "maxResumptionMillies":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v5

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    .line 1981
    return v1

    .line 1983
    :cond_2
    return v2
.end method

.method public isUsingCompression()Z
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressionHandler:Lorg/jivesoftware/smack/compression/XMPPInputOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->compressSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected declared-synchronized loginInternal(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 10
    .param p1, "username"    # Ljava/lang/String;
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

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->secureSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->secureSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
    :cond_0
    const/4 v0, 0x0

    .line 403
    .local v0, "sslSession":Ljavax/net/ssl/SSLSession;
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getAuthzid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Ljavax/net/ssl/SSLSession;)V

    .line 408
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeCompressFeaturesReceived:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWait()Ljava/lang/Exception;

    .line 412
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->maybeEnableCompression()V

    .line 414
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmResumptionPossible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    new-instance v2, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resume;

    iget-wide v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->clientHandledStanzasCount:J

    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smSessionId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resume;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->sendAndWaitForResponse(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)Ljava/lang/Exception;

    .line 416
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->wasSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->afterSuccessfulLogin(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    monitor-exit p0

    return-void

    .line 424
    :cond_1
    :try_start_1
    sget-object v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "Stream resumption failed, continuing with normal stream establishment process"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 427
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 428
    .local v1, "previouslyUnackedStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_3

    .line 431
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->unacknowledgedStanzas:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 437
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->dropSmState()V

    .line 443
    :cond_3
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->bindResourceAndEstablishSession(Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 445
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSm:Z

    if-eqz v2, :cond_5

    .line 447
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->serverHandledStanzasCount:J

    .line 450
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smEnabledSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    new-instance v3, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;

    iget-boolean v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumption:Z

    iget v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smClientMaxResumptionTime:I

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;-><init>(ZI)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SynchronizationPoint;->sendAndWaitForResponseOrThrow(Lorg/jivesoftware/smack/packet/Nonza;)V

    .line 451
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-static {}, Lorg/jivesoftware/smack/sm/predicates/Predicate;->forMessagesOrAfter5Stanzas()Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    .line 463
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaDroppedListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 464
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Stanza;

    .line 465
    .local v3, "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaDroppedListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/StanzaListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    .local v5, "listener":Lorg/jivesoftware/smack/StanzaListener;
    :try_start_4
    invoke-interface {v5, v3}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotLoggedInException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 471
    goto :goto_5

    .line 469
    :catch_0
    move-exception v6

    goto :goto_4

    :catch_1
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v6

    .line 470
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-object v7, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "StanzaDroppedListener received exception"

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    .end local v5    # "listener":Lorg/jivesoftware/smack/StanzaListener;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_3

    .line 473
    .end local v3    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    :cond_6
    goto :goto_2

    :cond_7
    goto :goto_7

    .line 475
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Stanza;

    .line 476
    .restart local v3    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendStanzaInternal(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 477
    .end local v3    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    goto :goto_6

    .line 480
    :cond_9
    :goto_7
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->afterSuccessfulLogin(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 481
    monitor-exit p0

    return-void

    .line 401
    .end local v0    # "sslSession":Ljavax/net/ssl/SSLSession;
    .end local v1    # "previouslyUnackedStanzas":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    .end local p1    # "username":Ljava/lang/String;
    .end local p2    # "password":Ljava/lang/String;
    .end local p3    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method openStream()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1076
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    .line 1077
    .local v0, "to":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1078
    .local v1, "from":Ljava/lang/CharSequence;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->config:Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->getUsername()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1079
    .local v2, "localpart":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 1080
    invoke-static {v2, v0}, Lorg/jxmpp/util/XmppStringUtils;->completeJidFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getStreamId()Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smack/packet/StreamOpen;

    invoke-direct {v4, v0, v1, v3}, Lorg/jivesoftware/smack/packet/StreamOpen;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V

    .line 1085
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->reader:Ljava/io/Reader;

    invoke-static {v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmppParser(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    iput-object v5, v4, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    nop

    .line 1090
    return-void

    .line 1087
    :catch_0
    move-exception v4

    .line 1088
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    invoke-direct {v5, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public removeAllRequestAckPredicates()V
    .locals 2

    .line 1774
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    monitor-enter v0

    .line 1775
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1776
    monitor-exit v0

    .line 1777
    return-void

    .line 1776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllStanzaAcknowledgedListeners()V
    .locals 1

    .line 1848
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1849
    return-void
.end method

.method public removeAllStanzaIdAcknowledgedListeners()V
    .locals 1

    .line 1920
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1921
    return-void
.end method

.method public removeRequestAckPredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z
    .locals 2
    .param p1, "predicate"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 1765
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    monitor-enter v0

    .line 1766
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStanzaAcknowledgedListener(Lorg/jivesoftware/smack/StanzaListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 1841
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaAcknowledgedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeStanzaDroppedListener(Lorg/jivesoftware/smack/StanzaListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/StanzaListener;

    .line 1874
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaDroppedListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeStanzaIdAcknowledgedListener(Ljava/lang/String;)Lorg/jivesoftware/smack/StanzaListener;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 1913
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->stanzaIdAcknowledgedListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/StanzaListener;

    return-object v0
.end method

.method public requestSmAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1787
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestSmAcknowledgementInternal()V

    .line 1791
    return-void

    .line 1788
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;-><init>()V

    throw v0
.end method

.method public sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Nonza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->sendStreamElement(Lorg/jivesoftware/smack/packet/Element;)V

    .line 588
    return-void
.end method

.method public sendSmAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1810
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendSmAcknowledgementInternal()V

    .line 1814
    return-void

    .line 1811
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamManagementNotEnabledException;-><init>()V

    throw v0
.end method

.method protected sendStanzaInternal(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->sendStreamElement(Lorg/jivesoftware/smack/packet/Element;)V

    .line 593
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestAckPredicates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 595
    .local v1, "requestAckPredicate":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->requestSmAcknowledgementInternal()V

    .line 597
    goto :goto_1

    .line 599
    .end local v1    # "requestAckPredicate":Lorg/jivesoftware/smack/filter/StanzaFilter;
    :cond_0
    goto :goto_0

    .line 601
    :cond_1
    :goto_1
    return-void
.end method

.method public setBundleandDeferCallback(Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;)V
    .locals 0
    .param p1, "bundleAndDeferCallback"    # Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    .line 2104
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->bundleAndDeferCallback:Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    .line 2105
    return-void
.end method

.method public setPreferredResumptionTime(I)V
    .locals 0
    .param p1, "resumptionTime"    # I

    .line 1737
    iput p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smClientMaxResumptionTime:I

    .line 1738
    return-void
.end method

.method public setUseStreamManagement(Z)V
    .locals 0
    .param p1, "useSm"    # Z

    .line 1716
    iput-boolean p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSm:Z

    .line 1717
    return-void
.end method

.method public setUseStreamManagementResumption(Z)V
    .locals 0
    .param p1, "useSmResumption"    # Z

    .line 1725
    if-eqz p1, :cond_0

    .line 1727
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->setUseStreamManagement(Z)V

    .line 1729
    :cond_0
    iput-boolean p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->useSmResumption:Z

    .line 1730
    return-void
.end method

.method protected setWriter(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .line 1033
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->writer:Ljava/io/Writer;

    .line 1034
    return-void
.end method

.method protected shutdown()V
    .locals 4

    .line 494
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendSmAcknowledgementInternal()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_1

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can not send final SM ack as connection is not connected"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->shutdown(Z)V

    .line 504
    return-void
.end method

.method public streamWasResumed()Z
    .locals 1

    .line 1947
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->smResumedSyncPoint:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->wasSuccessful()Z

    move-result v0

    return v0
.end method

.method protected throwAlreadyConnectedExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$AlreadyConnectedException;-><init>()V

    throw v0

    .line 382
    :cond_1
    :goto_0
    return-void
.end method

.method protected throwAlreadyLoggedInExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->disconnectedButResumeable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$AlreadyLoggedInException;-><init>()V

    throw v0

    .line 389
    :cond_1
    :goto_0
    return-void
.end method

.method protected throwNotConnectedExceptionIfAppropriate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->throwNotConnectedExceptionIfDoneAndResumptionNotPossible()V

    .line 375
    return-void

    .line 372
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>()V

    throw v0
.end method
