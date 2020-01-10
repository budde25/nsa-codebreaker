.class public Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;
.super Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;
.source "IoTFieldsExtensionFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter<",
        "Lorg/jivesoftware/smack/packet/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private final onlyDone:Z

.field private final seqNr:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "seqNr"    # I
    .param p2, "onlyDone"    # Z

    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;-><init>()V

    .line 30
    iput p1, p0, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;->seqNr:I

    .line 31
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;->onlyDone:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 4
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 36
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    move-result-object v0

    .line 37
    .local v0, "iotFieldsExtension":Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    return v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->getSequenceNr()I

    move-result v2

    iget v3, p0, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;->seqNr:I

    if-eq v2, v3, :cond_1

    .line 41
    return v1

    .line 43
    :cond_1
    iget-boolean v2, p0, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;->onlyDone:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    return v1

    .line 46
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected bridge synthetic acceptSpecific(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 0

    .line 24
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;->acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result p1

    return p1
.end method
