.class public final Lorg/minidns/dnslabel/ALabel;
.super Lorg/minidns/dnslabel/XnLabel;
.source "ALabel.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lorg/minidns/dnslabel/XnLabel;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getInternationalizedRepresentationInternal()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/minidns/dnslabel/ALabel;->label:Ljava/lang/String;

    invoke-static {v0}, Lorg/minidns/idna/MiniDnsIdna;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
