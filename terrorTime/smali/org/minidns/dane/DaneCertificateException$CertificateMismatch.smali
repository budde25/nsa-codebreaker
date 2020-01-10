.class public Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;
.super Lorg/minidns/dane/DaneCertificateException;
.source "DaneCertificateException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dane/DaneCertificateException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateMismatch"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final computed:[B

.field public final tlsa:Lorg/minidns/record/TLSA;


# direct methods
.method public constructor <init>(Lorg/minidns/record/TLSA;[B)V
    .locals 1
    .param p1, "tlsa"    # Lorg/minidns/record/TLSA;
    .param p2, "computed"    # [B

    .line 44
    const-string v0, "The TLSA RR does not match the certificate"

    invoke-direct {p0, v0}, Lorg/minidns/dane/DaneCertificateException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;->tlsa:Lorg/minidns/record/TLSA;

    .line 46
    iput-object p2, p0, Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;->computed:[B

    .line 47
    return-void
.end method
