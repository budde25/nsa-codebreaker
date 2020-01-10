.class public abstract Lorg/minidns/dnslabel/NonLdhLabel;
.super Lorg/minidns/dnslabel/DnsLabel;
.source "NonLdhLabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/DnsLabel;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method protected static fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;
    .locals 1
    .param p0, "label"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lorg/minidns/dnslabel/UnderscoreLabel;->isUnderscoreLabelInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lorg/minidns/dnslabel/UnderscoreLabel;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/UnderscoreLabel;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/LeadingOrTrailingHyphenLabel;->isLeadingOrTrailingHypenLabelInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lorg/minidns/dnslabel/LeadingOrTrailingHyphenLabel;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/LeadingOrTrailingHyphenLabel;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/OtherNonLdhLabel;

    invoke-direct {v0, p0}, Lorg/minidns/dnslabel/OtherNonLdhLabel;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
