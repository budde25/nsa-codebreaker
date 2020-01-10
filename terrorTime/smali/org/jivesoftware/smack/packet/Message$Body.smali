.class public final Lorg/jivesoftware/smack/packet/Message$Body;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "body"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:client"


# instance fields
.field private final language:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final namespace:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 642
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->client:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smack/packet/Message$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;)V

    .line 643
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    if-eqz p2, :cond_0

    .line 649
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    .line 650
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    .line 651
    invoke-static {p3}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->namespace:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    .line 652
    return-void

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Message cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Message$Body;

    .line 616
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Message$Body;

    .line 616
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 686
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 687
    return v0

    .line 689
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 690
    return v1

    .line 692
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 693
    return v1

    .line 695
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 697
    .local v2, "other":Lorg/jivesoftware/smack/packet/Message$Body;
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 702
    const-string v0, "body"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 707
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body;->namespace:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->access$500(Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 675
    const/16 v0, 0x1f

    .line 676
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 677
    .local v1, "result":I
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 678
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v1, v3, v2

    .line 680
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 681
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 616
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Message$Body;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 712
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;Ljava/lang/String;)V

    .line 713
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Body;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optXmlLangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 714
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 715
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Body;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 716
    return-object v0
.end method
