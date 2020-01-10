.class Lorg/minidns/AbstractDnsClient$1;
.super Ljava/lang/Object;
.source "AbstractDnsClient.java"

# interfaces
.implements Lorg/minidns/source/DnsDataSource$OnResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/AbstractDnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/minidns/AbstractDnsClient;


# direct methods
.method constructor <init>(Lorg/minidns/AbstractDnsClient;)V
    .locals 0
    .param p1, "this$0"    # Lorg/minidns/AbstractDnsClient;

    .line 54
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient$1;->this$0:Lorg/minidns/AbstractDnsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 3
    .param p1, "requestMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "responseMessage"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 57
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v0

    .line 58
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient$1;->this$0:Lorg/minidns/AbstractDnsClient;

    iget-object v1, v1, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/minidns/AbstractDnsClient$1;->this$0:Lorg/minidns/AbstractDnsClient;

    invoke-virtual {v1, v0, p2}, Lorg/minidns/AbstractDnsClient;->isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient$1;->this$0:Lorg/minidns/AbstractDnsClient;

    iget-object v1, v1, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->asNormalizedVersion()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/minidns/DnsCache;->put(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 61
    :cond_0
    return-void
.end method
