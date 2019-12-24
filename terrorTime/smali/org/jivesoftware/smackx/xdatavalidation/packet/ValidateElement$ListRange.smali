.class public Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;
.super Ljava/lang/Object;
.source "ValidateElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListRange"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "list-range"


# instance fields
.field private final max:Ljava/lang/Long;

.field private final min:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1, "min"    # Ljava/lang/Long;
    .param p2, "max"    # Ljava/lang/Long;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/NumberUtil;->checkIfInUInt32Range(J)V

    .line 338
    :cond_0
    if-eqz p2, :cond_1

    .line 339
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/NumberUtil;->checkIfInUInt32Range(J)V

    .line 341
    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    .line 342
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either min or max must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->min:Ljava/lang/Long;

    .line 345
    iput-object p2, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->max:Ljava/lang/Long;

    .line 346
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, "list-range"

    return-object v0
.end method

.method public getMax()Ljava/lang/Long;
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->max:Ljava/lang/Long;

    return-object v0
.end method

.method public getMin()Ljava/lang/Long;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->min:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 350
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 351
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->getMin()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optLongAttribute(Ljava/lang/String;Ljava/lang/Long;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 352
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;->getMax()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optLongAttribute(Ljava/lang/String;Ljava/lang/Long;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 353
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 354
    return-object v0
.end method
