.class public Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;
.super Ljava/lang/Object;
.source "StreamInitiation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field private final data:Lorg/jivesoftware/smackx/xdata/packet/DataForm;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "data"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->data:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 386
    return-void
.end method


# virtual methods
.method public getData()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->data:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 404
    const-string v0, "feature"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 399
    const-string v0, "http://jabber.org/protocol/feature-neg"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 375
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v0, "buf":Ljava/lang/StringBuilder;
    nop

    .line 411
    const-string v1, "<feature xmlns=\"http://jabber.org/protocol/feature-neg\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-object v1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$Feature;->data:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 413
    const-string v1, "</feature>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
