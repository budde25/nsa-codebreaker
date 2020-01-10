.class public abstract Lorg/minidns/dane/DaneCertificateException;
.super Ljava/security/cert/CertificateException;
.source "DaneCertificateException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dane/DaneCertificateException$MultipleCertificateMismatchExceptions;,
        Lorg/minidns/dane/DaneCertificateException$CertificateMismatch;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 27
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
