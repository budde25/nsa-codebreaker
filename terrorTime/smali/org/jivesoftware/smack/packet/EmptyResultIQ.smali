.class public Lorg/jivesoftware/smack/packet/EmptyResultIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "EmptyResultIQ.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/EmptyResultIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 0
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 27
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/EmptyResultIQ;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/EmptyResultIQ;->initializeAsResultFor(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 1
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
