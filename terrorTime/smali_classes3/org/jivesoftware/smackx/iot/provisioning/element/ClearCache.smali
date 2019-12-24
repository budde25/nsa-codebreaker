.class public Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;
.super Lorg/jivesoftware/smack/packet/SimpleIQ;
.source "ClearCache.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "clearCache"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:provisioning"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const-string v0, "clearCache"

    const-string v1, "urn:xmpp:iot:provisioning"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/SimpleIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 30
    return-void
.end method
