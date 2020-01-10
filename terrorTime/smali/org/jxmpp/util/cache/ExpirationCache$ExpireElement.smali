.class Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;
.super Ljava/lang/Object;
.source "ExpirationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/util/cache/ExpirationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpireElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final expirationTimestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/Object;J)V
    .locals 2
    .param p2, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    .local p1, "element":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->element:Ljava/lang/Object;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->expirationTimestamp:J

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;JLorg/jxmpp/util/cache/ExpirationCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/jxmpp/util/cache/ExpirationCache$1;

    .line 119
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 119
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->element:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 119
    invoke-direct {p0}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->isExpired()Z

    move-result v0

    return v0
.end method

.method private isExpired()Z
    .locals 4

    .line 129
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->expirationTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 139
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    instance-of v0, p1, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 142
    .local v0, "otherElement":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<*>;"
    iget-object v1, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->element:Ljava/lang/Object;

    iget-object v2, v0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->element:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 134
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
