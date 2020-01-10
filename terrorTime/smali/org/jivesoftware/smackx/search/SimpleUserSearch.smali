.class Lorg/jivesoftware/smackx/search/SimpleUserSearch;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SimpleUserSearch.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:search"


# instance fields
.field private data:Lorg/jivesoftware/smackx/search/ReportedData;

.field private form:Lorg/jivesoftware/smackx/xdata/Form;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "query"

    const-string v1, "jabber:iq:search"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private getItemsToSearch()Ljava/lang/String;
    .locals 7

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/xdata/Form;

    if-nez v1, :cond_0

    .line 69
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/xdata/Form;

    .line 72
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/xdata/Form;

    if-nez v1, :cond_1

    .line 73
    const-string v1, ""

    return-object v1

    .line 76
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/Form;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 77
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getSingleValue(Lorg/jivesoftware/smackx/xdata/FormField;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 80
    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local v2    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSingleValue(Lorg/jivesoftware/smackx/xdata/FormField;)Ljava/lang/String;
    .locals 2
    .param p0, "formField"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getValuesAsString()Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, ""

    return-object v1

    .line 92
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 1
    .param p1, "buf"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 60
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 61
    invoke-direct {p0}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getItemsToSearch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 62
    return-object p1
.end method

.method public getReportedData()Lorg/jivesoftware/smackx/search/ReportedData;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->data:Lorg/jivesoftware/smackx/search/ReportedData;

    return-object v0
.end method

.method protected parseItems(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/jivesoftware/smackx/search/ReportedData;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/search/ReportedData;-><init>()V

    .line 98
    .local v0, "data":Lorg/jivesoftware/smackx/search/ReportedData;
    new-instance v1, Lorg/jivesoftware/smackx/search/ReportedData$Column;

    sget-object v2, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const-string v3, "jid"

    const-string v4, "JID"

    invoke-direct {v1, v4, v3, v2}, Lorg/jivesoftware/smackx/search/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/search/ReportedData;->addColumn(Lorg/jivesoftware/smackx/search/ReportedData$Column;)V

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "done":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/search/ReportedData$Field;>;"
    :goto_0
    if-nez v1, :cond_8

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 105
    const-string v4, ""

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "jid":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v6, Lorg/jivesoftware/smackx/search/ReportedData$Field;

    invoke-direct {v6, v3, v5}, Lorg/jivesoftware/smackx/search/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 109
    .local v6, "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v4    # "jid":Ljava/lang/String;
    .end local v5    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 114
    .local v4, "eventType":I
    const-string v5, "item"

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    goto/16 :goto_3

    .line 117
    :cond_1
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    new-instance v5, Lorg/jivesoftware/smackx/search/ReportedData$Row;

    invoke-direct {v5, v2}, Lorg/jivesoftware/smackx/search/ReportedData$Row;-><init>(Ljava/util/List;)V

    .line 119
    .local v5, "row":Lorg/jivesoftware/smackx/search/ReportedData$Row;
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/search/ReportedData;->addRow(Lorg/jivesoftware/smackx/search/ReportedData$Row;)V

    .line 120
    .end local v5    # "row":Lorg/jivesoftware/smackx/search/ReportedData$Row;
    goto :goto_3

    .line 121
    :cond_2
    if-ne v4, v6, :cond_6

    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v7, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v8, Lorg/jivesoftware/smackx/search/ReportedData$Field;

    invoke-direct {v8, v5, v7}, Lorg/jivesoftware/smackx/search/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 128
    .local v8, "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v9, 0x0

    .line 131
    .local v9, "exists":Z
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/search/ReportedData;->getColumns()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smackx/search/ReportedData$Column;

    .line 132
    .local v11, "column":Lorg/jivesoftware/smackx/search/ReportedData$Column;
    invoke-virtual {v11}, Lorg/jivesoftware/smackx/search/ReportedData$Column;->getVariable()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 133
    const/4 v9, 0x1

    .line 134
    goto :goto_2

    .line 136
    .end local v11    # "column":Lorg/jivesoftware/smackx/search/ReportedData$Column;
    :cond_3
    goto :goto_1

    .line 139
    :cond_4
    :goto_2
    if-nez v9, :cond_5

    .line 140
    new-instance v10, Lorg/jivesoftware/smackx/search/ReportedData$Column;

    sget-object v11, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-direct {v10, v5, v5, v11}, Lorg/jivesoftware/smackx/search/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 141
    .local v10, "column":Lorg/jivesoftware/smackx/search/ReportedData$Column;
    invoke-virtual {v0, v10}, Lorg/jivesoftware/smackx/search/ReportedData;->addColumn(Lorg/jivesoftware/smackx/search/ReportedData$Column;)V

    .line 143
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    .end local v9    # "exists":Z
    .end local v10    # "column":Lorg/jivesoftware/smackx/search/ReportedData$Column;
    :cond_5
    goto :goto_3

    .line 144
    :cond_6
    if-ne v4, v7, :cond_7

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "query"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 146
    const/4 v1, 0x1

    .line 150
    .end local v4    # "eventType":I
    :cond_7
    :goto_3
    goto/16 :goto_0

    .line 152
    :cond_8
    iput-object v0, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->data:Lorg/jivesoftware/smackx/search/ReportedData;

    .line 153
    return-void
.end method

.method public setForm(Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 0
    .param p1, "form"    # Lorg/jivesoftware/smackx/xdata/Form;

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/xdata/Form;

    .line 52
    return-void
.end method
