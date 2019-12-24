.class Lorg/minidns/DnsClient$1;
.super Ljava/lang/Object;
.source "DnsClient.java"

# interfaces
.implements Lorg/minidns/util/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/DnsClient;->queryAsync(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/MiniDnsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/minidns/util/SuccessCallback<",
        "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/minidns/DnsClient;

.field final synthetic val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;


# direct methods
.method constructor <init>(Lorg/minidns/DnsClient;Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/minidns/DnsClient;

    .line 245
    iput-object p1, p0, Lorg/minidns/DnsClient$1;->this$0:Lorg/minidns/DnsClient;

    iput-object p2, p0, Lorg/minidns/DnsClient$1;->val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p1, Lorg/minidns/dnsqueryresult/DnsQueryResult;

    invoke-virtual {p0, p1}, Lorg/minidns/DnsClient$1;->onSuccess(Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    return-void
.end method

.method public onSuccess(Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 1
    .param p1, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 248
    iget-object v0, p0, Lorg/minidns/DnsClient$1;->val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-virtual {v0, p1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setResult(Ljava/lang/Object;)V

    .line 249
    return-void
.end method
