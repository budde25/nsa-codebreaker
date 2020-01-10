.class public abstract Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.super Ljava/lang/Object;
.source "AbstractDnsServerLookupMechanism.java"

# interfaces
.implements Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;


# static fields
.field protected static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    .line 28
    iput p2, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->priority:I

    .line 29
    return-void
.end method

.method protected static toListOfStrings(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "inetAddresses":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/net/InetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 52
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "address":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "address":Ljava/lang/String;
    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    invoke-virtual {p0, p1}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->compareTo(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)I
    .locals 2
    .param p1, "other"    # Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    .line 43
    invoke-virtual {p0}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract getDnsServerAddresses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;->priority:I

    return v0
.end method
