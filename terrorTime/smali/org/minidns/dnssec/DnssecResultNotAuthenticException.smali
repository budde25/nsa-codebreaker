.class public Lorg/minidns/dnssec/DnssecResultNotAuthenticException;
.super Lorg/minidns/MiniDnsException;
.source "DnssecResultNotAuthenticException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final unverifiedReasons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p2, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    invoke-direct {p0, p1}, Lorg/minidns/MiniDnsException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;->unverifiedReasons:Ljava/util/Set;

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static from(Ljava/util/Set;)Lorg/minidns/dnssec/DnssecResultNotAuthenticException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;)",
            "Lorg/minidns/dnssec/DnssecResultNotAuthenticException;"
        }
    .end annotation

    .line 36
    .local p0, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DNSSEC result not authentic. Reasons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/dnssec/DnssecUnverifiedReason;

    .line 39
    .local v2, "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .end local v2    # "reason":Lorg/minidns/dnssec/DnssecUnverifiedReason;
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public getUnverifiedReasons()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/minidns/dnssec/DnssecUnverifiedReason;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/minidns/dnssec/DnssecResultNotAuthenticException;->unverifiedReasons:Ljava/util/Set;

    return-object v0
.end method
