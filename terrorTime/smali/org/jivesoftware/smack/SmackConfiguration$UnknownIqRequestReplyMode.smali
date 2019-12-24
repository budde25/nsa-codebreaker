.class public final enum Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;
.super Ljava/lang/Enum;
.source "SmackConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnknownIqRequestReplyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

.field public static final enum doNotReply:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

.field public static final enum replyFeatureNotImplemented:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

.field public static final enum replyServiceUnavailable:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 354
    new-instance v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    const/4 v1, 0x0

    const-string v2, "doNotReply"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->doNotReply:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 355
    new-instance v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    const/4 v2, 0x1

    const-string v3, "replyFeatureNotImplemented"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyFeatureNotImplemented:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 356
    new-instance v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    const/4 v3, 0x2

    const-string v4, "replyServiceUnavailable"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyServiceUnavailable:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    sget-object v4, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->doNotReply:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyFeatureNotImplemented:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->replyServiceUnavailable:Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->$VALUES:[Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 353
    const-class v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;
    .locals 1

    .line 353
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->$VALUES:[Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/SmackConfiguration$UnknownIqRequestReplyMode;

    return-object v0
.end method
