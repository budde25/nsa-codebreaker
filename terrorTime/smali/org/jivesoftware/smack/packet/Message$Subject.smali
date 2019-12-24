.class public final Lorg/jivesoftware/smack/packet/Message$Subject;
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
    name = "Subject"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "subject"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:client"


# instance fields
.field private final language:Ljava/lang/String;

.field private final subject:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    if-eqz p2, :cond_0

    .line 542
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    .line 543
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    .line 544
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Subject cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/jivesoftware/smack/packet/Message$1;

    .line 530
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/Message$Subject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 578
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 579
    return v0

    .line 581
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 582
    return v1

    .line 584
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 585
    return v1

    .line 587
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 589
    .local v2, "other":Lorg/jivesoftware/smack/packet/Message$Subject;
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

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

    .line 594
    const-string v0, "subject"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 599
    const-string v0, "jabber:client"

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 567
    const/16 v0, 0x1f

    .line 568
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 569
    .local v1, "result":I
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 570
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v1, v3, v2

    .line 572
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 573
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 530
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Message$Subject;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 604
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 605
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Subject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Subject;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optXmlLangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 606
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 607
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message$Subject;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 608
    return-object v0
.end method
