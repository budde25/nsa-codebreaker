.class Lorg/minidns/DnsClient$2;
.super Ljava/lang/Object;
.source "DnsClient.java"

# interfaces
.implements Lorg/minidns/util/ExceptionCallback;


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
        "Lorg/minidns/util/ExceptionCallback<",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/minidns/DnsClient;

.field final synthetic val$dnsServerAddresses:Ljava/util/List;

.field final synthetic val$exceptions:Ljava/util/List;

.field final synthetic val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;


# direct methods
.method constructor <init>(Lorg/minidns/DnsClient;Ljava/util/List;Ljava/util/List;Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/minidns/DnsClient;

    .line 251
    iput-object p1, p0, Lorg/minidns/DnsClient$2;->this$0:Lorg/minidns/DnsClient;

    iput-object p2, p0, Lorg/minidns/DnsClient$2;->val$exceptions:Ljava/util/List;

    iput-object p3, p0, Lorg/minidns/DnsClient$2;->val$dnsServerAddresses:Ljava/util/List;

    iput-object p4, p0, Lorg/minidns/DnsClient$2;->val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "exception"    # Ljava/io/IOException;

    .line 254
    iget-object v0, p0, Lorg/minidns/DnsClient$2;->val$exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lorg/minidns/DnsClient$2;->val$exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/minidns/DnsClient$2;->val$dnsServerAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lorg/minidns/DnsClient$2;->val$future:Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    iget-object v1, p0, Lorg/minidns/DnsClient$2;->val$exceptions:Ljava/util/List;

    invoke-static {v1}, Lorg/minidns/util/MultipleIoException;->toIOException(Ljava/util/List;)Ljava/io/IOException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setException(Ljava/lang/Exception;)V

    .line 258
    :cond_0
    return-void
.end method

.method public bridge synthetic processException(Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lorg/minidns/DnsClient$2;->processException(Ljava/io/IOException;)V

    return-void
.end method
