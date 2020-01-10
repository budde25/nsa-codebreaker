.class public interface abstract Lorg/jivesoftware/smack/sasl/core/ScramHmac;
.super Ljava/lang/Object;
.source "ScramHmac.java"


# virtual methods
.method public abstract getHmacName()Ljava/lang/String;
.end method

.method public abstract hmac([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
