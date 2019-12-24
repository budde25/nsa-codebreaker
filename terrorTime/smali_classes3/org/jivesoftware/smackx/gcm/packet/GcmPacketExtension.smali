.class public Lorg/jivesoftware/smackx/gcm/packet/GcmPacketExtension;
.super Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
.source "GcmPacketExtension.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "gcm"

.field public static final NAMESPACE:Ljava/lang/String; = "google:mobile:data"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/gcm/packet/GcmPacketExtension;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 58
    const-string v0, "gcm"

    const-string v1, "google:mobile:data"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/gcm/packet/GcmPacketExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "gcm"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "google:mobile:data"

    return-object v0
.end method
