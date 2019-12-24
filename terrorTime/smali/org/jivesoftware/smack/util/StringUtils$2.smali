.class Lorg/jivesoftware/smack/util/StringUtils$2;
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
        "Ljava/security/SecureRandom;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/StringUtils$2;->initialValue()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/security/SecureRandom;
    .locals 1

    .line 297
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method
