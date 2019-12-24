.class public final enum Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
.super Ljava/lang/Enum;
.source "InBandBytestreamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StanzaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

.field public static final enum IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

.field public static final enum MESSAGE:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    const/4 v1, 0x0

    const-string v2, "IQ"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 100
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    const/4 v2, 0x1

    const-string v3, "MESSAGE"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->MESSAGE:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    sget-object v3, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->IQ:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->MESSAGE:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->$VALUES:[Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 90
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;
    .locals 1

    .line 90
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->$VALUES:[Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    return-object v0
.end method
