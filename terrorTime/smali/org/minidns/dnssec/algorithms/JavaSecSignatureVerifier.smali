.class public abstract Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.super Ljava/lang/Object;
.source "JavaSecSignatureVerifier.java"

# interfaces
.implements Lorg/minidns/dnssec/SignatureVerifier;


# instance fields
.field private final keyFactory:Ljava/security/KeyFactory;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "signatureAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->keyFactory:Ljava/security/KeyFactory;

    .line 33
    iput-object p2, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->signatureAlgorithm:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 37
    return-void
.end method


# virtual methods
.method public getKeyFactory()Ljava/security/KeyFactory;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->keyFactory:Ljava/security/KeyFactory;

    return-object v0
.end method

.method protected abstract getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;,
            Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;
        }
    .end annotation
.end method

.method protected abstract getSignature(Lorg/minidns/record/RRSIG;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;
        }
    .end annotation
.end method

.method public verify([BLorg/minidns/record/RRSIG;Lorg/minidns/record/DNSKEY;)Z
    .locals 3
    .param p1, "content"    # [B
    .param p2, "rrsig"    # Lorg/minidns/record/RRSIG;
    .param p3, "key"    # Lorg/minidns/record/DNSKEY;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;

    move-result-object v0

    .line 47
    .local v0, "publicKey":Ljava/security/PublicKey;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 48
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 49
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->getSignature(Lorg/minidns/record/RRSIG;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 54
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/minidns/dnssec/DnssecValidationFailedException;

    const-string v2, "Validating signature failed"

    invoke-direct {v1, v2, v0}, Lorg/minidns/dnssec/DnssecValidationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 53
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
