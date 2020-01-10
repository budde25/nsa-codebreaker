.class public Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;
.super Lorg/jivesoftware/smackx/iot/control/element/SetData;
.source "SetDoubleData.java"


# instance fields
.field private doubleCache:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 22
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;->doubleCache:Ljava/lang/Double;

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 27
    sget-object v0, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->DOUBLE:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/iot/control/element/SetData;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getDoubleValue()Ljava/lang/Double;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;->doubleCache:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;->doubleCache:Ljava/lang/Double;

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;->doubleCache:Ljava/lang/Double;

    return-object v0
.end method
