.class public final enum Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
.super Ljava/lang/Enum;
.source "JingleContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/JingleContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

.field public static final enum initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

.field public static final enum responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    const/4 v1, 0x0

    const-string v2, "initiator"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    const/4 v2, 0x1

    const-string v3, "responder"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    sget-object v3, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .locals 1

    .line 33
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    return-object v0
.end method
