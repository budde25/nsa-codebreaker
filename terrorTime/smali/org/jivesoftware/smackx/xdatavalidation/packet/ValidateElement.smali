.class public abstract Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
.super Ljava/lang/Object;
.source "ValidateElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;,
        Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;,
        Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RangeValidateElement;,
        Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$OpenValidateElement;,
        Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$BasicValidateElement;
    }
.end annotation


# static fields
.field public static final DATATYPE_XS_STRING:Ljava/lang/String; = "xs:string"

.field public static final ELEMENT:Ljava/lang/String; = "validate"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/xdata-validate"


# instance fields
.field private final datatype:Ljava/lang/String;

.field private listRange:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "datatype"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->datatype:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$1;

    .line 37
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract appendXML(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
.end method

.method public abstract checkConsistency(Lorg/jivesoftware/smackx/xdata/FormField;)V
.end method

.method protected checkListRangeConsistency(Lorg/jivesoftware/smackx/xdata/FormField;)V
    .locals 5
    .param p1, "formField"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 389
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->getListRange()Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    move-result-object v0

    .line 390
    .local v0, "listRange":Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;
    if-nez v0, :cond_0

    .line 391
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->getMax()Ljava/lang/Long;

    move-result-object v1

    .line 395
    .local v1, "max":Ljava/lang/Long;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->getMin()Ljava/lang/Long;

    move-result-object v2

    .line 396
    .local v2, "min":Ljava/lang/Long;
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-ne v3, v4, :cond_3

    .line 400
    :cond_2
    return-void

    .line 397
    :cond_3
    new-instance v3, Lorg/jivesoftware/smackx/xdatavalidation/ValidationConsistencyException;

    const-string v4, "Field type is not of type \'list-multi\' while a \'list-range\' is defined."

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/xdatavalidation/ValidationConsistencyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected checkNonMultiConsistency(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/String;)V
    .locals 5
    .param p1, "formField"    # Lorg/jivesoftware/smackx/xdata/FormField;
    .param p2, "method"    # Ljava/lang/String;

    .line 407
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->checkListRangeConsistency(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 408
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 409
    sget-object v0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$1;->$SwitchMap$org$jivesoftware$smackx$xdata$FormField$Type:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/xdatavalidation/ValidationConsistencyException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 416
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p2, v1, v2

    .line 414
    const-string v2, "Field type \'%1$s\' is not consistent with validation method \'%2$s\'."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdatavalidation/ValidationConsistencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_1
    :goto_0
    return-void
.end method

.method public getDatatype()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->datatype:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "xs:string"

    :goto_0
    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "validate"

    return-object v0
.end method

.method public getListRange()Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->listRange:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "http://jabber.org/protocol/xdata-validate"

    return-object v0
.end method

.method public setListRange(Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;)V
    .locals 0
    .param p1, "listRange"    # Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    .line 106
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->listRange:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    .line 107
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 88
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->datatype:Ljava/lang/String;

    const-string v2, "datatype"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 89
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->appendXML(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 91
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->getListRange()Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAppend(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    return-object v0
.end method
