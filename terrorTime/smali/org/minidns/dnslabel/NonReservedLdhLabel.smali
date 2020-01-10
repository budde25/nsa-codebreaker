.class public final Lorg/minidns/dnslabel/NonReservedLdhLabel;
.super Lorg/minidns/dnslabel/LdhLabel;
.source "NonReservedLdhLabel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/LdhLabel;-><init>(Ljava/lang/String;)V

    .line 21
    nop

    .line 22
    return-void
.end method

.method public static isNonReservedLdhLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lorg/minidns/dnslabel/NonReservedLdhLabel;->isLdhLabel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/NonReservedLdhLabel;->isNonReservedLdhLabelInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isNonReservedLdhLabelInternal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lorg/minidns/dnslabel/ReservedLdhLabel;->isReservedLdhLabelInternal(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
