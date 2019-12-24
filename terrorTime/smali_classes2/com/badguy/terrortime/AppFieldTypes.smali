.class final enum Lcom/badguy/terrortime/AppFieldTypes;
.super Ljava/lang/Enum;
.source "AppField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badguy/terrortime/AppFieldTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badguy/terrortime/AppFieldTypes;

.field public static final enum BIN:Lcom/badguy/terrortime/AppFieldTypes;

.field public static final enum INT:Lcom/badguy/terrortime/AppFieldTypes;

.field public static final enum TEXT:Lcom/badguy/terrortime/AppFieldTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/badguy/terrortime/AppFieldTypes;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    invoke-direct {v0, v2, v1}, Lcom/badguy/terrortime/AppFieldTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badguy/terrortime/AppFieldTypes;->TEXT:Lcom/badguy/terrortime/AppFieldTypes;

    .line 5
    new-instance v0, Lcom/badguy/terrortime/AppFieldTypes;

    const/4 v2, 0x1

    const-string v3, "INT"

    invoke-direct {v0, v3, v2}, Lcom/badguy/terrortime/AppFieldTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badguy/terrortime/AppFieldTypes;->INT:Lcom/badguy/terrortime/AppFieldTypes;

    .line 6
    new-instance v0, Lcom/badguy/terrortime/AppFieldTypes;

    const/4 v3, 0x2

    const-string v4, "BIN"

    invoke-direct {v0, v4, v3}, Lcom/badguy/terrortime/AppFieldTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badguy/terrortime/AppFieldTypes;->BIN:Lcom/badguy/terrortime/AppFieldTypes;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badguy/terrortime/AppFieldTypes;

    sget-object v4, Lcom/badguy/terrortime/AppFieldTypes;->TEXT:Lcom/badguy/terrortime/AppFieldTypes;

    aput-object v4, v0, v1

    sget-object v1, Lcom/badguy/terrortime/AppFieldTypes;->INT:Lcom/badguy/terrortime/AppFieldTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badguy/terrortime/AppFieldTypes;->BIN:Lcom/badguy/terrortime/AppFieldTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/badguy/terrortime/AppFieldTypes;->$VALUES:[Lcom/badguy/terrortime/AppFieldTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badguy/terrortime/AppFieldTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/badguy/terrortime/AppFieldTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/AppFieldTypes;

    return-object v0
.end method

.method public static values()[Lcom/badguy/terrortime/AppFieldTypes;
    .locals 1

    .line 3
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->$VALUES:[Lcom/badguy/terrortime/AppFieldTypes;

    invoke-virtual {v0}, [Lcom/badguy/terrortime/AppFieldTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badguy/terrortime/AppFieldTypes;

    return-object v0
.end method
