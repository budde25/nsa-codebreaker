.class public Lorg/jivesoftware/smackx/iot/provisioning/provider/ClearCacheProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "ClearCacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;",
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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/provisioning/provider/ClearCacheProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;-><init>()V

    return-object v0
.end method
