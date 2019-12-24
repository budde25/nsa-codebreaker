.class public Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition;
.super Ljava/lang/Object;
.source "AMPMatchResourceCondition.java"

# interfaces
.implements Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "match-resource"


# instance fields
.field private final value:Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;)V
    .locals 2
    .param p1, "value"    # Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition;->value:Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t create AMPMatchResourceCondition with null value"

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

    .line 40
    const-string v0, "match-resource"

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/amp/AMPManager;->isConditionSupported(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "match-resource"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition;->value:Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
