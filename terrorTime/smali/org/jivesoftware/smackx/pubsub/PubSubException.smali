.class public abstract Lorg/jivesoftware/smackx/pubsub/PubSubException;
.super Lorg/jivesoftware/smack/SmackException;
.source "PubSubException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;,
        Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final nodeId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackException;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubException;->nodeId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubException;->nodeId:Ljava/lang/String;

    return-object v0
.end method
