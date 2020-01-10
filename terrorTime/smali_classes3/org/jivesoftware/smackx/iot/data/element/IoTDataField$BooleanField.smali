.class public Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;
.super Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
.source "IoTDataField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanField"
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 98
    sget-object v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->bool:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;-><init>(Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;Ljava/lang/String;)V

    .line 99
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;->value:Z

    .line 100
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;->value:Z

    return v0
.end method

.method protected getValueInternal()Ljava/lang/String;
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method
