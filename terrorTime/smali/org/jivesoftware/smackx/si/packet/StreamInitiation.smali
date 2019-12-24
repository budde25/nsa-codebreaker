.class public Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "StreamInitiation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;,
        Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "si"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/si"


# instance fields
.field private featureNegotiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;

.field private file:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

.field private id:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    const-string v0, "si"

    const-string v1, "http://jabber.org/protocol/si"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getFeatureNegotiationForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->getData()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 3
    .param p1, "buf"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 141
    sget-object v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$1;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 153
    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IQ Type not understood"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 144
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime-type"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 145
    const-string v0, "profile"

    const-string v1, "http://jabber.org/protocol/si/profile/file-transfer"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 146
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAppend(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 150
    nop

    .line 157
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 160
    :cond_2
    return-object p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setFeatureNegotiationForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 1
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 125
    new-instance v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;

    .line 126
    return-void
.end method

.method public setFile(Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;)V
    .locals 0
    .param p1, "file"    # Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    .line 106
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    .line 107
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->mimeType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->id:Ljava/lang/String;

    .line 62
    return-void
.end method
