.class Lorg/minidns/cache/LruCache$1;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/cache/LruCache;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/minidns/dnsmessage/DnsMessage;",
        "Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/minidns/cache/LruCache;

.field final synthetic val$capacity:I


# direct methods
.method constructor <init>(Lorg/minidns/cache/LruCache;IFZI)V
    .locals 0
    .param p1, "this$0"    # Lorg/minidns/cache/LruCache;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .line 69
    iput-object p1, p0, Lorg/minidns/cache/LruCache$1;->this$0:Lorg/minidns/cache/LruCache;

    iput p5, p0, Lorg/minidns/cache/LruCache$1;->val$capacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;>;"
    invoke-virtual {p0}, Lorg/minidns/cache/LruCache$1;->size()I

    move-result v0

    iget v1, p0, Lorg/minidns/cache/LruCache$1;->val$capacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
