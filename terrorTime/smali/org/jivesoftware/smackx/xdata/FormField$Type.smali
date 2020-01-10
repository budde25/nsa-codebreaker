.class public final enum Lorg/jivesoftware/smackx/xdata/FormField$Type;
.super Ljava/lang/Enum;
.source "FormField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdata/FormField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/xdata/FormField$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum bool:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum jid_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum jid_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum list_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum list_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum text_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum text_private:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field public static final enum text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 64
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v1, 0x0

    const-string v2, "bool"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->bool:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 69
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v2, 0x1

    const-string v3, "fixed"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 74
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v3, 0x2

    const-string v4, "hidden"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 79
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v4, 0x3

    const-string v5, "jid_multi"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->jid_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v5, 0x4

    const-string v6, "jid_single"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->jid_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 89
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v6, 0x5

    const-string v7, "list_multi"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 94
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v7, 0x6

    const-string v8, "list_single"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 99
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/4 v8, 0x7

    const-string v9, "text_multi"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 104
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/16 v9, 0x8

    const-string v10, "text_private"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_private:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 109
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    const/16 v10, 0x9

    const-string v11, "text_single"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smackx/xdata/FormField$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/jivesoftware/smackx/xdata/FormField$Type;

    sget-object v11, Lorg/jivesoftware/smackx/xdata/FormField$Type;->bool:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v11, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->jid_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->jid_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->list_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_multi:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_private:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smackx/xdata/FormField$Type;->text_single:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    aput-object v1, v0, v10

    sput-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->$VALUES:[Lorg/jivesoftware/smackx/xdata/FormField$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField$Type;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3db6c28

    if-eq v1, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 136
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v0

    return-object v0

    .line 134
    :cond_3
    sget-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->bool:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    const-class v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/xdata/FormField$Type;
    .locals 1

    .line 55
    sget-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->$VALUES:[Lorg/jivesoftware/smackx/xdata/FormField$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/xdata/FormField$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/xdata/FormField$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 114
    sget-object v0, Lorg/jivesoftware/smackx/xdata/FormField$1;->$SwitchMap$org$jivesoftware$smackx$xdata$FormField$Type:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-string v0, "boolean"

    return-object v0
.end method
