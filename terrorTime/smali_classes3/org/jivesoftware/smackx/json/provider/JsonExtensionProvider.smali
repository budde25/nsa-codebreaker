.class public Lorg/jivesoftware/smackx/json/provider/JsonExtensionProvider;
.super Lorg/jivesoftware/smackx/json/provider/AbstractJsonExtensionProvider;
.source "JsonExtensionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/jivesoftware/smackx/json/provider/AbstractJsonExtensionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public from(Ljava/lang/String;)Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/json/packet/JsonPacketExtension;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/json/packet/JsonPacketExtension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
