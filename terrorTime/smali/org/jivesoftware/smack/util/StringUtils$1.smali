.class Lorg/jivesoftware/smack/util/StringUtils$1;
.super Ljava/lang/ThreadLocal;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Random;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/StringUtils$1;->initialValue()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Random;
    .locals 1

    .line 264
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method
