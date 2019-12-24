.class public abstract Lorg/jivesoftware/smack/packet/IQ;
.super Lorg/jivesoftware/smack/packet/Stanza;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;,
        Lorg/jivesoftware/smack/packet/IQ$Type;
    }
.end annotation


# static fields
.field public static final IQ_ELEMENT:Ljava/lang/String; = "iq"

.field public static final QUERY_ELEMENT:Ljava/lang/String; = "query"


# instance fields
.field private final childElementName:Ljava/lang/String;

.field private final childElementNamespace:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smack/packet/IQ$Type;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "childElementName"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "childElementName"    # Ljava/lang/String;
    .param p2, "childElementNamespace"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Stanza;-><init>()V

    .line 52
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 66
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementNamespace:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .param p1, "iq"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 55
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Stanza;-><init>(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 52
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 56
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 57
    iget-object v0, p1, Lorg/jivesoftware/smack/packet/IQ;->childElementName:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementName:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lorg/jivesoftware/smack/packet/IQ;->childElementNamespace:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementNamespace:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;
    .locals 3
    .param p0, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p1, "error"    # Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 290
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/packet/IQ;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    :goto_0
    new-instance v0, Lorg/jivesoftware/smack/packet/ErrorIQ;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/packet/ErrorIQ;-><init>(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 295
    .local v0, "result":Lorg/jivesoftware/smack/packet/ErrorIQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/ErrorIQ;->setStanzaId(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/ErrorIQ;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 297
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/ErrorIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 299
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setStanza(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 301
    return-object v0
.end method

.method public static createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;
    .locals 1
    .param p0, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p1, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 305
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/ErrorIQ;
    .locals 1
    .param p0, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .param p1, "error"    # Lorg/jivesoftware/smack/packet/StanzaError;

    .line 327
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v0

    return-object v0
.end method

.method public static createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p0, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 268
    new-instance v0, Lorg/jivesoftware/smack/packet/EmptyResultIQ;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/packet/EmptyResultIQ;-><init>(Lorg/jivesoftware/smack/packet/IQ;)V

    return-object v0
.end method


# virtual methods
.method public final getChildElementName()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementName:Ljava/lang/String;

    return-object v0
.end method

.method public final getChildElementNamespace()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public final getChildElementXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getChildElementXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 164
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 165
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_0

    .line 167
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->appendErrorIfExists(Lorg/jivesoftware/smack/util/XmlStringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/IQ;->childElementName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 171
    new-instance v1, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ$1;)V

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/IQ;->getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    move-result-object v1

    .line 172
    .local v1, "iqChildElement":Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 175
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensions()Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, "extensionsXml":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->access$100(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 179
    return-object v0

    .line 181
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 184
    :cond_2
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 185
    invoke-static {v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->access$200(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 188
    .end local v1    # "iqChildElement":Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .end local v2    # "extensionsXml":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    :cond_3
    :goto_0
    return-object v0
.end method

.method protected abstract getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
.end method

.method public getType()Lorg/jivesoftware/smack/packet/IQ$Type;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    return-object v0
.end method

.method protected final initializeAsResultFor(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 241
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/IQ;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->setStanzaId(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 247
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 248
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 249
    return-void
.end method

.method protected final initialzeAsResultFor(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 0
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/IQ;->initializeAsResultFor(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 238
    return-void
.end method

.method public isRequestIQ()Z
    .locals 3

    .line 99
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$1;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    return v1
.end method

.method public setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    .locals 1
    .param p1, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 89
    const-string v0, "type must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 90
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IQ Stanza ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ") ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/IQ;->logCommonAttributes(Ljava/lang/StringBuilder;)V

    .line 123
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/IQ;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 130
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "iq"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 132
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->addCommonAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    const-string v3, "type"

    if-nez v2, :cond_0

    .line 134
    const-string v2, "get"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 139
    :goto_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 140
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 141
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 142
    return-object v0
.end method
