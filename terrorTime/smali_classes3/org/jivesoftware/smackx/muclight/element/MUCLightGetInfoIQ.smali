.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightGetInfoIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#info"


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "roomJid"    # Lorg/jxmpp/jid/Jid;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 2
    .param p1, "roomJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "version"    # Ljava/lang/String;

    .line 45
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#info"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;->version:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 48
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 62
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    return-object p1
.end method
