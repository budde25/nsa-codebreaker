.class public Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;
.super Lorg/minidns/dnssec/DnssecValidationFailedException;
.source "DnssecValidationFailedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnssec/DnssecValidationFailedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnssecInvalidKeySpecException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/InvalidKeySpecException;[B)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/security/spec/InvalidKeySpecException;
    .param p3, "data"    # [B

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/InvalidKeySpecException;)V
    .locals 1
    .param p1, "exception"    # Ljava/security/spec/InvalidKeySpecException;

    .line 77
    const-string v0, "Invalid key spec"

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
