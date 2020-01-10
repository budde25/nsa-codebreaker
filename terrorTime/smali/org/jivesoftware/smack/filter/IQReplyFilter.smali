.class public Lorg/jivesoftware/smack/filter/IQReplyFilter;
.super Ljava/lang/Object;
.source "IQReplyFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

.field private final iqAndIdFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final local:Lorg/jxmpp/jid/EntityFullJid;

.field private final packetId:Ljava/lang/String;

.field private final server:Lorg/jxmpp/jid/DomainBareJid;

.field private final to:Lorg/jxmpp/jid/Jid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 6
    .param p1, "iqPacket"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p2, "conn"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->isRequestIQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->to:Lorg/jxmpp/jid/Jid;

    .line 91
    invoke-interface {p2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->local:Lorg/jxmpp/jid/EntityFullJid;

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->local:Lorg/jxmpp/jid/EntityFullJid;

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {p2}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->server:Lorg/jxmpp/jid/DomainBareJid;

    .line 97
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->packetId:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;->RESULT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 100
    .local v0, "iqFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    new-instance v2, Lorg/jivesoftware/smack/filter/StanzaIdFilter;

    invoke-direct {v2, p1}, Lorg/jivesoftware/smack/filter/StanzaIdFilter;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 101
    .local v2, "idFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    new-instance v3, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-direct {v3, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    iput-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->iqAndIdFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 102
    new-instance v1, Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-direct {v1}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>()V

    iput-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    .line 103
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->to:Lorg/jxmpp/jid/Jid;

    invoke-static {v3}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 104
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->to:Lorg/jxmpp/jid/Jid;

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->local:Lorg/jxmpp/jid/EntityFullJid;

    invoke-static {v3}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createBare(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 106
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->server:Lorg/jxmpp/jid/DomainBareJid;

    invoke-static {v3}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->local:Lorg/jxmpp/jid/EntityFullJid;

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createFull(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/filter/OrFilter;->addFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 93
    .end local v0    # "iqFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local v2    # "idFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a local (user) JID set. Either you didn\'t configure one or you where not connected at least once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IQ must be a request IQ, i.e. of type \'get\' or \'set\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->iqAndIdFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/filter/OrFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 121
    return v2

    .line 123
    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->packetId:Ljava/lang/String;

    aput-object v3, v0, v1

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->to:Lorg/jxmpp/jid/Jid;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->local:Lorg/jxmpp/jid/EntityFullJid;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->server:Lorg/jxmpp/jid/DomainBareJid;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 125
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    aput-object v3, v0, v2

    .line 123
    const-string v2, "Rejected potentially spoofed reply to IQ-packet. Filter settings: packetId=%s, to=%s, local=%s, server=%s. Received packet with from=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "msg":Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smack/filter/IQReplyFilter;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ": iqAndIdFilter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->iqAndIdFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ": fromFilter ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/filter/IQReplyFilter;->fromFilter:Lorg/jivesoftware/smack/filter/OrFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/filter/OrFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
