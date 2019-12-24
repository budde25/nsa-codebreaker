.class public Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
.source "JingleIBBTransport.java"


# static fields
.field public static final ATTR_BLOCK_SIZE:Ljava/lang/String; = "block-size"

.field public static final ATTR_SID:Ljava/lang/String; = "sid"

.field public static final DEFAULT_BLOCK_SIZE:S = 0x1000s

.field public static final NAMESPACE_V1:Ljava/lang/String; = "urn:xmpp:jingle:transports:ibb:1"


# instance fields
.field private final blockSize:S

.field private final sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;-><init>(S)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;

    .line 42
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;-><init>(SLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1
    .param p1, "blockSize"    # S

    .line 46
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;-><init>(SLjava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 1
    .param p1, "blockSize"    # S
    .param p2, "sid"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;-><init>(Ljava/util/List;)V

    .line 51
    if-lez p1, :cond_0

    .line 52
    iput-short p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->blockSize:S

    goto :goto_0

    .line 54
    :cond_0
    const/16 v0, 0x1000

    iput-short v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->blockSize:S

    .line 56
    :goto_0
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->sid:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 69
    iget-short v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->blockSize:S

    const-string v1, "block-size"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->sid:Ljava/lang/String;

    const-string v1, "sid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 71
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    if-eq p0, p1, :cond_1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 81
    :cond_3
    :goto_0
    return v0
.end method

.method public getBlockSize()S
    .locals 1

    .line 64
    iget-short v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->blockSize:S

    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "urn:xmpp:jingle:transports:ibb:1"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
