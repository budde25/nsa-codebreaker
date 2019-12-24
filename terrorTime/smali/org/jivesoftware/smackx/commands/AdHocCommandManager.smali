.class public final Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
.super Lorg/jivesoftware/smack/Manager;
.source "AdHocCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/commands"

.field private static final SESSION_TIMEOUT:I = 0x78

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final executingCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/commands/LocalCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

.field private sessionsSweeper:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->LOGGER:Ljava/util/logging/Logger;

    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    .line 88
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 94
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 9
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 139
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    .line 140
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    .line 146
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/commands"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    new-instance v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$2;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$2;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    .line 153
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/NodeInformationProvider;)V

    .line 175
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v8, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v5, "command"

    const-string v6, "http://jabber.org/protocol/commands"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$3;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 66
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRegisteredCommands()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->processAdHocCommand(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getAddHocCommandsManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    .line 105
    .local v1, "ahcm":Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
    if-nez v1, :cond_0

    .line 106
    new-instance v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 107
    sget-object v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit v0

    return-object v1

    .line 103
    .end local v1    # "ahcm":Lorg/jivesoftware/smackx/commands/AdHocCommandManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRegisteredCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private newInstanceOfCmd(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/LocalCommand;
    .locals 3
    .param p1, "commandNode"    # Ljava/lang/String;
    .param p2, "sessionID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 645
    .local v0, "commandInfo":Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getCommandInstance()Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v1

    .line 646
    .local v1, "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setSessionID(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setName(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setNode(Ljava/lang/String;)V

    .line 650
    return-object v1
.end method

.method private processAdHocCommand(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .param p1, "requestData"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;-><init>()V

    .line 338
    .local v0, "response":Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 339
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStanzaId(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setNode(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setId(Lorg/jxmpp/jid/Jid;)V

    .line 343
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getSessionID()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "sessionId":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getNode()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "commandNode":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 349
    iget-object v3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v0, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    return-object v3

    .line 356
    :cond_0
    const/16 v3, 0xf

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->newInstanceOfCmd(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/LocalCommand;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .local v3, "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    nop

    .line 371
    :try_start_1
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 372
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setData(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)V

    .line 377
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/commands/LocalCommand;->hasPermission(Lorg/jxmpp/jid/Jid;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v0, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    return-object v4

    .line 381
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v4

    .line 384
    .local v4, "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v4, :cond_2

    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    sget-object v5, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v6, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v5, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5

    .line 390
    :cond_2
    if-eqz v4, :cond_3

    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 391
    sget-object v5, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v6, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v5, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5

    .line 397
    :cond_3
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 399
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->execute()V

    .line 401
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isLastStage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_0

    .line 408
    :cond_4
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 409
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    if-nez v5, :cond_5

    .line 412
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$6;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    .line 450
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 451
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->sessionsSweeper:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 456
    :cond_5
    :goto_0
    return-object v0

    .line 459
    .end local v3    # "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    .end local v4    # "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 365
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_1

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v3

    .line 367
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->internal_server_error:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setDescriptiveEnText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 368
    .local v4, "xmppError":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    invoke-static {v0, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 463
    .end local v4    # "xmppError":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .local v3, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :goto_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v4

    .line 468
    .local v4, "error":Lorg/jivesoftware/smack/packet/StanzaError;
    sget-object v5, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/StanzaError;->getType()Lorg/jivesoftware/smack/packet/StanzaError$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/packet/StanzaError$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 469
    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 470
    iget-object v5, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_6
    invoke-static {v4}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5

    .line 476
    .end local v3    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v4    # "error":Lorg/jivesoftware/smack/packet/StanzaError;
    :cond_7
    iget-object v3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/commands/LocalCommand;

    .line 481
    .local v3, "command":Lorg/jivesoftware/smackx/commands/LocalCommand;
    if-nez v3, :cond_8

    .line 482
    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v5, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badSessionid:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v4, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    return-object v4

    .line 487
    :cond_8
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getCreationDate()J

    move-result-wide v4

    .line 488
    .local v4, "creationStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_9

    .line 490
    iget-object v6, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v6, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->sessionExpired:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v6, v7}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v6

    return-object v6

    .line 502
    :cond_9
    monitor-enter v3

    .line 503
    :try_start_2
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v6

    .line 506
    .local v6, "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    if-eqz v6, :cond_a

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 507
    sget-object v7, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v8, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v7, v8}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v7

    monitor-exit v3

    return-object v7

    .line 513
    :cond_a
    if-eqz v6, :cond_b

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 514
    :cond_b
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getExecuteAction()Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    move-result-object v7

    move-object v6, v7

    .line 519
    :cond_c
    invoke-virtual {v3, v6}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isValidAction(Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 520
    sget-object v7, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v8, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, v7, v8}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v7

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v7

    .line 531
    :cond_d
    :try_start_3
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 534
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->setData(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;)V

    .line 536
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 537
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 538
    new-instance v7, Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smackx/commands/LocalCommand;->next(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 539
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->isLastStage()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 542
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_3

    .line 546
    :cond_e
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    goto :goto_3

    .line 549
    :cond_f
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 550
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->incrementStage()V

    .line 551
    new-instance v7, Lorg/jivesoftware/smackx/xdata/Form;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->getForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smackx/commands/LocalCommand;->complete(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 552
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 554
    iget-object v7, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 556
    :cond_10
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 557
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->decrementStage()V

    .line 558
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->prev()V

    goto :goto_3

    .line 560
    :cond_11
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 561
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/LocalCommand;->cancel()V

    .line 562
    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 564
    iget-object v7, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 567
    :cond_12
    :goto_3
    :try_start_4
    monitor-exit v3

    return-object v0

    .line 569
    :catch_7
    move-exception v7

    .line 573
    .local v7, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v8

    .line 578
    .local v8, "error":Lorg/jivesoftware/smack/packet/StanzaError;
    sget-object v9, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/packet/StanzaError;->getType()Lorg/jivesoftware/smack/packet/StanzaError$Type;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/packet/StanzaError$Type;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 579
    sget-object v9, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setStatus(Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;)V

    .line 580
    iget-object v9, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->executingCommands:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_13
    invoke-static {v8}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v9

    invoke-static {v0, v9}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v9

    monitor-exit v3

    return-object v9

    .line 584
    .end local v6    # "action":Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .end local v7    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v8    # "error":Lorg/jivesoftware/smack/packet/StanzaError;
    :catchall_0
    move-exception v6

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6
.end method

.method private static respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p0, "response"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .param p1, "error"    # Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 622
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 623
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 624
    return-object p0
.end method

.method private static respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p0, "response"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .param p1, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 597
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method private static respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Condition;Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p0, "response"    # Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;
    .param p1, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .param p2, "specificCondition"    # Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 610
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 611
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->respondError(Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public discoverCommands(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/commands"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCommand(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/RemoteCommand;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;

    .line 305
    new-instance v0, Lorg/jivesoftware/smackx/commands/RemoteCommand;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lorg/jivesoftware/smackx/commands/RemoteCommand;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V

    return-object v0
.end method

.method public publishCommands(Lorg/jxmpp/jid/Jid;)V
    .locals 6
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;-><init>()V

    .line 282
    .local v0, "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->getRegisteredCommands()Ljava/util/Collection;

    move-result-object v1

    .line 284
    .local v1, "xCommandsList":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    .line 285
    .local v3, "info":Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    new-instance v4, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getOwnerJID()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 286
    .local v4, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V

    .line 289
    .end local v3    # "info":Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    .end local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    goto :goto_0

    .line 291
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v3, "http://jabber.org/protocol/commands"

    invoke-virtual {v2, p1, v3, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->publishItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;)V

    .line 292
    return-void
.end method

.method public registerCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jivesoftware/smackx/commands/LocalCommand;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jivesoftware/smackx/commands/LocalCommand;>;"
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;

    invoke-direct {v0, p0, p3}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$4;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->registerCommand(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V

    .line 212
    return-void
.end method

.method public registerCommand(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;)V
    .locals 7
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Lorg/jivesoftware/smackx/commands/LocalCommandFactory;

    .line 226
    new-instance v6, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/commands/LocalCommandFactory;Lorg/jivesoftware/smackx/commands/AdHocCommandManager$1;)V

    .line 228
    .local v0, "commandInfo":Lorg/jivesoftware/smackx/commands/AdHocCommandManager$AdHocCommandInfo;
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->commands:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smackx/commands/AdHocCommandManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    new-instance v2, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;

    invoke-direct {v2, p0, p2}, Lorg/jivesoftware/smackx/commands/AdHocCommandManager$5;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommandManager;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/NodeInformationProvider;)V

    .line 251
    return-void
.end method
