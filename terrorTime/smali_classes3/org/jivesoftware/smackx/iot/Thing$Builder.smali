.class public Lorg/jivesoftware/smackx/iot/Thing$Builder;
.super Ljava/lang/Object;
.source "Thing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/Thing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private controlRequest:Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;

.field private metaTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private momentaryReadOutRequest:Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;

.field private nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

.field private selfOwned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    .line 108
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iot/Thing$Builder;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/Thing$Builder;

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/iot/Thing$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/Thing$Builder;

    .line 105
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->selfOwned:Z

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/iot/Thing$Builder;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/Thing$Builder;

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/iot/Thing$Builder;)Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/Thing$Builder;

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->momentaryReadOutRequest:Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/iot/Thing$Builder;)Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/Thing$Builder;

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->controlRequest:Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;

    return-object v0
.end method


# virtual methods
.method public build()Lorg/jivesoftware/smackx/iot/Thing;
    .locals 2

    .line 158
    new-instance v0, Lorg/jivesoftware/smackx/iot/Thing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/iot/Thing;-><init>(Lorg/jivesoftware/smackx/iot/Thing$Builder;Lorg/jivesoftware/smackx/iot/Thing$1;)V

    return-object v0
.end method

.method public setControlRequestHandler(Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 0
    .param p1, "controlRequest"    # Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;

    .line 153
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->controlRequest:Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;

    .line 154
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 120
    const-string v0, "KEY"

    .line 121
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const-string v3, "KEY"

    invoke-direct {v1, v3, v2, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    .line 122
    .local v1, "tag":Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 4
    .param p1, "manufacturer"    # Ljava/lang/String;

    .line 127
    const-string v0, "MAN"

    .line 128
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const-string v3, "MAN"

    invoke-direct {v1, v3, v2, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    .line 129
    .local v1, "tag":Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 4
    .param p1, "model"    # Ljava/lang/String;

    .line 134
    const-string v0, "MODEL"

    .line 135
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const-string v3, "MODEL"

    invoke-direct {v1, v3, v2, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    .line 136
    .local v1, "tag":Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object p0
.end method

.method public setMomentaryReadOutRequestHandler(Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 0
    .param p1, "momentaryReadOutRequestHandler"    # Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;

    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->momentaryReadOutRequest:Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;

    .line 149
    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 4
    .param p1, "sn"    # Ljava/lang/String;

    .line 113
    const-string v0, "SN"

    .line 114
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const-string v3, "SN"

    invoke-direct {v1, v3, v2, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    .line 115
    .local v1, "tag":Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lorg/jivesoftware/smackx/iot/Thing$Builder;
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 141
    const-string v0, "V"

    .line 142
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->num:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    const-string v3, "V"

    invoke-direct {v1, v3, v2, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    .line 143
    .local v1, "tag":Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/Thing$Builder;->metaTags:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object p0
.end method
