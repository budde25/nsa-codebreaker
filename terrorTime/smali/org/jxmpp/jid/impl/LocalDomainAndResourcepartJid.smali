.class public final Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;
.super Lorg/jxmpp/jid/impl/AbstractJid;
.source "LocalDomainAndResourcepartJid.java"

# interfaces
.implements Lorg/jxmpp/jid/EntityFullJid;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bareJid:Lorg/jxmpp/jid/EntityBareJid;

.field private final resource:Lorg/jxmpp/jid/parts/Resourcepart;

.field private unescapedCache:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "localpart"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;

    invoke-direct {v0, p1, p2}, Lorg/jxmpp/jid/impl/LocalAndDomainpartJid;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;-><init>(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 1
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 47
    invoke-direct {p0}, Lorg/jxmpp/jid/impl/AbstractJid;-><init>()V

    .line 48
    const-string v0, "The EntityBareJid must not be null"

    invoke-static {p1, v0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/EntityBareJid;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    .line 49
    const-string v0, "The Resourcepart must not be null"

    invoke-static {p2, v0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/parts/Resourcepart;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 50
    return-void
.end method


# virtual methods
.method public asBareJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;
    .locals 1

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public asEntityBareJidString()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;
    .locals 0

    .line 92
    return-object p0
.end method

.method public asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;
    .locals 0

    .line 157
    return-object p0
.end method

.method public asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;
    .locals 0

    .line 162
    return-object p0
.end method

.method public asUnescapedString()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->unescapedCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityBareJid;->asUnescapedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->unescapedCache:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->unescapedCache:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Lorg/jxmpp/jid/parts/Domainpart;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    return-object v0
.end method

.method public getLocalpart()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    return-object v0
.end method

.method public getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->getLocalpart()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    return-object v0
.end method

.method public getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    return-object v0
.end method

.method public getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public hasNoResource()Z
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 1
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainFullJid;)Z
    .locals 1
    .param p1, "domainFullJid"    # Lorg/jxmpp/jid/DomainFullJid;

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityBareJid;)Z
    .locals 1
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityFullJid;)Z
    .locals 1
    .param p1, "fullJid"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 117
    invoke-virtual {p0, p1}, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->cache:Ljava/lang/String;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->bareJid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->cache:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/jxmpp/jid/impl/LocalDomainAndResourcepartJid;->cache:Ljava/lang/String;

    return-object v0
.end method
