.class public Lorg/jivesoftware/smack/SmackException$ConnectionException;
.super Lorg/jivesoftware/smack/SmackException;
.source "SmackException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17693ad0489b288cL


# instance fields
.field private final failedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .line 280
    iput-object p2, p0, Lorg/jivesoftware/smack/SmackException$ConnectionException;->failedAddresses:Ljava/util/List;

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "wrappedThrowable"    # Ljava/lang/Throwable;

    .line 274
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/Throwable;)V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/SmackException$ConnectionException;->failedAddresses:Ljava/util/List;

    .line 276
    return-void
.end method

.method public static from(Ljava/util/List;)Lorg/jivesoftware/smack/SmackException$ConnectionException;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;)",
            "Lorg/jivesoftware/smack/SmackException$ConnectionException;"
        }
    .end annotation

    .line 284
    .local p0, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    const-string v0, ", "

    .line 285
    .local v0, "DELIMITER":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The following addresses failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ", "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/util/dns/HostAddress;

    .line 287
    .local v3, "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/dns/HostAddress;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .end local v3    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 292
    new-instance v2, Lorg/jivesoftware/smack/SmackException$ConnectionException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/jivesoftware/smack/SmackException$ConnectionException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public getFailedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackException$ConnectionException;->failedAddresses:Ljava/util/List;

    return-object v0
.end method
