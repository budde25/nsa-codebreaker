.class public final Lorg/jivesoftware/smack/SASLAuthentication;
.super Ljava/lang/Object;
.source "SASLAuthentication.java"


# static fields
.field private static final BLACKLISTED_MECHANISMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final REGISTERED_MECHANISMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/sasl/SASLMechanism;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationSuccessful:Z

.field private final configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private final connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

.field private saslException:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->LOGGER:Ljava/util/logging/Logger;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    .line 73
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/ScramSha1PlusMechanism;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->blacklistSASLMechanism(Ljava/lang/String;)Z

    .line 74
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .param p2, "configuration"    # Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 166
    iput-object p2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 167
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 168
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->init()V

    .line 169
    return-void
.end method

.method public static blacklistSASLMechanism(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mechanism"    # Ljava/lang/String;

    .line 136
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBlacklistedSASLMechanisms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisterdSASLMechanisms()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .local v0, "answer":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 97
    .local v3, "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    nop

    .end local v3    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    goto :goto_0

    .line 99
    :cond_0
    monitor-exit v1

    .line 100
    return-object v0

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getServerMechanisms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    const-string v1, "mechanisms"

    const-string v2, "urn:ietf:params:xml:ns:xmpp-sasl"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getFeature(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Mechanisms;

    .line 370
    .local v0, "mechanisms":Lorg/jivesoftware/smack/packet/Mechanisms;
    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 373
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Mechanisms;->getMechanisms()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static isSaslMechanismRegistered(Ljava/lang/String;)Z
    .locals 4
    .param p0, "saslMechanism"    # Ljava/lang/String;

    .line 104
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 106
    .local v2, "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 109
    .end local v2    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    monitor-exit v0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerSASLMechanism(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V
    .locals 2
    .param p0, "mechanism"    # Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 82
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selectMechanism(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .locals 7
    .param p1, "authzid"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 326
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->getServerMechanisms()Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "serverMechanisms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "Server did not report any SASL mechanisms"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 334
    .local v2, "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "mechanismName":Ljava/lang/String;
    sget-object v4, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    monitor-enter v4

    .line 336
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    monitor-exit v4

    goto :goto_0

    .line 339
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v4, p0, Lorg/jivesoftware/smack/SASLAuthentication;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isEnabledSaslMechanism(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 341
    goto :goto_0

    .line 343
    :cond_2
    if-eqz p1, :cond_3

    .line 344
    invoke-virtual {v2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authzidSupported()Z

    move-result v4

    if-nez v4, :cond_3

    .line 345
    sget-object v4, Lorg/jivesoftware/smack/SASLAuthentication;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " because authzid is required by not supported by this SASL mechanism"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 346
    goto :goto_0

    .line 349
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 351
    iget-object v4, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->instanceForAuthentication(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/ConnectionConfiguration;)Lorg/jivesoftware/smack/sasl/SASLMechanism;

    move-result-object v4

    return-object v4

    .line 353
    .end local v2    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .end local v3    # "mechanismName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 339
    .restart local v2    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .restart local v3    # "mechanismName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 355
    .end local v2    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .end local v3    # "mechanismName":Ljava/lang/String;
    :cond_5
    sget-object v2, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    monitor-enter v2

    .line 357
    :try_start_2
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No supported and enabled SASL Mechanism provided by server. Server announced mechanisms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Registered SASL mechanisms with Smack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Enabled SASL mechanisms for this connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jivesoftware/smack/SASLAuthentication;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 361
    invoke-virtual {v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getEnabledSaslMechanisms()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Blacklisted SASL mechanisms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .end local v1    # "serverMechanisms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "authzid":Lorg/jxmpp/jid/EntityBareJid;
    throw v3

    .line 365
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    .restart local v1    # "serverMechanisms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "authzid":Lorg/jxmpp/jid/EntityBareJid;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public static unBlacklistSASLMechanism(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mechanism"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->BLACKLISTED_MECHANISMS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unregisterSASLMechanism(Ljava/lang/String;)Z
    .locals 4
    .param p0, "clazz"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->REGISTERED_MECHANISMS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 126
    .local v2, "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 128
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 130
    .end local v2    # "mechanism":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    :cond_0
    goto :goto_0

    .line 131
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/sasl/SASLMechanism;>;"
    :cond_1
    monitor-exit v0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Ljavax/net/ssl/SSLSession;)V
    .locals 11
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "authzid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p4, "sslSession"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/sasl/SASLErrorException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->selectMechanism(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/sasl/SASLMechanism;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v0

    .line 194
    .local v0, "callbackHandler":Ljavax/security/auth/callback/CallbackHandler;
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "host":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v10

    .line 197
    .local v10, "xmppServiceDomain":Lorg/jxmpp/jid/DomainBareJid;
    monitor-enter p0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    move-object v2, v9

    move-object v3, v10

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Lorg/jxmpp/jid/DomainBareJid;Ljavax/security/auth/callback/CallbackHandler;Lorg/jxmpp/jid/EntityBareJid;Ljavax/net/ssl/SSLSession;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    move-object v3, p1

    move-object v4, v9

    move-object v5, v10

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Ljavax/net/ssl/SSLSession;)V

    .line 204
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 205
    .local v1, "deadline":J
    :goto_1
    iget-boolean v3, p0, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslException:Ljava/lang/Exception;

    if-nez v3, :cond_2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 207
    .local v3, "now":J
    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    goto :goto_2

    .line 209
    :cond_1
    sub-long v5, v1, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 210
    .end local v3    # "now":J
    goto :goto_1

    .line 211
    .end local v1    # "deadline":J
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslException:Ljava/lang/Exception;

    if-eqz v1, :cond_5

    .line 214
    instance-of v2, v1, Lorg/jivesoftware/smack/SmackException;

    if-nez v2, :cond_4

    .line 216
    instance-of v2, v1, Lorg/jivesoftware/smack/sasl/SASLErrorException;

    if-eqz v2, :cond_3

    .line 217
    check-cast v1, Lorg/jivesoftware/smack/sasl/SASLErrorException;

    throw v1

    .line 219
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected exception type"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 215
    :cond_4
    check-cast v1, Lorg/jivesoftware/smack/SmackException;

    throw v1

    .line 223
    :cond_5
    iget-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful:Z

    if-eqz v1, :cond_6

    .line 226
    return-void

    .line 224
    :cond_6
    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    const-string v2, "successful SASL authentication"

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v1

    throw v1

    .line 211
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public authenticated(Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;)V
    .locals 2
    .param p1, "success"    # Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;->getData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;Z)V

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->checkIfSuccessfulOrThrow()V

    .line 277
    iput-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful:Z

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public authenticationFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 296
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslException:Ljava/lang/Exception;

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 300
    monitor-exit p0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public authenticationFailed(Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;)V
    .locals 2
    .param p1, "saslFailure"    # Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;

    .line 292
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLErrorException;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smack/sasl/SASLErrorException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Ljava/lang/Exception;)V

    .line 293
    return-void
.end method

.method public authenticationSuccessful()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful:Z

    return v0
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "challenge"    # Ljava/lang/String;
    .param p2, "finalChallenge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->challengeReceived(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    nop

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Ljava/lang/Exception;)V

    .line 256
    throw v0
.end method

.method getNameOfLastUsedSaslMechansism()Ljava/lang/String;
    .locals 2

    .line 318
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 319
    .local v0, "lastUsedMech":Lorg/jivesoftware/smack/sasl/SASLMechanism;
    if-nez v0, :cond_0

    .line 320
    const/4 v1, 0x0

    return-object v1

    .line 322
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method init()V
    .locals 1

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationSuccessful:Z

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslException:Ljava/lang/Exception;

    .line 315
    return-void
.end method
