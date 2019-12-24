.class public final Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;
.super Lorg/jxmpp/jid/impl/AbstractJid;
.source "DomainAndResourcepartJid.java"

# interfaces
.implements Lorg/jxmpp/jid/DomainFullJid;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

.field private final resource:Lorg/jxmpp/jid/parts/Resourcepart;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/jxmpp/jid/impl/DomainpartJid;

    invoke-direct {v0, p1}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 1
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 53
    invoke-direct {p0}, Lorg/jxmpp/jid/impl/AbstractJid;-><init>()V

    .line 54
    const-string v0, "The DomainBareJid must not be null"

    invoke-static {p1, v0}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/DomainBareJid;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    .line 55
    const-string v0, "The Resource must not be null"

    invoke-static {p2, v0}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/parts/Resourcepart;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 56
    return-void
.end method


# virtual methods
.method public asBareJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    return-object v0
.end method

.method public asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;
    .locals 0

    .line 89
    return-object p0
.end method

.method public asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;
    .locals 0

    .line 144
    return-object p0
.end method

.method public asUnescapedString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lorg/jxmpp/jid/parts/Domainpart;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-interface {v0}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    return-object v0
.end method

.method public getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    return-object v0
.end method

.method public getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public hasNoResource()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 1
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainFullJid;)Z
    .locals 2
    .param p1, "domainFullJid"    # Lorg/jxmpp/jid/DomainFullJid;

    .line 114
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-interface {p1}, Lorg/jxmpp/jid/DomainFullJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/DomainBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-interface {p1}, Lorg/jxmpp/jid/DomainFullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Resourcepart;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityBareJid;)Z
    .locals 1
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityFullJid;)Z
    .locals 1
    .param p1, "fullJid"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->cache:Ljava/lang/String;

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->domainBareJid:Lorg/jxmpp/jid/DomainBareJid;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->cache:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainAndResourcepartJid;->cache:Ljava/lang/String;

    return-object v0
.end method
