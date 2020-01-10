.class public final Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "geoloc"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/geoloc"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final accuracy:Ljava/lang/Double;

.field private final alt:Ljava/lang/Double;

.field private final altAccuracy:Ljava/lang/Double;

.field private final area:Ljava/lang/String;

.field private final bearing:Ljava/lang/Double;

.field private final building:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final countryCode:Ljava/lang/String;

.field private final datum:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final error:Ljava/lang/Double;

.field private final floor:Ljava/lang/String;

.field private final lat:Ljava/lang/Double;

.field private final locality:Ljava/lang/String;

.field private final lon:Ljava/lang/Double;

.field private final postalcode:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final room:Ljava/lang/String;

.field private final speed:Ljava/lang/Double;

.field private final street:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;

.field private final tzo:Ljava/lang/String;

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/net/URI;)V
    .locals 16
    .param p1, "accuracy"    # Ljava/lang/Double;
    .param p2, "alt"    # Ljava/lang/Double;
    .param p3, "altAccuracy"    # Ljava/lang/Double;
    .param p4, "area"    # Ljava/lang/String;
    .param p5, "bearing"    # Ljava/lang/Double;
    .param p6, "building"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "countryCode"    # Ljava/lang/String;
    .param p9, "datum"    # Ljava/lang/String;
    .param p10, "description"    # Ljava/lang/String;
    .param p11, "error"    # Ljava/lang/Double;
    .param p12, "floor"    # Ljava/lang/String;
    .param p13, "lat"    # Ljava/lang/Double;
    .param p14, "locality"    # Ljava/lang/String;
    .param p15, "lon"    # Ljava/lang/Double;
    .param p16, "postalcode"    # Ljava/lang/String;
    .param p17, "region"    # Ljava/lang/String;
    .param p18, "room"    # Ljava/lang/String;
    .param p19, "speed"    # Ljava/lang/Double;
    .param p20, "street"    # Ljava/lang/String;
    .param p21, "text"    # Ljava/lang/String;
    .param p22, "timestamp"    # Ljava/util/Date;
    .param p23, "tzo"    # Ljava/lang/String;
    .param p24, "uri"    # Ljava/net/URI;

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->accuracy:Ljava/lang/Double;

    .line 74
    move-object/from16 v2, p2

    iput-object v2, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->alt:Ljava/lang/Double;

    .line 75
    move-object/from16 v3, p3

    iput-object v3, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->altAccuracy:Ljava/lang/Double;

    .line 76
    move-object/from16 v4, p4

    iput-object v4, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->area:Ljava/lang/String;

    .line 77
    move-object/from16 v5, p5

    iput-object v5, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->bearing:Ljava/lang/Double;

    .line 78
    move-object/from16 v6, p6

    iput-object v6, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->building:Ljava/lang/String;

    .line 79
    move-object/from16 v7, p7

    iput-object v7, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->country:Ljava/lang/String;

    .line 80
    move-object/from16 v8, p8

    iput-object v8, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->countryCode:Ljava/lang/String;

    .line 85
    invoke-static/range {p9 .. p9}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 86
    const-string v9, "WGS84"

    .end local p9    # "datum":Ljava/lang/String;
    .local v9, "datum":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v9    # "datum":Ljava/lang/String;
    .restart local p9    # "datum":Ljava/lang/String;
    :cond_0
    move-object/from16 v9, p9

    .line 89
    .end local p9    # "datum":Ljava/lang/String;
    .restart local v9    # "datum":Ljava/lang/String;
    :goto_0
    iput-object v9, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->datum:Ljava/lang/String;

    .line 90
    move-object/from16 v10, p10

    iput-object v10, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->description:Ljava/lang/String;

    .line 93
    if-eqz v1, :cond_1

    .line 94
    const/4 v11, 0x0

    .line 95
    .end local p11    # "error":Ljava/lang/Double;
    .local v11, "error":Ljava/lang/Double;
    sget-object v12, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->LOGGER:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "Error and accuracy set. Ignoring error as it is deprecated in favor of accuracy"

    invoke-virtual {v12, v13, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v11    # "error":Ljava/lang/Double;
    .restart local p11    # "error":Ljava/lang/Double;
    :cond_1
    move-object/from16 v11, p11

    .line 99
    .end local p11    # "error":Ljava/lang/Double;
    .restart local v11    # "error":Ljava/lang/Double;
    :goto_1
    iput-object v11, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->error:Ljava/lang/Double;

    .line 100
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->floor:Ljava/lang/String;

    .line 101
    move-object/from16 v13, p13

    iput-object v13, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lat:Ljava/lang/Double;

    .line 102
    move-object/from16 v14, p14

    iput-object v14, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->locality:Ljava/lang/String;

    .line 103
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lon:Ljava/lang/Double;

    .line 104
    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->postalcode:Ljava/lang/String;

    .line 105
    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->region:Ljava/lang/String;

    .line 106
    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->room:Ljava/lang/String;

    .line 107
    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->speed:Ljava/lang/Double;

    .line 108
    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->street:Ljava/lang/String;

    .line 109
    move-object/from16 v1, p21

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->text:Ljava/lang/String;

    .line 110
    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->timestamp:Ljava/util/Date;

    .line 111
    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->tzo:Ljava/lang/String;

    .line 112
    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->uri:Ljava/net/URI;

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/net/URI;Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Double;
    .param p2, "x1"    # Ljava/lang/Double;
    .param p3, "x2"    # Ljava/lang/Double;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Double;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Ljava/lang/Double;
    .param p12, "x11"    # Ljava/lang/String;
    .param p13, "x12"    # Ljava/lang/Double;
    .param p14, "x13"    # Ljava/lang/String;
    .param p15, "x14"    # Ljava/lang/Double;
    .param p16, "x15"    # Ljava/lang/String;
    .param p17, "x16"    # Ljava/lang/String;
    .param p18, "x17"    # Ljava/lang/String;
    .param p19, "x18"    # Ljava/lang/Double;
    .param p20, "x19"    # Ljava/lang/String;
    .param p21, "x20"    # Ljava/lang/String;
    .param p22, "x21"    # Ljava/util/Date;
    .param p23, "x22"    # Ljava/lang/String;
    .param p24, "x23"    # Ljava/net/URI;
    .param p25, "x24"    # Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$1;

    .line 36
    invoke-direct/range {p0 .. p24}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public static builder()Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 1

    .line 254
    new-instance v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;-><init>()V

    return-object v0
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 258
    const-string v0, "geoloc"

    const-string v1, "http://jabber.org/protocol/geoloc"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    return-object v0
.end method


# virtual methods
.method public getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public getAlt()Ljava/lang/Double;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->alt:Ljava/lang/Double;

    return-object v0
.end method

.method public getAltAccuracy()Ljava/lang/Double;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->altAccuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getBearing()Ljava/lang/Double;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->bearing:Ljava/lang/Double;

    return-object v0
.end method

.method public getBuilding()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->building:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDatum()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->datum:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 213
    const-string v0, "geoloc"

    return-object v0
.end method

.method public getError()Ljava/lang/Double;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->error:Ljava/lang/Double;

    return-object v0
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->floor:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/Double;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lon:Ljava/lang/Double;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 250
    const-string v0, "http://jabber.org/protocol/geoloc"

    return-object v0
.end method

.method public getPostalcode()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->postalcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getRoom()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->room:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/Double;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->speed:Ljava/lang/Double;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTzo()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->tzo:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 218
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 219
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 220
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->accuracy:Ljava/lang/Double;

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 221
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->alt:Ljava/lang/Double;

    const-string v2, "alt"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 222
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->altAccuracy:Ljava/lang/Double;

    const-string v2, "altaccuracy"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 223
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->area:Ljava/lang/String;

    const-string v2, "area"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 224
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->bearing:Ljava/lang/Double;

    const-string v2, "bearing"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->building:Ljava/lang/String;

    const-string v2, "building"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 226
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->country:Ljava/lang/String;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 227
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->countryCode:Ljava/lang/String;

    const-string v2, "countrycode"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 228
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->datum:Ljava/lang/String;

    const-string v2, "datum"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 229
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 230
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->error:Ljava/lang/Double;

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 231
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->floor:Ljava/lang/String;

    const-string v2, "floor"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 232
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lat:Ljava/lang/Double;

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 233
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->locality:Ljava/lang/String;

    const-string v2, "locality"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 234
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->lon:Ljava/lang/Double;

    const-string v2, "lon"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 235
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->postalcode:Ljava/lang/String;

    const-string v2, "postalcode"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 236
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->region:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 237
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->room:Ljava/lang/String;

    const-string v2, "room"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 238
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->speed:Ljava/lang/Double;

    const-string v2, "speed"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 239
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->street:Ljava/lang/String;

    const-string v2, "street"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 240
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->text:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 241
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->timestamp:Ljava/util/Date;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 242
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->tzo:Ljava/lang/String;

    const-string v2, "tzo"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 243
    iget-object v1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->uri:Ljava/net/URI;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/Object;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 244
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 245
    return-object v0
.end method
