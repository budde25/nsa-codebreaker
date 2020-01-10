.class public Lorg/jivesoftware/smackx/iot/discovery/element/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    .param p3, "value"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "name must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->name:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->type:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    .line 39
    const-string v0, "value must not be null or empty"

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->value:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->type:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    sget-object v1, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Meta Tag string values must not be longer then 128 characters (XEP-0347 \u00a7 5.2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Meta Tag names must not be longer then 32 characters (XEP-0347 \u00a7 5.2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->getType()Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->type:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->type:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 63
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;->value:Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 65
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    return-object v0
.end method
