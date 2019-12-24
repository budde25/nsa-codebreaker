.class public final Lorg/jxmpp/jid/impl/DomainpartJid;
.super Lorg/jxmpp/jid/impl/AbstractJid;
.source "DomainpartJid.java"

# interfaces
.implements Lorg/jxmpp/jid/DomainBareJid;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final domain:Lorg/jxmpp/jid/parts/Domainpart;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lorg/jxmpp/jid/parts/Domainpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jxmpp/jid/impl/DomainpartJid;-><init>(Lorg/jxmpp/jid/parts/Domainpart;)V

    .line 42
    return-void
.end method

.method constructor <init>(Lorg/jxmpp/jid/parts/Domainpart;)V
    .locals 1
    .param p1, "domain"    # Lorg/jxmpp/jid/parts/Domainpart;

    .line 44
    invoke-direct {p0}, Lorg/jxmpp/jid/impl/AbstractJid;-><init>()V

    .line 45
    const-string v0, "The Domainpart must not be null"

    invoke-static {p1, v0}, Lorg/jxmpp/jid/impl/DomainpartJid;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/parts/Domainpart;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    .line 46
    return-void
.end method


# virtual methods
.method public asBareJid()Lorg/jxmpp/jid/BareJid;
    .locals 0

    .line 118
    return-object p0
.end method

.method public asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;
    .locals 0

    .line 73
    return-object p0
.end method

.method public asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;
    .locals 1

    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;
    .locals 1

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;
    .locals 1

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public asUnescapedString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/DomainpartJid;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Lorg/jxmpp/jid/parts/Domainpart;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    return-object v0
.end method

.method public getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;
    .locals 1

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNoResource()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 2
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;

    .line 108
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    invoke-interface {p1}, Lorg/jxmpp/jid/DomainBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Domainpart;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/DomainFullJid;)Z
    .locals 2
    .param p1, "domainFullJid"    # Lorg/jxmpp/jid/DomainFullJid;

    .line 113
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    invoke-interface {p1}, Lorg/jxmpp/jid/DomainFullJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Domainpart;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityBareJid;)Z
    .locals 2
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 98
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Domainpart;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isParentOf(Lorg/jxmpp/jid/EntityFullJid;)Z
    .locals 2
    .param p1, "fullJid"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 103
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityFullJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jxmpp/jid/parts/Domainpart;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->cache:Ljava/lang/String;

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->domain:Lorg/jxmpp/jid/parts/Domainpart;

    invoke-virtual {v0}, Lorg/jxmpp/jid/parts/Domainpart;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->cache:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lorg/jxmpp/jid/impl/DomainpartJid;->cache:Ljava/lang/String;

    return-object v0
.end method
