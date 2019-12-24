.class public abstract Lorg/jivesoftware/smack/packet/Stanza;
.super Ljava/lang/Object;
.source "Stanza.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/TopLevelStreamElement;


# static fields
.field protected static final DEFAULT_LANGUAGE:Ljava/lang/String;

.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private error:Lorg/jivesoftware/smack/packet/StanzaError;

.field private from:Lorg/jxmpp/jid/Jid;

.field private id:Ljava/lang/String;

.field protected language:Ljava/lang/String;

.field private final packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation
.end field

.field private to:Lorg/jxmpp/jid/Jid;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/Stanza;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 79
    invoke-static {}, Lorg/jivesoftware/smack/packet/id/StanzaIdUtil;->newStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "stanzaId"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/util/MultiMap;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 83
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Stanza;->setStanzaId(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 2
    .param p1, "p"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/util/MultiMap;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/MultiMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 87
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->to:Lorg/jxmpp/jid/Jid;

    .line 89
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->from:Lorg/jxmpp/jid/Jid;

    .line 90
    iget-object v0, p1, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 93
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 94
    .local v1, "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 95
    .end local v1    # "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public static getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .line 499
    sget-object v0, Lorg/jivesoftware/smack/packet/Stanza;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected addCommonAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .param p2, "enclosingNamespace"    # Ljava/lang/String;

    .line 511
    if-eqz p2, :cond_1

    const-string v0, "jabber:client"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    const-string v0, "jabber:server"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    move-object v0, p2

    .local v0, "namespace":Ljava/lang/String;
    goto :goto_1

    .line 513
    .end local v0    # "namespace":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "jabber:client"

    .line 518
    .restart local v0    # "namespace":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 519
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    const-string v2, "to"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 520
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 521
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 522
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmllangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 524
    return-object v0
.end method

.method public addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 3
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 379
    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v2, v0, p1}, Lorg/jivesoftware/smack/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addExtensions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    if-nez p1, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 414
    .local v1, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 415
    .end local v1    # "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 416
    :cond_1
    return-void
.end method

.method protected appendErrorIfExists(Lorg/jivesoftware/smack/util/XmlStringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .param p2, "enclosingNamespace"    # Ljava/lang/String;

    .line 545
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    .line 546
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/StanzaError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 549
    :cond_0
    return-void
.end method

.method public getError()Lorg/jivesoftware/smack/packet/StanzaError;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtensions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/jivesoftware/smack/util/PacketUtil;->extensionElementFrom(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PE::",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TPE;"
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 360
    return-object v0

    .line 362
    :cond_0
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/util/MultiMap;->getFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 366
    .local v3, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    monitor-exit v2

    .line 367
    if-nez v3, :cond_1

    .line 368
    return-object v0

    .line 370
    :cond_1
    return-object v3

    .line 366
    .end local v3    # "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/MultiMap;->values()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExtensions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 327
    const-string v0, "elementName must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 328
    const-string v0, "namespace must not be null or empty"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 329
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/MultiMap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getFrom()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->from:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStanzaId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->to:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/MultiMap;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 447
    .local v2, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-interface {v2}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 450
    .end local v2    # "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    :cond_0
    goto :goto_0

    .line 451
    :cond_1
    monitor-exit v0

    .line 452
    const/4 v0, 0x0

    return v0

    .line 451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 429
    if-nez p1, :cond_0

    .line 430
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/packet/Stanza;->hasExtension(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 432
    :cond_0
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 435
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasStanzaIdSet()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected logCommonAttributes(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_0

    .line 529
    const-string v0, "to="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->to:Lorg/jxmpp/jid/Jid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    const-string v0, "from="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->from:Lorg/jxmpp/jid/Jid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->hasStanzaIdSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const-string v0, "id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    :cond_2
    return-void
.end method

.method public overrideExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 3
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 395
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v0

    .line 400
    :try_start_0
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->removeExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    .line 401
    .local v1, "removedExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 402
    monitor-exit v0

    return-object v1

    .line 403
    .end local v1    # "removedExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 463
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/util/MultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/ExtensionElement;

    monitor-exit v1

    return-object v2

    .line 466
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 4
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 476
    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Stanza;->packetExtensions:Lorg/jivesoftware/smack/util/MultiMap;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/util/MultiMap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 480
    .local v3, "removed":Z
    if-eqz v3, :cond_0

    .line 481
    monitor-exit v1

    return-object p1

    .line 483
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .end local v3    # "removed":Z
    :cond_0
    monitor-exit v1

    .line 484
    const/4 v1, 0x0

    return-object v1

    .line 483
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V
    .locals 1
    .param p1, "xmppErrorBuilder"    # Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 278
    if-nez p1, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setStanza(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 282
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->build()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 283
    return-void
.end method

.method public setError(Lorg/jivesoftware/smack/packet/StanzaError;)V
    .locals 0
    .param p1, "error"    # Lorg/jivesoftware/smack/packet/StanzaError;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Stanza;->error:Lorg/jivesoftware/smack/packet/StanzaError;

    .line 270
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    :try_start_0
    invoke-static {p1}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    nop

    .line 237
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 238
    return-void

    .line 234
    .end local v0    # "jid":Lorg/jxmpp/jid/Jid;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFrom(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "from"    # Lorg/jxmpp/jid/Jid;

    .line 248
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Stanza;->from:Lorg/jxmpp/jid/Jid;

    .line 249
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Stanza;->language:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .param p1, "packetID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Stanza;->setStanzaId(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setStanzaId()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->hasStanzaIdSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lorg/jivesoftware/smack/packet/id/StanzaIdUtil;->newStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setStanzaId(Ljava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setStanzaId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v0, "id must either be null or not the empty String"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Stanza;->id:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    :try_start_0
    invoke-static {p1}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    nop

    .line 194
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 195
    return-void

    .line 191
    .end local v0    # "jid":Lorg/jxmpp/jid/Jid;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTo(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;

    .line 204
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Stanza;->to:Lorg/jxmpp/jid/Jid;

    .line 205
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
