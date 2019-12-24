.class public abstract Lorg/jivesoftware/smackx/iot/control/element/SetData;
.super Ljava/lang/Object;
.source "SetData.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
    .param p3, "value"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->name:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->type:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    .line 48
    iput-object p3, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->value:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public final getElementName()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/control/element/SetData;->getType()Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->type:Lorg/jivesoftware/smackx/iot/control/element/SetData$Type;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/control/element/SetData;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 86
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 87
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 88
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/control/element/SetData;->value:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 89
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    return-object v0
.end method
