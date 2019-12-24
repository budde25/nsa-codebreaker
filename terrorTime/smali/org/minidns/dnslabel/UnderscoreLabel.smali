.class public final Lorg/minidns/dnslabel/UnderscoreLabel;
.super Lorg/minidns/dnslabel/NonLdhLabel;
.source "UnderscoreLabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/NonLdhLabel;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected static isUnderscoreLabelInternal(Ljava/lang/String;)Z
    .locals 3
    .param p0, "label"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
