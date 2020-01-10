.class public final enum Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
.super Ljava/lang/Enum;
.source "SpanElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/message_markup/element/SpanElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpanStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

.field public static final enum code:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

.field public static final enum deleted:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

.field public static final enum emphasis:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    const/4 v1, 0x0

    const-string v2, "emphasis"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->emphasis:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    const/4 v2, 0x1

    const-string v3, "code"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->code:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    .line 70
    new-instance v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    const/4 v3, 0x2

    const-string v4, "deleted"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->deleted:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    sget-object v4, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->emphasis:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->code:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->deleted:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->$VALUES:[Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const-class v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;
    .locals 1

    .line 67
    sget-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->$VALUES:[Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    return-object v0
.end method
