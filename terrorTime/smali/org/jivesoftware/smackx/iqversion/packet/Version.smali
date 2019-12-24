.class public Lorg/jivesoftware/smackx/iqversion/packet/Version;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Version.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:version"


# instance fields
.field private final name:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    const-string v0, "query"

    const-string v1, "jabber:iq:version"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->name:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->version:Ljava/lang/String;

    .line 44
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iqversion/packet/Version;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/lang/String;

    .line 69
    const-string v0, "query"

    const-string v1, "jabber:iq:version"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iqversion/packet/Version;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 71
    const-string v0, "name must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->name:Ljava/lang/String;

    .line 72
    const-string v0, "version must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->version:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->os:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iqversion/packet/Version;)V
    .locals 3
    .param p1, "original"    # Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 77
    iget-object v0, p1, Lorg/jivesoftware/smackx/iqversion/packet/Version;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/jivesoftware/smackx/iqversion/packet/Version;->version:Ljava/lang/String;

    iget-object v2, p1, Lorg/jivesoftware/smackx/iqversion/packet/Version;->os:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;

    .line 53
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iqversion/packet/Version;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 55
    return-void
.end method

.method public static createResultFor(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smackx/iqversion/packet/Version;)Lorg/jivesoftware/smackx/iqversion/packet/Version;
    .locals 2
    .param p0, "request"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "version"    # Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 132
    new-instance v0, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Lorg/jivesoftware/smackx/iqversion/packet/Version;)V

    .line 133
    .local v0, "result":Lorg/jivesoftware/smackx/iqversion/packet/Version;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqversion/packet/Version;->setStanzaId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iqversion/packet/Version;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 135
    return-object v0
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 122
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->os:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 128
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lorg/jivesoftware/smackx/iqversion/packet/Version;->os:Ljava/lang/String;

    .line 118
    return-void
.end method
