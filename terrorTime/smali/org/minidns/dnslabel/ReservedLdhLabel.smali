.class public Lorg/minidns/dnslabel/ReservedLdhLabel;
.super Lorg/minidns/dnslabel/LdhLabel;
.source "ReservedLdhLabel.java"


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

.method public static isReservedLdhLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lorg/minidns/dnslabel/ReservedLdhLabel;->isLdhLabel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/ReservedLdhLabel;->isReservedLdhLabelInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isReservedLdhLabelInternal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method
