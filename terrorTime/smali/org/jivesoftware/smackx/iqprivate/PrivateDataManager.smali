.class public final Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PrivateDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager$PrivateDataIQProvider;
    }
.end annotation


# static fields
.field private static final DUMMY_PRIVATE_DATA:Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final privateDataProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->instances:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    .line 188
    new-instance v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->DUMMY_PRIVATE_DATA:Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 141
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 142
    sget-object v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public static addPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;)V
    .locals 2
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "provider"    # Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;

    .line 119
    invoke-static {p0, p1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    .line 71
    .local v1, "privateDataManager":Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;
    if-nez v1, :cond_0

    .line 72
    new-instance v2, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 74
    :cond_0
    monitor-exit v0

    return-object v1

    .line 69
    .end local v1    # "privateDataManager":Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;
    .locals 2
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 105
    invoke-static {p0, p1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;

    return-object v1
.end method

.method public static removePrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 130
    invoke-static {p0, p1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->privateDataProviders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method


# virtual methods
.method public getPrivateData(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "privateDataGet":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;

    .line 167
    .local v1, "response":Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;->getPrivateData()Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

    move-result-object v2

    return-object v2
.end method

.method public isSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 220
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->DUMMY_PRIVATE_DATA:Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v1, v2, :cond_0

    .line 225
    const/4 v1, 0x0

    return v1

    .line 228
    :cond_0
    throw v0
.end method

.method public setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V
    .locals 2
    .param p1, "privateData"    # Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;-><init>(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    .line 185
    .local v0, "privateDataSet":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 186
    return-void
.end method
