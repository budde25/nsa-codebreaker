.class public Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;
.super Lorg/jivesoftware/smack/packet/SimpleIQ;
.source "ClearCacheResponse.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "clearCacheResponse"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:provisioning"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const-string v0, "clearCacheResponse"

    const-string v1, "urn:xmpp:iot:provisioning"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/SimpleIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;)V
    .locals 1
    .param p1, "clearCacheRequest"    # Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;

    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;->setStanzaId(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 36
    return-void
.end method
