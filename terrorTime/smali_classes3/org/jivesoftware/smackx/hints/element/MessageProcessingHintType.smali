.class public final enum Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;
.super Ljava/lang/Enum;
.source "MessageProcessingHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

.field public static final enum no_copy:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

.field public static final enum no_permanent_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

.field public static final enum no_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

.field public static final enum store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    const/4 v1, 0x0

    const-string v2, "no_permanent_store"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_permanent_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    .line 22
    new-instance v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    const/4 v2, 0x1

    const-string v3, "no_store"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    .line 23
    new-instance v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    const/4 v3, 0x2

    const-string v4, "no_copy"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_copy:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    .line 24
    new-instance v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    const/4 v4, 0x3

    const-string v5, "store"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    sget-object v5, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_permanent_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->no_copy:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->store:Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->$VALUES:[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;
    .locals 1

    .line 19
    sget-object v0, Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->$VALUES:[Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;

    return-object v0
.end method
