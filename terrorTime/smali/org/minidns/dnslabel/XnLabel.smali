.class public abstract Lorg/minidns/dnslabel/XnLabel;
.super Lorg/minidns/dnslabel/ReservedLdhLabel;
.source "XnLabel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/ReservedLdhLabel;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected static fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/LdhLabel;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .line 27
    nop

    .line 29
    invoke-static {p0}, Lorg/minidns/idna/MiniDnsIdna;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "uLabel":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Lorg/minidns/dnslabel/FakeALabel;

    invoke-direct {v1, p0}, Lorg/minidns/dnslabel/FakeALabel;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 34
    :cond_0
    new-instance v1, Lorg/minidns/dnslabel/ALabel;

    invoke-direct {v1, p0}, Lorg/minidns/dnslabel/ALabel;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isXnLabel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 39
    invoke-static {p0}, Lorg/minidns/dnslabel/XnLabel;->isLdhLabel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/XnLabel;->isXnLabelInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isXnLabelInternal(Ljava/lang/String;)Z
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
