.class public Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;
.super Ljava/lang/Object;
.source "JavaSecDigestCalculator.java"

# interfaces
.implements Lorg/minidns/dnssec/DigestCalculator;


# instance fields
.field private md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;->md:Ljava/security/MessageDigest;

    .line 23
    return-void
.end method


# virtual methods
.method public digest([B)[B
    .locals 1
    .param p1, "bytes"    # [B

    .line 27
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method
