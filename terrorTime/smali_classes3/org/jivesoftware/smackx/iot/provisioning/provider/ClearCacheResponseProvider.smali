.class public Lorg/jivesoftware/smackx/iot/provisioning/provider/ClearCacheResponseProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "ClearCacheResponseProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/provisioning/provider/ClearCacheResponseProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;-><init>()V

    return-object v0
.end method
