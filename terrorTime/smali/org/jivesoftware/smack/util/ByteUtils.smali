.class public Lorg/jivesoftware/smack/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concact([B[B)[B
    .locals 1
    .param p0, "arrayOne"    # [B
    .param p1, "arrayTwo"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 28
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ByteUtils;->concat([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static concat([B[B)[B
    .locals 5
    .param p0, "arrayOne"    # [B
    .param p1, "arrayTwo"    # [B

    .line 32
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 33
    .local v0, "combinedLength":I
    new-array v1, v0, [B

    .line 34
    .local v1, "res":[B
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-object v1
.end method
