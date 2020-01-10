.class public Lorg/jivesoftware/smackx/geoloc/provider/GeoLocationProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "GeoLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/geoloc/provider/GeoLocationProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->builder()Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    move-result-object v0

    .line 40
    .local v0, "builder":Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 41
    .local v1, "event":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 120
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 121
    nop

    .line 126
    .end local v1    # "event":I
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->build()Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    move-result-object v1

    return-object v1

    .line 43
    .restart local v1    # "event":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "postalcode"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "locality"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "country"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "altaccuracy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "speed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "floor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "datum"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "timestamp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "text"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "room"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x11

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "area"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "uri"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x17

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "tzo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x16

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "lon"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    goto :goto_2

    :sswitch_f
    const-string v2, "lat"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    goto :goto_2

    :sswitch_10
    const-string v2, "alt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_11
    const-string v2, "bearing"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_12
    const-string v2, "street"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x13

    goto :goto_2

    :sswitch_13
    const-string v2, "region"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x10

    goto :goto_2

    :sswitch_14
    const-string v2, "building"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_15
    const-string v2, "countrycode"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_16
    const-string v2, "description"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_2

    :sswitch_17
    const-string v2, "accuracy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :goto_1
    move v2, v5

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 115
    :pswitch_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getUriFromNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setUri(Ljava/net/URI;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    goto/16 :goto_3

    .line 112
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setTzo(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 113
    goto/16 :goto_3

    .line 109
    :pswitch_2
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDateFromNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setTimestamp(Ljava/util/Date;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 110
    goto/16 :goto_3

    .line 106
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setText(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 107
    goto/16 :goto_3

    .line 103
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setStreet(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 104
    goto/16 :goto_3

    .line 100
    :pswitch_5
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setSpeed(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 101
    goto/16 :goto_3

    .line 97
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setRoom(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 98
    goto/16 :goto_3

    .line 94
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setRegion(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 95
    goto/16 :goto_3

    .line 91
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setPostalcode(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 92
    goto/16 :goto_3

    .line 88
    :pswitch_9
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setLon(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 89
    goto/16 :goto_3

    .line 85
    :pswitch_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setLocality(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 86
    goto/16 :goto_3

    .line 82
    :pswitch_b
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setLat(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 83
    goto/16 :goto_3

    .line 79
    :pswitch_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setFloor(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 80
    goto/16 :goto_3

    .line 76
    :pswitch_d
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setError(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 77
    goto :goto_3

    .line 73
    :pswitch_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setDescription(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 74
    goto :goto_3

    .line 70
    :pswitch_f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setDatum(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 71
    goto :goto_3

    .line 67
    :pswitch_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setCountryCode(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 68
    goto :goto_3

    .line 64
    :pswitch_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setCountry(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 65
    goto :goto_3

    .line 61
    :pswitch_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setBuilding(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 62
    goto :goto_3

    .line 58
    :pswitch_13
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setBearing(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 59
    goto :goto_3

    .line 55
    :pswitch_14
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setArea(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 56
    goto :goto_3

    .line 52
    :pswitch_15
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setAltAccuracy(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 53
    goto :goto_3

    .line 49
    :pswitch_16
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setAlt(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 50
    goto :goto_3

    .line 46
    :pswitch_17
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->setAccuracy(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    .line 47
    nop

    .line 118
    :goto_3
    nop

    .line 124
    .end local v1    # "event":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_4
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f0f4707 -> :sswitch_17
        -0x66ca7c04 -> :sswitch_16
        -0x57fbb57d -> :sswitch_15
        -0x5545ed4c -> :sswitch_14
        -0x37b7d90c -> :sswitch_13
        -0x352aaffd -> :sswitch_12
        -0xdf78852 -> :sswitch_11
        0x179a9 -> :sswitch_10
        0x1a19f -> :sswitch_f
        0x1a34b -> :sswitch_e
        0x1c2a9 -> :sswitch_d
        0x1c56c -> :sswitch_c
        0x2dd08d -> :sswitch_b
        0x3580db -> :sswitch_a
        0x36452d -> :sswitch_9
        0x3492916 -> :sswitch_8
        0x5af086f -> :sswitch_7
        0x5c4d208 -> :sswitch_6
        0x5d0240c -> :sswitch_5
        0x6890047 -> :sswitch_4
        0x299679a2 -> :sswitch_3
        0x39175796 -> :sswitch_2
        0x714bfd63 -> :sswitch_1
        0x77ee4d38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
