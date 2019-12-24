.class public Lorg/jivesoftware/smack/util/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"


# static fields
.field private static SHA1_DIGEST:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/SHA1;->SHA1_DIGEST:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    nop

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 46
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/SHA1;->bytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized bytes([B)[B
    .locals 2
    .param p0, "bytes"    # [B

    const-class v0, Lorg/jivesoftware/smack/util/SHA1;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/util/SHA1;->SHA1_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    sget-object v1, Lorg/jivesoftware/smack/util/SHA1;->SHA1_DIGEST:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    .end local p0    # "bytes":[B
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->toUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/SHA1;->hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hex([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 50
    invoke-static {p0}, Lorg/jivesoftware/smack/util/SHA1;->bytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
