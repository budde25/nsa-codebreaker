.class public final Lorg/minidns/dnslabel/LeadingOrTrailingHyphenLabel;
.super Lorg/minidns/dnslabel/NonLdhLabel;
.source "LeadingOrTrailingHyphenLabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/NonLdhLabel;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected static isLeadingOrTrailingHypenLabelInternal(Ljava/lang/String;)Z
    .locals 4
    .param p0, "label"    # Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 24
    return v1

    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 28
    return v3

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    .line 32
    return v3

    .line 35
    :cond_2
    return v1
.end method
