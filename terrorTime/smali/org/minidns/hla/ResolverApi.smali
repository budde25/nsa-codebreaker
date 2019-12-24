.class public Lorg/minidns/hla/ResolverApi;
.super Ljava/lang/Object;
.source "ResolverApi.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/hla/ResolverApi;


# instance fields
.field private final dnsClient:Lorg/minidns/AbstractDnsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    new-instance v0, Lorg/minidns/hla/ResolverApi;

    new-instance v1, Lorg/minidns/iterative/ReliableDnsClient;

    invoke-direct {v1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>()V

    invoke-direct {v0, v1}, Lorg/minidns/hla/ResolverApi;-><init>(Lorg/minidns/AbstractDnsClient;)V

    sput-object v0, Lorg/minidns/hla/ResolverApi;->INSTANCE:Lorg/minidns/hla/ResolverApi;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/AbstractDnsClient;)V
    .locals 0
    .param p1, "dnsClient"    # Lorg/minidns/AbstractDnsClient;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/minidns/hla/ResolverApi;->dnsClient:Lorg/minidns/AbstractDnsClient;

    .line 105
    return-void
.end method


# virtual methods
.method public final getClient()Lorg/minidns/AbstractDnsClient;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/minidns/hla/ResolverApi;->dnsClient:Lorg/minidns/AbstractDnsClient;

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/minidns/hla/ResolverApi;->dnsClient:Lorg/minidns/AbstractDnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0

    .line 120
    .local v0, "dnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    new-instance v1, Lorg/minidns/hla/ResolverResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lorg/minidns/hla/ResolverResult;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;)V

    return-object v1
.end method

.method public final resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-static {p2}, Lorg/minidns/record/Record$TYPE;->getType(Ljava/lang/Class;)Lorg/minidns/record/Record$TYPE;

    move-result-object v0

    .line 113
    .local v0, "t":Lorg/minidns/record/Record$TYPE;
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v1, p1, v0}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 114
    .local v1, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v1}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/hla/ResolverResult;

    move-result-object v2

    return-object v2
.end method

