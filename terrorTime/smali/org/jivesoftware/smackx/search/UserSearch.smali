.class public Lorg/jivesoftware/smackx/search/UserSearch;
.super Lorg/jivesoftware/smack/packet/SimpleIQ;
.source "UserSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/search/UserSearch$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:search"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    const-string v0, "query"

    const-string v1, "jabber:iq:search"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/SimpleIQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/search/SimpleUserSearch;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smackx/search/UserSearch;->buildDataForm(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private static buildDataForm(Lorg/jivesoftware/smackx/search/SimpleUserSearch;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p0, "search"    # Lorg/jivesoftware/smackx/search/SimpleUserSearch;
    .param p1, "instructions"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 166
    .local v0, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    const/4 v1, 0x0

    .line 167
    .local v1, "done":Z
    const-string v2, "User Search"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->setTitle(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addInstruction(Ljava/lang/String;)V

    .line 169
    :goto_0
    const-string v2, "jabber:x:data"

    if-nez v1, :cond_7

    .line 170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 172
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 173
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 177
    .local v4, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v5, "first"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    const-string v5, "First Name"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :cond_0
    const-string v5, "last"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    const-string v5, "Last Name"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_1
    const-string v5, "email"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    const-string v5, "Email Address"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_2
    const-string v5, "nick"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    const-string v5, "Nickname"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    .line 190
    :cond_3
    :goto_1
    sget-object v5, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 191
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 192
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_2

    .line 193
    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    .line 194
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "query"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    const/4 v1, 0x1

    goto :goto_2

    .line 198
    :cond_5
    if-ne v3, v4, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 199
    invoke-static {p0, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 200
    const/4 v1, 0x1

    .line 202
    .end local v3    # "eventType":I
    :cond_6
    :goto_2
    goto :goto_0

    .line 203
    :cond_7
    const-string v3, "x"

    invoke-virtual {p0, v3, v2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v2

    if-nez v2, :cond_8

    .line 204
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 206
    :cond_8
    return-void
.end method


# virtual methods
.method public getSearchForm(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/xdata/Form;
    .locals 3
    .param p1, "con"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "searchService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/search/UserSearch;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/search/UserSearch;-><init>()V

    .line 70
    .local v0, "search":Lorg/jivesoftware/smackx/search/UserSearch;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/search/UserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 71
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/search/UserSearch;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 73
    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 74
    .local v1, "response":Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {v1}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v2

    return-object v2
.end method

.method public sendSearchForm(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/xdata/Form;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/search/ReportedData;
    .locals 3
    .param p1, "con"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "searchForm"    # Lorg/jivesoftware/smackx/xdata/Form;
    .param p3, "searchService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/jivesoftware/smackx/search/UserSearch;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/search/UserSearch;-><init>()V

    .line 91
    .local v0, "search":Lorg/jivesoftware/smackx/search/UserSearch;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/search/UserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 92
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/search/UserSearch;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 93
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/xdata/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/search/UserSearch;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 95
    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 96
    .local v1, "response":Lorg/jivesoftware/smack/packet/IQ;
    invoke-static {v1}, Lorg/jivesoftware/smackx/search/ReportedData;->getReportedDataFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/search/ReportedData;

    move-result-object v2

    return-object v2
.end method

.method public sendSimpleSearchForm(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/xdata/Form;Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/search/ReportedData;
    .locals 3
    .param p1, "con"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "searchForm"    # Lorg/jivesoftware/smackx/xdata/Form;
    .param p3, "searchService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;-><init>()V

    .line 113
    .local v0, "search":Lorg/jivesoftware/smackx/search/SimpleUserSearch;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setForm(Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 114
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 115
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 117
    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/search/SimpleUserSearch;

    .line 118
    .local v1, "response":Lorg/jivesoftware/smackx/search/SimpleUserSearch;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getReportedData()Lorg/jivesoftware/smackx/search/ReportedData;

    move-result-object v2

    return-object v2
.end method
