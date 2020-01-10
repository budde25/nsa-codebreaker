.class public Lorg/minidns/cache/FullLruCache;
.super Lorg/minidns/cache/ExtendedLruCache;
.source "FullLruCache.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/minidns/cache/FullLruCache;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 28
    invoke-direct {p0, p1}, Lorg/minidns/cache/ExtendedLruCache;-><init>(I)V

    .line 29
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "maxTTL"    # J

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/cache/ExtendedLruCache;-><init>(IJ)V

    .line 33
    return-void
.end method


# virtual methods
.method protected shouldGather(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsname/DnsName;)Z
    .locals 1
    .param p2, "question"    # Lorg/minidns/dnsmessage/Question;
    .param p3, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/dnsname/DnsName;",
            ")Z"
        }
    .end annotation

    .line 37
    .local p1, "extraRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    const/4 v0, 0x1

    return v0
.end method
