.class public abstract Lorg/minidns/dnslabel/LdhLabel;
.super Lorg/minidns/dnslabel/DnsLabel;
.source "LdhLabel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/DnsLabel;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method protected static fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/LdhLabel;
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 48
    nop

    .line 50
    invoke-static {p0}, Lorg/minidns/dnslabel/ReservedLdhLabel;->isReservedLdhLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p0}, Lorg/minidns/dnslabel/XnLabel;->isXnLabelInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0}, Lorg/minidns/dnslabel/XnLabel;->fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/LdhLabel;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lorg/minidns/dnslabel/ReservedLdhLabel;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/ReservedLdhLabel;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/NonReservedLdhLabel;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/NonReservedLdhLabel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isLdhLabel(Ljava/lang/String;)Z
    .locals 4
    .param p0, "label"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    return v1

    .line 30
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/LeadingOrTrailingHyphenLabel;->isLeadingOrTrailingHypenLabelInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    return v1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 36
    .local v2, "c":C
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-le v2, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    .line 40
    nop

    .line 34
    .end local v2    # "c":C
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .restart local v2    # "c":C
    :cond_6
    return v1

    .line 44
    .end local v0    # "i":I
    .end local v2    # "c":C
    :cond_7
    const/4 v0, 0x1

    return v0
.end method
