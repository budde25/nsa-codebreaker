.class public final enum Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
.super Ljava/lang/Enum;
.source "MUCLightAffiliation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

.field public static final enum member:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

.field public static final enum none:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

.field public static final enum owner:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    const/4 v1, 0x0

    const-string v2, "owner"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->owner:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    const/4 v2, 0x1

    const-string v3, "member"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->member:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    const/4 v3, 0x2

    const-string v4, "none"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->none:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    sget-object v4, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->owner:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->member:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->none:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->$VALUES:[Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;
    .locals 1

    .line 27
    sget-object v0, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->$VALUES:[Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    return-object v0
.end method
