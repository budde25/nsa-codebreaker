.class public Lorg/minidns/iterative/ReliableDnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "ReliableDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/ReliableDnsClient$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dnsClient:Lorg/minidns/DnsClient;

.field private mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

.field private final recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    sget-object v0, Lorg/minidns/iterative/ReliableDnsClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    invoke-direct {p0, v0}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/minidns/DnsCache;)V
    .locals 1
    .param p1, "dnsCache"    # Lorg/minidns/DnsCache;

    .line 57
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 54
    sget-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveWithIterativeFallback:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 58
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$1;

    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$1;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/DnsCache;)V

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

    .line 71
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$2;

    invoke-direct {v0, p0, p1}, Lorg/minidns/iterative/ReliableDnsClient$2;-><init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/DnsCache;)V

    iput-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/DnsClient;

    .line 84
    return-void
.end method


# virtual methods
.method protected isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z
    .locals 1
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 152
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {p0, v0}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "questionMessage"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 147
    return-object p1
.end method

.method protected query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 7
    .param p1, "q"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "dnsMessage":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    const/4 v1, 0x0

    .line 94
    .local v1, "unacceptableReason":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v2, "ioExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    iget-object v3, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v4, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    if-eq v3, v4, :cond_1

    .line 99
    :try_start_0
    iget-object v3, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/DnsClient;

    invoke-virtual {v3, p1}, Lorg/minidns/DnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v3

    move-object v0, v3

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v3, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {p0, v3}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 102
    if-nez v1, :cond_0

    .line 103
    return-object v0

    .line 108
    :cond_0
    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "ioException":Ljava/io/IOException;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "ioException":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v4, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    if-ne v3, v4, :cond_2

    return-object v0

    .line 115
    :cond_2
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 116
    .local v3, "FALLBACK_LOG_LEVEL":Ljava/util/logging/Level;
    sget-object v4, Lorg/minidns/iterative/ReliableDnsClient;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v5, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    if-eq v4, v5, :cond_6

    .line 117
    const-string v4, "Resolution fall back to iterative mode because: "

    .line 118
    .local v4, "logString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 120
    :cond_3
    if-nez v0, :cond_4

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " DnsClient did not return a response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 122
    :cond_4
    if-eqz v1, :cond_5

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Response:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :goto_1
    sget-object v5, Lorg/minidns/iterative/ReliableDnsClient;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v5, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_5
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "This should never been reached"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 131
    .end local v4    # "logString":Ljava/lang/String;
    :cond_6
    :goto_2
    :try_start_1
    iget-object v4, p0, Lorg/minidns/iterative/ReliableDnsClient;->recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

    invoke-virtual {v4, p1}, Lorg/minidns/iterative/IterativeDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 132
    nop

    .line 135
    goto :goto_3

    .line 133
    :catch_1
    move-exception v4

    .line 134
    .local v4, "ioException":Ljava/io/IOException;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v4    # "ioException":Ljava/io/IOException;
    :goto_3
    if-nez v0, :cond_7

    .line 138
    nop

    .line 139
    invoke-static {v2}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    .line 142
    :cond_7
    return-object v0
.end method

.method public setDataSource(Lorg/minidns/source/DnsDataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lorg/minidns/source/DnsDataSource;

    .line 169
    invoke-super {p0, p1}, Lorg/minidns/AbstractDnsClient;->setDataSource(Lorg/minidns/source/DnsDataSource;)V

    .line 170
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->recursiveDnsClient:Lorg/minidns/iterative/IterativeDnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/iterative/IterativeDnsClient;->setDataSource(Lorg/minidns/source/DnsDataSource;)V

    .line 171
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/DnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/DnsClient;->setDataSource(Lorg/minidns/source/DnsDataSource;)V

    .line 172
    return-void
.end method

.method public setMode(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V
    .locals 2
    .param p1, "mode"    # Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 180
    if-eqz p1, :cond_0

    .line 183
    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient;->mode:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 184
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mode must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseHardcodedDnsServers(Z)V
    .locals 1
    .param p1, "useHardcodedDnsServers"    # Z

    .line 187
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient;->dnsClient:Lorg/minidns/DnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/DnsClient;->setUseHardcodedDnsServers(Z)V

    .line 188
    return-void
.end method
