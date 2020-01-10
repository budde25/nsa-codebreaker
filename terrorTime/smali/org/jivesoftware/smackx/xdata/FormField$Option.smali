.class public Lorg/jivesoftware/smackx/xdata/FormField$Option;
.super Ljava/lang/Object;
.source "FormField.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdata/FormField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "option"


# instance fields
.field private label:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->label:Ljava/lang/String;

    .line 496
    iput-object p2, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    .line 497
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 543
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 544
    return v0

    .line 545
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 546
    return v1

    .line 547
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 548
    return v0

    .line 550
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    .line 552
    .local v2, "other":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    iget-object v3, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 553
    return v0

    .line 555
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->label:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_4

    move-object v3, v4

    .line 556
    .local v3, "thisLabel":Ljava/lang/String;
    :cond_4
    iget-object v5, v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;->label:Ljava/lang/String;

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v5

    .line 558
    .local v4, "otherLabel":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 559
    return v0

    .line 561
    :cond_6
    return v1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 524
    const-string v0, "option"

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 566
    const/4 v0, 0x1

    .line 567
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 568
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/FormField$Option;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 569
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 483
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 529
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 531
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 532
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 535
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 537
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 538
    return-object v0
.end method
