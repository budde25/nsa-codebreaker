.class public Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "VCardProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADR:[Ljava/lang/String;

.field private static final TEL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 40
    const-string v0, "POSTAL"

    const-string v1, "PARCEL"

    const-string v2, "DOM"

    const-string v3, "INTL"

    const-string v4, "PREF"

    const-string v5, "POBOX"

    const-string v6, "EXTADR"

    const-string v7, "STREET"

    const-string v8, "LOCALITY"

    const-string v9, "REGION"

    const-string v10, "PCODE"

    const-string v11, "CTRY"

    const-string v12, "FF"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->ADR:[Ljava/lang/String;

    .line 56
    const-string v1, "VOICE"

    const-string v2, "FAX"

    const-string v3, "PAGER"

    const-string v4, "MSG"

    const-string v5, "CELL"

    const-string v6, "VIDEO"

    const-string v7, "BBS"

    const-string v8, "MODEM"

    const-string v9, "ISDN"

    const-string v10, "PCS"

    const-string v11, "PREF"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->TEL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method private static parseAddress(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 131
    .local v0, "initialDepth":I
    const/4 v1, 0x1

    .line 133
    .local v1, "isWork":Z
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 134
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 154
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 155
    nop

    .line 162
    .end local v2    # "eventType":I
    return-void

    .line 136
    .restart local v2    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "name":Ljava/lang/String;
    const-string v4, "HOME"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const/4 v1, 0x0

    goto :goto_3

    .line 141
    :cond_2
    sget-object v4, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->ADR:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 142
    .local v7, "adr":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 143
    if-eqz v1, :cond_3

    .line 144
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAddressFieldWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAddressFieldHome(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v7    # "adr":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 152
    :cond_5
    nop

    .line 161
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_0
.end method

.method private static parseEmail(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 243
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 246
    .local v1, "isWork":Z
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 247
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 267
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_8

    .line 268
    nop

    .line 275
    .end local v2    # "eventType":I
    return-void

    .line 249
    .restart local v2    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x6a41d9da

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x28bf11

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "WORK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const-string v5, "USERID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v7

    :goto_1
    if-eqz v4, :cond_7

    if-eq v4, v7, :cond_5

    goto :goto_2

    .line 255
    :cond_5
    if-eqz v1, :cond_6

    .line 256
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setEmailWork(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setEmailHome(Ljava/lang/String;)V

    .line 261
    goto :goto_2

    .line 252
    :cond_7
    const/4 v1, 0x1

    .line 253
    nop

    .line 265
    :goto_2
    nop

    .line 274
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_0
.end method

.method private static parseName(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 281
    .local v0, "initialDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 282
    .local v1, "eventType":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 306
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v0, :cond_8

    .line 307
    nop

    .line 315
    .end local v1    # "eventType":I
    return-void

    .line 284
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v6, "FAMILY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "GIVEN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v6, "SUFFIX"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v7

    goto :goto_1

    :sswitch_3
    const-string v6, "PREFIX"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v2

    goto :goto_1

    :sswitch_4
    const-string v6, "MIDDLE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v8, :cond_6

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_4

    if-eq v5, v7, :cond_3

    goto :goto_2

    .line 299
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setSuffix(Ljava/lang/String;)V

    .line 300
    goto :goto_2

    .line 296
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setPrefix(Ljava/lang/String;)V

    .line 297
    goto :goto_2

    .line 293
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setMiddleName(Ljava/lang/String;)V

    .line 294
    goto :goto_2

    .line 290
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setFirstName(Ljava/lang/String;)V

    .line 291
    goto :goto_2

    .line 287
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setLastName(Ljava/lang/String;)V

    .line 288
    nop

    .line 304
    :goto_2
    nop

    .line 314
    .end local v1    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    :goto_3
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7876326b -> :sswitch_4
        -0x72d8596e -> :sswitch_3
        -0x6d8f14af -> :sswitch_2
        0x40aff5d -> :sswitch_1
        0x7b2b4f64 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseOrg(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 215
    .local v0, "initialDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 216
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 231
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 232
    nop

    .line 239
    .end local v1    # "eventType":I
    return-void

    .line 218
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x1cf95cb1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const v5, -0x1cf5fdb8

    if-eq v4, v5, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v4, "ORGUNIT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_4
    const-string v4, "ORGNAME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    goto :goto_2

    .line 224
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setOrganizationUnit(Ljava/lang/String;)V

    .line 225
    goto :goto_2

    .line 221
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setOrganization(Ljava/lang/String;)V

    .line 222
    nop

    .line 229
    :goto_2
    nop

    .line 238
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_0
.end method

.method private static parsePhoto(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 319
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 320
    .local v1, "binval":Ljava/lang/String;
    const/4 v2, 0x0

    .line 323
    .local v2, "mimetype":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 324
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_4

    .line 339
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_9

    .line 340
    nop

    .line 348
    .end local v3    # "eventType":I
    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setAvatar(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void

    .line 349
    :cond_2
    :goto_1
    return-void

    .line 326
    .restart local v3    # "eventType":I
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x27873a

    const/4 v8, 0x1

    if-eq v6, v7, :cond_6

    const v7, 0x74c94cba

    if-eq v6, v7, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    const-string v6, "BINVAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const-string v6, "TYPE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v5, v8

    :goto_2
    if-eqz v5, :cond_8

    if-eq v5, v8, :cond_7

    goto :goto_3

    .line 332
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 333
    goto :goto_3

    .line 329
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 330
    nop

    .line 337
    :goto_3
    nop

    .line 346
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_9
    :goto_4
    goto :goto_0
.end method

.method private static parseTel(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "vCard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 166
    .local v0, "initialDepth":I
    const/4 v1, 0x1

    .line 167
    .local v1, "isWork":Z
    const/4 v2, 0x0

    .line 170
    .local v2, "telLabel":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 171
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 201
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_8

    .line 202
    nop

    .line 209
    .end local v3    # "eventType":I
    return-void

    .line 173
    .restart local v3    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "name":Ljava/lang/String;
    const-string v5, "HOME"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    const/4 v1, 0x0

    goto :goto_2

    .line 178
    :cond_2
    const-string v5, "NUMBER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 182
    const-string v2, "VOICE"

    .line 184
    :cond_3
    if-eqz v1, :cond_4

    .line 185
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setPhoneWork(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 188
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setPhoneHome(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 192
    :cond_5
    sget-object v5, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->TEL:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 193
    .local v8, "tel":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    move-object v2, v4

    .line 192
    .end local v8    # "tel":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 199
    :cond_7
    nop

    .line 208
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    :goto_2
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;-><init>()V

    .line 75
    .local v0, "vCard":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    const/4 v1, 0x0

    .line 78
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 79
    .local v2, "eventType":I
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 112
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 117
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 118
    nop

    .line 126
    .end local v2    # "eventType":I
    return-object v0

    .line 81
    .restart local v2    # "eventType":I
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 82
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v3, "NICKNAME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v3, "PHOTO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_2
    const-string v4, "EMAIL"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :sswitch_3
    const-string v3, "TEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_2

    :sswitch_4
    const-string v3, "ORG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_5
    const-string v3, "ADR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_2

    :sswitch_6
    const-string v3, "N"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_7
    const-string v3, "JABBERID"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    move v3, v6

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 105
    :pswitch_0
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parsePhoto(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 106
    goto :goto_3

    .line 102
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setJabberId(Ljava/lang/CharSequence;)V

    .line 103
    goto :goto_3

    .line 99
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setNickName(Ljava/lang/String;)V

    .line 100
    goto :goto_3

    .line 96
    :pswitch_3
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parseEmail(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 97
    goto :goto_3

    .line 93
    :pswitch_4
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parseAddress(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 94
    goto :goto_3

    .line 90
    :pswitch_5
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parseTel(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 91
    goto :goto_3

    .line 87
    :pswitch_6
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parseOrg(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 88
    goto :goto_3

    .line 84
    :pswitch_7
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/provider/VCardProvider;->parseName(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V

    .line 85
    nop

    .line 110
    :goto_3
    nop

    .line 124
    .end local v2    # "eventType":I
    :cond_4
    :goto_4
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x16117941 -> :sswitch_7
        0x4e -> :sswitch_6
        0xfc8f -> :sswitch_5
        0x132c4 -> :sswitch_4
        0x143fb -> :sswitch_3
        0x3f0537c -> :sswitch_2
        0x4894612 -> :sswitch_1
        0x32dc986e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
