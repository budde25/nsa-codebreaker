.class public Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
.super Ljava/lang/Object;
.source "GeoLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accuracy:Ljava/lang/Double;

.field private alt:Ljava/lang/Double;

.field private altAccuracy:Ljava/lang/Double;

.field private area:Ljava/lang/String;

.field private bearing:Ljava/lang/Double;

.field private building:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private datum:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private error:Ljava/lang/Double;

.field private floor:Ljava/lang/String;

.field private lat:Ljava/lang/Double;

.field private locality:Ljava/lang/String;

.field private lon:Ljava/lang/Double;

.field private postalcode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private room:Ljava/lang/String;

.field private speed:Ljava/lang/Double;

.field private street:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private tzo:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    .locals 29

    .line 410
    move-object/from16 v0, p0

    new-instance v27, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    move-object/from16 v1, v27

    iget-object v2, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->accuracy:Ljava/lang/Double;

    iget-object v3, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->alt:Ljava/lang/Double;

    iget-object v4, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->altAccuracy:Ljava/lang/Double;

    iget-object v5, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->area:Ljava/lang/String;

    iget-object v6, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->bearing:Ljava/lang/Double;

    iget-object v7, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->building:Ljava/lang/String;

    iget-object v8, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->country:Ljava/lang/String;

    iget-object v9, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->countryCode:Ljava/lang/String;

    iget-object v10, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->datum:Ljava/lang/String;

    iget-object v11, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->description:Ljava/lang/String;

    iget-object v12, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->error:Ljava/lang/Double;

    iget-object v13, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->floor:Ljava/lang/String;

    iget-object v14, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->lat:Ljava/lang/Double;

    iget-object v15, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->locality:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->lon:Ljava/lang/Double;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->postalcode:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->region:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->room:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->speed:Ljava/lang/Double;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->street:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->text:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->timestamp:Ljava/util/Date;

    move-object/from16 v23, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->tzo:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->uri:Ljava/net/URI;

    move-object/from16 v25, v1

    const/16 v26, 0x0

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/net/URI;Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$1;)V

    return-object v27
.end method

.method public setAccuracy(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "accuracy"    # Ljava/lang/Double;

    .line 289
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->accuracy:Ljava/lang/Double;

    .line 290
    return-object p0
.end method

.method public setAlt(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "alt"    # Ljava/lang/Double;

    .line 294
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->alt:Ljava/lang/Double;

    .line 295
    return-object p0
.end method

.method public setAltAccuracy(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "altAccuracy"    # Ljava/lang/Double;

    .line 299
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->altAccuracy:Ljava/lang/Double;

    .line 300
    return-object p0
.end method

.method public setArea(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->area:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public setBearing(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "bearing"    # Ljava/lang/Double;

    .line 309
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->bearing:Ljava/lang/Double;

    .line 310
    return-object p0
.end method

.method public setBuilding(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "building"    # Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->building:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 319
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->country:Ljava/lang/String;

    .line 320
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->countryCode:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setDatum(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "datum"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->datum:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->description:Ljava/lang/String;

    .line 335
    return-object p0
.end method

.method public setError(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "error"    # Ljava/lang/Double;

    .line 339
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->error:Ljava/lang/Double;

    .line 340
    return-object p0
.end method

.method public setFloor(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "floor"    # Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->floor:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public setLat(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "lat"    # Ljava/lang/Double;

    .line 349
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->lat:Ljava/lang/Double;

    .line 350
    return-object p0
.end method

.method public setLocality(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "locality"    # Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->locality:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public setLon(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "lon"    # Ljava/lang/Double;

    .line 359
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->lon:Ljava/lang/Double;

    .line 360
    return-object p0
.end method

.method public setPostalcode(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "postalcode"    # Ljava/lang/String;

    .line 364
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->postalcode:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->region:Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public setRoom(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "room"    # Ljava/lang/String;

    .line 374
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->room:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public setSpeed(Ljava/lang/Double;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "speed"    # Ljava/lang/Double;

    .line 379
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->speed:Ljava/lang/Double;

    .line 380
    return-object p0
.end method

.method public setStreet(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->street:Ljava/lang/String;

    .line 385
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->text:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 394
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->timestamp:Ljava/util/Date;

    .line 395
    return-object p0
.end method

.method public setTzo(Ljava/lang/String;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "tzo"    # Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->tzo:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public setUri(Ljava/net/URI;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 404
    iput-object p1, p0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->uri:Ljava/net/URI;

    .line 405
    return-object p0
.end method
