.class public abstract Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
.super Ljava/lang/Object;
.source "IoTDataField.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;,
        Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$IntField;,
        Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

.field private valueString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;
    .param p2, "name"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->type:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    .line 42
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->name:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final getElementName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->type:Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;->access$000(Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getValueInternal()Ljava/lang/String;
.end method

.method public final getValueString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->valueString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->getValueInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->valueString:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 57
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;->getValueString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 59
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    return-object v0
.end method
