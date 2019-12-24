.class public final enum Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
.super Ljava/lang/Enum;
.source "JingleContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/JingleContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Senders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field public static final enum both:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field public static final enum initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field public static final enum none:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field public static final enum responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    const/4 v1, 0x0

    const-string v2, "both"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->both:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    const/4 v2, 0x1

    const-string v3, "initiator"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 57
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    const/4 v3, 0x2

    const-string v4, "none"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->none:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    const/4 v4, 0x3

    const-string v5, "responder"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    sget-object v5, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->both:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->initiator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->none:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->responder:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .locals 1

    .line 54
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->$VALUES:[Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    return-object v0
.end method
