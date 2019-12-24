.class public Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MamQueryIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:mam:1"


# instance fields
.field private final dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field private final node:Ljava/lang/String;

.field private final queryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryId"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 55
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 4
    .param p1, "queryId"    # Ljava/lang/String;
    .param p2, "node"    # Ljava/lang/String;
    .param p3, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 85
    const-string v0, "urn:xmpp:mam:1"

    const-string v1, "query"

    invoke-direct {p0, v1, v0}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->queryId:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->node:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 90
    if-eqz p3, :cond_2

    .line 91
    invoke-virtual {p3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getHiddenFormTypeField()Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v1

    .line 92
    .local v1, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value of the hidden form type field must be \'urn:xmpp:mam:1\'"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "If a data form is given it must posses a hidden form type field"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    .end local v1    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 1
    .param p1, "queryId"    # Ljava/lang/String;
    .param p2, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 1
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getDataForm()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->queryId:Ljava/lang/String;

    const-string v1, "queryid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->node:Ljava/lang/String;

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 134
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 135
    return-object p1
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->queryId:Ljava/lang/String;

    return-object v0
.end method
