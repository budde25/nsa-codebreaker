.class public Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;
.super Ljava/lang/Object;
.source "DataForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdata/packet/DataForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportedData"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "reported"


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->fields:Ljava/util/List;

    .line 365
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->fields:Ljava/util/List;

    .line 366
    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/CharSequence;
    .locals 5

    .line 378
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 379
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "reported"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 381
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 382
    .local v3, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 383
    .end local v3    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 385
    return-object v0
.end method
