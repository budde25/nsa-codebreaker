.class public Lorg/jivesoftware/smackx/iot/data/provider/IoTDataRequestProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTDataRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

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

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/data/provider/IoTDataRequestProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    const-string v0, "seqnr"

    const-string v1, "IoT data request without sequence number"

    invoke-static {p1, v0, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 31
    .local v0, "seqNr":I
    const-string v1, "momentary"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    .local v1, "momentary":Z
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;-><init>(IZ)V

    return-object v2
.end method