.method public resolveSrv(Ljava/lang/String;)Lorg/minidns/hla/SrvResolverResult;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveSrv(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;
    .locals 2
    .param p1, "service"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p2, "proto"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p3, "name"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/minidns/hla/srv/SrvServiceProto;

    invoke-direct {v0, p1, p2}, Lorg/minidns/hla/srv/SrvServiceProto;-><init>(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;)V

    .line 141
    .local v0, "srvServiceProto":Lorg/minidns/hla/srv/SrvServiceProto;
    invoke-virtual {p0, p3, v0}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v1

    return-object v1
.end method

.method public resolveSrv(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;
    .locals 6
    .param p1, "srvDnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v0

    .line 190
    .local v0, "labelCount":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 194
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Lorg/minidns/dnsname/DnsName;->getLabel(I)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v1

    .line 195
    .local v1, "service":Lorg/minidns/dnslabel/DnsLabel;
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Lorg/minidns/dnsname/DnsName;->getLabel(I)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v2

    .line 196
    .local v2, "proto":Lorg/minidns/dnslabel/DnsLabel;
    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p1, v3}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v3

    .line 198
    .local v3, "name":Lorg/minidns/dnsname/DnsName;
    new-instance v4, Lorg/minidns/hla/srv/SrvServiceProto;

    invoke-direct {v4, v1, v2}, Lorg/minidns/hla/srv/SrvServiceProto;-><init>(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;)V

    .line 200
    .local v4, "srvServiceProto":Lorg/minidns/hla/srv/SrvServiceProto;
    invoke-virtual {p0, v3, v4}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v5

    return-object v5

    .line 191
    .end local v1    # "service":Lorg/minidns/dnslabel/DnsLabel;
    .end local v2    # "proto":Lorg/minidns/dnslabel/DnsLabel;
    .end local v3    # "name":Lorg/minidns/dnsname/DnsName;
    .end local v4    # "srvServiceProto":Lorg/minidns/hla/srv/SrvServiceProto;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public resolveSrv(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;)Lorg/minidns/hla/SrvResolverResult;
    .locals 3
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "srvServiceProto"    # Lorg/minidns/hla/srv/SrvServiceProto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p2, Lorg/minidns/hla/srv/SrvServiceProto;->service:Lorg/minidns/dnslabel/DnsLabel;

    iget-object v1, p2, Lorg/minidns/hla/srv/SrvServiceProto;->proto:Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {v0, v1, p1}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 216
    .local v0, "srvDnsName":Lorg/minidns/dnsname/DnsName;
    const-class v1, Lorg/minidns/record/SRV;

    invoke-virtual {p0, v0, v1}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v1

    .line 218
    .local v1, "result":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/SRV;>;"
    new-instance v2, Lorg/minidns/hla/SrvResolverResult;

    invoke-direct {v2, v1, p2, p0}, Lorg/minidns/hla/SrvResolverResult;-><init>(Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/hla/ResolverApi;)V

    return-object v2
.end method

.method public resolveSrv(Lorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;Ljava/lang/String;)Lorg/minidns/hla/SrvResolverResult;
    .locals 3
    .param p1, "service"    # Lorg/minidns/hla/srv/SrvService;
    .param p2, "proto"    # Lorg/minidns/hla/srv/SrvProto;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p1, Lorg/minidns/hla/srv/SrvService;->dnsLabel:Lorg/minidns/dnslabel/DnsLabel;

    iget-object v1, p2, Lorg/minidns/hla/srv/SrvProto;->dnsLabel:Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {p3}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveSrv(Lorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;
    .locals 2
    .param p1, "service"    # Lorg/minidns/hla/srv/SrvService;
    .param p2, "proto"    # Lorg/minidns/hla/srv/SrvProto;
    .param p3, "name"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p1, Lorg/minidns/hla/srv/SrvService;->dnsLabel:Lorg/minidns/dnslabel/DnsLabel;

    iget-object v1, p2, Lorg/minidns/hla/srv/SrvProto;->dnsLabel:Lorg/minidns/dnslabel/DnsLabel;

    invoke-virtual {p0, v0, v1, p3}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveSrv(Lorg/minidns/hla/srv/SrvType;Ljava/lang/String;)Lorg/minidns/hla/SrvResolverResult;
    .locals 3
    .param p1, "type"    # Lorg/minidns/hla/srv/SrvType;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p1, Lorg/minidns/hla/srv/SrvType;->service:Lorg/minidns/hla/srv/SrvService;

    iget-object v1, p1, Lorg/minidns/hla/srv/SrvType;->proto:Lorg/minidns/hla/srv/SrvProto;

    invoke-static {p2}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveSrv(Lorg/minidns/hla/srv/SrvType;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;
    .locals 2
    .param p1, "type"    # Lorg/minidns/hla/srv/SrvType;
    .param p2, "serviceName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p1, Lorg/minidns/hla/srv/SrvType;->service:Lorg/minidns/hla/srv/SrvService;

    iget-object v1, p1, Lorg/minidns/hla/srv/SrvType;->proto:Lorg/minidns/hla/srv/SrvProto;

    invoke-virtual {p0, v0, v1, p2}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public reverseLookup(Ljava/lang/CharSequence;)Lorg/minidns/hla/ResolverResult;
    .locals 2
    .param p1, "inetAddressCs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/PTR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 150
    .local v0, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/minidns/hla/ResolverApi;->reverseLookup(Ljava/net/InetAddress;)Lorg/minidns/hla/ResolverResult;

    move-result-object v1

    return-object v1
.end method

.method public reverseLookup(Ljava/net/Inet4Address;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "inet4Address"    # Ljava/net/Inet4Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet4Address;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/PTR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lorg/minidns/util/InetAddressUtil;->reverseIpAddressOf(Ljava/net/Inet4Address;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 165
    .local v0, "reversedIpAddress":Lorg/minidns/dnsname/DnsName;
    sget-object v1, Lorg/minidns/dnsname/DnsName;->IN_ADDR_ARPA:Lorg/minidns/dnsname/DnsName;

    invoke-static {v0, v1}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 166
    .local v1, "dnsName":Lorg/minidns/dnsname/DnsName;
    const-class v2, Lorg/minidns/record/PTR;

    invoke-virtual {p0, v1, v2}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v2

    return-object v2
.end method

.method public reverseLookup(Ljava/net/Inet6Address;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "inet6Address"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet6Address;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/PTR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lorg/minidns/util/InetAddressUtil;->reverseIpAddressOf(Ljava/net/Inet6Address;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 171
    .local v0, "reversedIpAddress":Lorg/minidns/dnsname/DnsName;
    sget-object v1, Lorg/minidns/dnsname/DnsName;->IP6_ARPA:Lorg/minidns/dnsname/DnsName;

    invoke-static {v0, v1}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 172
    .local v1, "dnsName":Lorg/minidns/dnsname/DnsName;
    const-class v2, Lorg/minidns/record/PTR;

    invoke-virtual {p0, v1, v2}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v2

    return-object v2
.end method

.method public reverseLookup(Ljava/net/InetAddress;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/PTR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p1

    check-cast v0, Ljava/net/Inet4Address;

    invoke-virtual {p0, v0}, Lorg/minidns/hla/ResolverApi;->reverseLookup(Ljava/net/Inet4Address;)Lorg/minidns/hla/ResolverResult;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/net/Inet6Address;

    invoke-virtual {p0, v0}, Lorg/minidns/hla/ResolverApi;->reverseLookup(Ljava/net/Inet6Address;)Lorg/minidns/hla/ResolverResult;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The given InetAddress \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is neither of type Inet4Address or Inet6Address"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
