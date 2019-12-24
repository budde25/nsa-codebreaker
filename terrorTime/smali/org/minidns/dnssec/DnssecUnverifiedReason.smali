.class public abstract Lorg/minidns/dnssec/DnssecUnverifiedReason;
.super Ljava/lang/Object;
.source "DnssecUnverifiedReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NoActiveSignaturesReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSignaturesReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NoRootSecureEntryPointReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NoSecureEntryPointReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;,
        Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p1, Lorg/minidns/dnssec/DnssecUnverifiedReason;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/minidns/dnssec/DnssecUnverifiedReason;

    invoke-virtual {v0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;->getReasonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;->getReasonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getReasonString()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;->getReasonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/minidns/dnssec/DnssecUnverifiedReason;->getReasonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
