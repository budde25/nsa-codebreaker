.class public Lorg/jivesoftware/smackx/delay/DelayInformationManager;
.super Ljava/lang/Object;
.source "DelayInformationManager.java"


# static fields
.field public static final LEGACY_DELAYED_DELIVERY_ELEMENT:Ljava/lang/String; = "x"

.field public static final LEGACY_DELAYED_DELIVERY_NAMESPACE:Ljava/lang/String; = "jabber:x:delay"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 71
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/DelayInformationManager;->getXep203DelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    .line 72
    .local v0, "delayInformation":Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    if-eqz v0, :cond_0

    .line 73
    return-object v0

    .line 75
    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/DelayInformationManager;->getLegacyDelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v1

    return-object v1
.end method

.method public static getDelayTimestamp(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/Date;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 85
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/DelayInformationManager;->getDelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    .line 86
    .local v0, "delayInformation":Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->getStamp()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getLegacyDelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 60
    const-string v0, "x"

    const-string v1, "jabber:x:delay"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    return-object v0
.end method

.method public static getXep203DelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 48
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    return-object v0
.end method

.method public static isDelayedStanza(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 99
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/DelayInformationManager;->getDelayInformation(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    .line 100
    .local v0, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
