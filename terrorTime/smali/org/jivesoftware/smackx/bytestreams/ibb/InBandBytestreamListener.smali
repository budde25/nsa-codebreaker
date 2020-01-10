.class public abstract Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamListener;
.super Ljava/lang/Object;
.source "InBandBytestreamListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;)V

    .line 40
    return-void
.end method

.method public abstract incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;)V
.end method
