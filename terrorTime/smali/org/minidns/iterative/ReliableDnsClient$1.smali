.class Lorg/minidns/iterative/ReliableDnsClient$1;
.super Lorg/minidns/iterative/IterativeDnsClient;
.source "ReliableDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/DnsCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/minidns/iterative/ReliableDnsClient;


# direct methods
.method constructor <init>(Lorg/minidns/iterative/ReliableDnsClient;Lorg/minidns/DnsCache;)V
    .locals 0
    .param p1, "this$0"    # Lorg/minidns/iterative/ReliableDnsClient;
    .param p2, "cache"    # Lorg/minidns/DnsCache;

    .line 58
    iput-object p1, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-direct {p0, p2}, Lorg/minidns/iterative/IterativeDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    return-void
.end method


# virtual methods
.method protected isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "dnsMessage"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 67
    invoke-super {p0, p1, p2}, Lorg/minidns/iterative/IterativeDnsClient;->isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z

    move-result v0

    .line 68
    .local v0, "res":Z
    iget-object v1, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-virtual {v1, p1, p2}, Lorg/minidns/iterative/ReliableDnsClient;->isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 1
    .param p1, "questionMessage"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 61
    invoke-super {p0, p1}, Lorg/minidns/iterative/IterativeDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lorg/minidns/iterative/ReliableDnsClient$1;->this$0:Lorg/minidns/iterative/ReliableDnsClient;

    invoke-virtual {v0, p1}, Lorg/minidns/iterative/ReliableDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    return-object v0
.end method
