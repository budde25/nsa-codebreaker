.class public Lorg/jivesoftware/smack/util/NumberUtil;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfInUInt32Range(J)V
    .locals 2
    .param p0, "value"    # J

    .line 27
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 30
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsigned 32-bit integers can\'t be greater then 2^32 - 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsigned 32-bit integers can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
