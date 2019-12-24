.class public final enum Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
.super Ljava/lang/Enum;
.source "JingleS5BTransportCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

.field public static final enum assisted:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

.field public static final enum direct:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

.field public static final enum proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

.field public static final enum tunnel:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;


# instance fields
.field private final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 78
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    const/4 v1, 0x0

    const-string v2, "assisted"

    const/16 v3, 0x78

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->assisted:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 79
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    const/4 v2, 0x1

    const-string v3, "direct"

    const/16 v4, 0x7e

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->direct:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 80
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    const/4 v3, 0x2

    const-string v4, "proxy"

    const/16 v5, 0xa

    invoke-direct {v0, v4, v3, v5}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 81
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    const/4 v4, 0x3

    const-string v5, "tunnel"

    const/16 v6, 0x6e

    invoke-direct {v0, v5, v4, v6}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->tunnel:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    sget-object v5, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->assisted:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->direct:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->proxy:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->tunnel:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->$VALUES:[Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->weight:I

    .line 92
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->values()[Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 96
    .local v3, "t":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    return-object v3

    .line 95
    .end local v3    # "t":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;
    .locals 1

    .line 77
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->$VALUES:[Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;

    return-object v0
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportCandidate$Type;->weight:I

    return v0
.end method
