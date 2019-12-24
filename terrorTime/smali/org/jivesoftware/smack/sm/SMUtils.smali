.class public Lorg/jivesoftware/smack/sm/SMUtils;
.super Ljava/lang/Object;
.source "SMUtils.java"


# static fields
.field private static MASK_32_BIT:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/jivesoftware/smack/sm/SMUtils;->MASK_32_BIT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDelta(JJ)J
    .locals 4
    .param p0, "reportedHandledCount"    # J
    .param p2, "lastKnownHandledCount"    # J

    .line 50
    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    .line 53
    sub-long v0, p0, p2

    sget-wide v2, Lorg/jivesoftware/smack/sm/SMUtils;->MASK_32_BIT:J

    and-long/2addr v0, v2

    return-wide v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Stream Management State: Last known handled count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") is greater than reported handled count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static incrementHeight(J)J
    .locals 4
    .param p0, "height"    # J

    .line 37
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    move-wide p0, v0

    sget-wide v2, Lorg/jivesoftware/smack/sm/SMUtils;->MASK_32_BIT:J

    and-long/2addr v0, v2

    return-wide v0
.end method
