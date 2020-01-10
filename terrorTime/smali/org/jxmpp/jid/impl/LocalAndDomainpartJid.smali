.class public final Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;
.super Lorg/jxmpp/jid/impl/AbstractJid;
.source "LocalAndDomainpartJid.java"

# interfaces
.implements Lorg/jxmpp/jid/EntityBareJid;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

.field private final localpart:Lorg/jxmpp/jid/parts/Localpart;

.field private transient unescapedCache:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localpart"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lorg/jxmpp/jid/impl/AbstractJid;-><init>()V

    .line 45
    new-instance v0, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v0, p2}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    .line 46
    invoke-static {p1}, Lorg/jxmpp/jid/parts/Localpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->localpart:Lorg/jxmpp/jid/parts/Localpart;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/jxmpp/jid/parts/Localpart;Lorg/jxmpp/jid/parts/Domainpart;)V
    .locals 1
    .param p1, "localpart"    # Lorg/jxmpp/jid/parts/Localpart;
    .param p2, "domain"    # Lorg/jxmpp/jid/parts/Domainpart;

    .line 49
    invoke-direct {p0}, Lorg/jxmpp/jid/impl/AbstractJid;-><init>()V

    .line 50
    const-string v0, "The Localpart must not be null"

    invoke-static {p1, v0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/parts/Localpart;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->localpart:Lorg/jxmpp/jid/parts/Localpart;

    .line 51
    new-instance v0, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v0, p2}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Domainpart;)V

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    .line 52
    return-void
.end method


# virtual methods
.method public asBareJid()Lorg/jxmpp/jid/BareJid;
    .locals 0

    .line 124
    return-object p0
.end method

.method public asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    return-object v0
.end method

.method public asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;
    .locals 1

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;
    .locals 0

    .line 144
    return-object p0
.end method

.method public asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;
    .locals 0

    .line 79
    return-object p0
.end method

.method public asEntityBareJidString()Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;
    .locals 0

    .line 134
    return-object p0
.end method

.method public asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public asUnescapedString()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->unescapedCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jxmpp/jid/parts/Localpart;->asUnescapedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->unescapedCache:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->unescapedCache:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Lorg/jxmpp/jid/parts/Domainpart;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    return-object v0
.end method

.method public getLocalpart()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->localpart:Lorg/jxmpp/jid/parts/Localpart;

    return-object v0
.end method

.method public getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    return-object v0
.end method

.method public getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNoResource()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 1
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainFullJid;)Z
    .locals 1
    .param p1, "domainFullJid"    # Lorg/jxmpp/jid/DomainFullJid;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityBareJid;)Z
    .locals 2
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 94
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/DomainBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->localpart:Lorg/jxmpp/jid/parts/Localpart;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityBareJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Localpart;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityFullJid;)Z
    .locals 1
    .param p1, "fullJid"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 99
    invoke-interface {p1}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->isParentOf(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->cache:Ljava/lang/String;

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->cache:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;->cache:Ljava/lang/String;

    return-object v0
.end method
