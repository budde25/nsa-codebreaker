.class public Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "AMPExtensionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/amp/packet/AMPExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method

.method private static createCondition(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    const-string v1, "deliver"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition;

    invoke-static {p1}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition;-><init>(Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid rule delivery condition value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 115
    return-object v0

    .line 117
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v1, "expire-at"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/amp/AMPExpireAtCondition;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 119
    :cond_2
    const-string v1, "match-resource"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    :try_start_1
    new-instance v1, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition;

    invoke-static {p1}, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition;-><init>(Lorg/jivesoftware/smackx/amp/AMPMatchResourceCondition$Value;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .restart local v1    # "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid rule match-resource condition value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 124
    return-object v0

    .line 127
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3
    sget-object v1, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found unknown rule condition name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 128
    return-object v0

    .line 105
    :cond_4
    :goto_0
    sget-object v1, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    const-string v2, "Can\'t create rule condition from null name and/or value"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/amp/packet/AMPExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v0, "from"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "from":Ljava/lang/String;
    const-string v0, "to"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "to":Ljava/lang/String;
    const-string v0, "status"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "statusString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, "status":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;
    if-eqz v5, :cond_0

    .line 53
    :try_start_0
    invoke-static {v5}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 55
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found invalid amp status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 59
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    new-instance v0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;

    invoke-direct {v0, v3, v4, v6}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Status;)V

    move-object v7, v0

    .line 61
    .local v7, "ampExtension":Lorg/jivesoftware/smackx/amp/packet/AMPExtension;
    const-string v0, "per-hop"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "perHopValue":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 63
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "perHop":Z
    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->setPerHop(Z)V

    .line 67
    .end local v0    # "perHop":Z
    :cond_1
    const/4 v0, 0x0

    move v9, v0

    .line 68
    .local v9, "done":Z
    :goto_1
    if-nez v9, :cond_7

    .line 69
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 70
    .local v10, "eventType":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "rule"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    const-string v0, "action"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "actionString":Ljava/lang/String;
    const-string v0, "condition"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, "conditionName":Ljava/lang/String;
    const-string v0, "value"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "conditionValue":Ljava/lang/String;
    invoke-static {v12, v13}, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->createCondition(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;

    move-result-object v14

    .line 77
    .local v14, "condition":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;
    const/4 v15, 0x0

    .line 78
    .local v15, "action":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;
    if-eqz v11, :cond_2

    .line 80
    :try_start_1
    invoke-static {v11}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v15, v0

    .line 83
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 82
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v17, v0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .local v17, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found invalid rule action value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 86
    .end local v17    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    if-eqz v15, :cond_4

    if-nez v14, :cond_3

    goto :goto_3

    .line 89
    :cond_3
    new-instance v0, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;

    invoke-direct {v0, v15, v14}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;-><init>(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;)V

    .line 90
    .local v0, "rule":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
    invoke-virtual {v7, v0}, Lorg/jivesoftware/smackx/amp/packet/AMPExtension;->addRule(Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;)V

    goto :goto_4

    .line 87
    .end local v0    # "rule":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Rule;
    :cond_4
    :goto_3
    sget-object v0, Lorg/jivesoftware/smackx/amp/provider/AMPExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Rule is skipped because either it\'s action or it\'s condition is invalid"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 92
    .end local v11    # "actionString":Ljava/lang/String;
    .end local v12    # "conditionName":Ljava/lang/String;
    .end local v13    # "conditionValue":Ljava/lang/String;
    .end local v14    # "condition":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Condition;
    .end local v15    # "action":Lorg/jivesoftware/smackx/amp/packet/AMPExtension$Action;
    :goto_4
    goto :goto_5

    .line 93
    :cond_5
    const/4 v0, 0x3

    if-ne v10, v0, :cond_6

    .line 94
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    const/4 v0, 0x1

    move v9, v0

    .line 98
    .end local v10    # "eventType":I
    :cond_6
    :goto_5
    move-object/from16 v1, p1

    const/4 v2, 0x0

    goto :goto_1

    .line 100
    :cond_7
    return-object v7
.end method
