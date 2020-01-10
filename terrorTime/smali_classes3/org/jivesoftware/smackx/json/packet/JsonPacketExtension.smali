.class public Lorg/jivesoftware/smackx/json/packet/JsonPacketExtension;
.super Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
.source "JsonPacketExtension.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "json"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:json:0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/json/packet/JsonPacketExtension;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 52
    const-string v0, "json"

    const-string v1, "urn:xmpp:json:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/json/packet/JsonPacketExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "json"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "urn:xmpp:json:0"

    return-object v0
.end method
