.class public abstract Lorg/jivesoftware/smack/util/dns/DNSResolver;
.super Ljava/lang/Object;
.source "DNSResolver.java"


# static fields
.field protected static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final supportsDnssec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/jivesoftware/smack/util/dns/DNSResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/dns/DNSResolver;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "supportsDnssec"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lorg/jivesoftware/smack/util/dns/DNSResolver;->supportsDnssec:Z

    .line 42
    return-void
.end method

.method private checkIfDnssecRequestedAndSupported(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)V
    .locals 2
    .param p1, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    .line 116
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/dns/DNSResolver;->supportsDnssec:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This resolver does not support DNSSEC"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final lookupHostAddress(Lorg/minidns/dnsname/DnsName;ILjava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/jivesoftware/smack/util/dns/HostAddress;
    .locals 2
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "port"    # I
    .param p4, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "I",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;"
        }
    .end annotation

    .line 59
    .local p3, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-direct {p0, p4}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->checkIfDnssecRequestedAndSupported(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)V

    .line 60
    invoke-virtual {p0, p1, p3, p4}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupHostAddress0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v1, p1, p2, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;ILjava/util/List;)V

    return-object v1

    .line 62
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected lookupHostAddress0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 84
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    if-ne p3, v0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .local v0, "inetAddressArray":[Ljava/net/InetAddress;
    nop

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 91
    .end local v0    # "inetAddressArray":[Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v1, p1, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v1, 0x0

    return-object v1

    .line 85
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This resolver does not support DNSSEC"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final lookupSRVRecords(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;"
        }
    .end annotation

    .line 52
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->checkIfDnssecRequestedAndSupported(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupSRVRecords0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract lookupSRVRecords0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;"
        }
    .end annotation
.end method

.method protected final shouldContinue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "hostname"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)Z"
        }
    .end annotation

    .line 100
    .local p3, "hostAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 101
    return v0

    .line 106
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lorg/jivesoftware/smack/util/dns/DNSResolver;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The DNS name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", points to a hostname ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") which has neither A or AAAA resource records. This is an indication of a broken DNS setup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 109
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
