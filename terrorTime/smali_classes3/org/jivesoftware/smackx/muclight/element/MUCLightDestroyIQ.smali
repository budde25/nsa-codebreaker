.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightDestroyIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#destroy"


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "roomJid"    # Lorg/jxmpp/jid/Jid;

    .line 42
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#destroy"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 44
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 0
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 49
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 50
    return-object p1
.end method
