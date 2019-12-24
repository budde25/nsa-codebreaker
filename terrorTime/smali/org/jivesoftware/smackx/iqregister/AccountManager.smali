.class public final Lorg/jivesoftware/smackx/iqregister/AccountManager;
.super Lorg/jivesoftware/smack/Manager;
.source "AccountManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iqregister/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private static allowSensitiveOperationOverInsecureConnectionDefault:Z


# instance fields
.field private accountCreationSupported:Z

.field private allowSensitiveOperationOverInsecureConnection:Z

.field private info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->INSTANCES:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnectionDefault:Z

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 113
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 81
    sget-boolean v0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnectionDefault:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnection:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->accountCreationSupported:Z

    .line 114
    return-void
.end method

.method private createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 3
    .param p1, "req"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getStanzaId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iqregister/AccountManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iqregister/AccountManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iqregister/AccountManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqregister/AccountManager;

    .line 61
    .local v1, "accountManager":Lorg/jivesoftware/smackx/iqregister/AccountManager;
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Lorg/jivesoftware/smackx/iqregister/AccountManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 63
    sget-object v2, Lorg/jivesoftware/smackx/iqregister/AccountManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit v0

    return-object v1

    .line 59
    .end local v1    # "accountManager":Lorg/jivesoftware/smackx/iqregister/AccountManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getRegistrationInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 368
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>()V

    .line 369
    .local v0, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 370
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    iput-object v1, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 367
    .end local v0    # "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    .end local p0    # "this":Lorg/jivesoftware/smackx/iqregister/AccountManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static sensitiveOperationOverInsecureConnectionDefault(Z)V
    .locals 0
    .param p0, "allow"    # Z

    .line 78
    sput-boolean p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnectionDefault:Z

    .line 79
    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isSecureConnection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnection:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing password over insecure connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityFullJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v1, "password"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>(Ljava/util/Map;)V

    .line 312
    .local v1, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 313
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 314
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 315
    return-void
.end method

.method public createAccount(Lorg/jxmpp/jid/parts/Localpart;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->getAccountAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "attributeName":Ljava/lang/String;
    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v2    # "attributeName":Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->createAccount(Lorg/jxmpp/jid/parts/Localpart;Ljava/lang/String;Ljava/util/Map;)V

    .line 255
    return-void
.end method

.method public createAccount(Lorg/jxmpp/jid/parts/Localpart;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "username"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/parts/Localpart;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
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

    .line 273
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isSecureConnection()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnection:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Creating account over insecure connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 279
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p1}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "password"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v0, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v0, p3}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>(Ljava/util/Map;)V

    .line 286
    .local v0, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 287
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 288
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 289
    return-void

    .line 280
    .end local v0    # "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteAccount()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 331
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "remove"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v1, Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;-><init>(Ljava/util/Map;)V

    .line 333
    .local v1, "reg":Lorg/jivesoftware/smackx/iqregister/packet/Registration;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 334
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 335
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 336
    return-void
.end method

.method public getAccountAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->getRegistrationInfo()V

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAccountAttributes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
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

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->getRegistrationInfo()V

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 189
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 192
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getAccountInstructions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    if-nez v0, :cond_0

    .line 228
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->getRegistrationInfo()V

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->getInstructions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 342
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    const-string v1, "register"

    const-string v2, "http://jabber.org/features/iq-register"

    invoke-interface {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    .line 344
    .local v1, "extensionElement":Lorg/jivesoftware/smack/packet/ExtensionElement;
    if-eqz v1, :cond_0

    .line 345
    const/4 v2, 0x1

    return v2

    .line 350
    :cond_0
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v2

    const-string v3, "jabber:iq:register"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 354
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public sensitiveOperationOverInsecureConnection(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .line 94
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->allowSensitiveOperationOverInsecureConnection:Z

    .line 95
    return-void
.end method

.method setSupportsAccountCreation(Z)V
    .locals 0
    .param p1, "accountCreationSupported"    # Z

    .line 125
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->accountCreationSupported:Z

    .line 126
    return-void
.end method

.method public supportsAccountCreation()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->accountCreationSupported:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 144
    return v1

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    if-nez v0, :cond_2

    .line 150
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqregister/AccountManager;->getRegistrationInfo()V

    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->info:Lorg/jivesoftware/smackx/iqregister/packet/Registration;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iqregister/packet/Registration;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->accountCreationSupported:Z

    .line 153
    :cond_2
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iqregister/AccountManager;->accountCreationSupported:Z

    return v0
.end method
