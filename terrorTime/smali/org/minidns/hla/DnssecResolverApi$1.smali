.class Lorg/minidns/hla/DnssecResolverApi$1;
.super Ljava/lang/Object;
.source "DnssecResolverApi.java"

# interfaces
.implements Lorg/minidns/cache/MiniDnsCacheFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/hla/DnssecResolverApi;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCache()Lorg/minidns/DnsCache;
    .locals 1

    .line 41
    new-instance v0, Lorg/minidns/cache/LruCache;

    invoke-direct {v0}, Lorg/minidns/cache/LruCache;-><init>()V

    return-object v0
.end method
