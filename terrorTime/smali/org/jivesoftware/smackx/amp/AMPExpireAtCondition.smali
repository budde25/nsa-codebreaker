.class public Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;
.super Ljava/lang/Object;
.source "AMPExpireAtCondition.java"

# interfaces
.implements Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;


# static fields
.field public static final NAME:Ljava/lang/String; = "expire-at"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "utcDateTime"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_0

    .line 69
    iput-object p1, p0, Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;->value:Ljava/lang/String;

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t create AMPExpireAtCondition with null value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "utcDateTime"    # Ljava/util/Date;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    .line 58
    invoke-static {p1}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;->value:Ljava/lang/String;

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t create AMPExpireAtCondition with null value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 1
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 45
    const-string v0, "expire-at"

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/amp/AMPManager;->isConditionSupported(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "expire-at"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;->value:Ljava/lang/String;

    return-object v0
.end method
