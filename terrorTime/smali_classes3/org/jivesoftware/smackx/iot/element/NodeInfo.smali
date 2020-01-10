.class public final Lorg/jivesoftware/smackx/iot/element/NodeInfo;
.super Ljava/lang/Object;
.source "NodeInfo.java"


# static fields
.field public static final EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;


# instance fields
.field private final cacheType:Ljava/lang/String;

.field private final nodeId:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "cacheType"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Node ID must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 3
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const-string v1, "nodeId"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    const-string v2, "sourceId"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    const-string v2, "cacheType"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 84
    return v1

    .line 86
    :cond_1
    instance-of v2, p1, Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    if-nez v2, :cond_2

    .line 87
    return v1

    .line 89
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 90
    .local v2, "otherNodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    return v1

    .line 93
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/util/StringUtils;->nullSafeCharSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    .line 94
    invoke-static {v3, v4}, Lorg/jivesoftware/smack/util/StringUtils;->nullSafeCharSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    return v0

    .line 97
    :cond_4
    return v1
.end method

.method public getCacheType()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 67
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 68
    return v1

    .line 70
    :cond_0
    const/16 v0, 0x1f

    .line 71
    .local v0, "prime":I
    const/4 v2, 0x1

    .line 72
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->nodeId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 73
    .end local v2    # "result":I
    .local v3, "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->sourceId:Ljava/lang/String;

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v2, v4

    .line 74
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->cacheType:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v3, v1

    .line 75
    .end local v2    # "result":I
    .restart local v3    # "result":I
    return v3
.end method
