.class public final enum Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
.super Ljava/lang/Enum;
.source "ReferenceElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/reference/element/ReferenceElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

.field public static final enum data:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

.field public static final enum mention:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    const/4 v1, 0x0

    const-string v2, "mention"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->mention:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    const/4 v2, 0x1

    const-string v3, "data"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->data:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    sget-object v3, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->mention:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->data:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->$VALUES:[Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    .locals 1

    .line 41
    sget-object v0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->$VALUES:[Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    return-object v0
.end method
