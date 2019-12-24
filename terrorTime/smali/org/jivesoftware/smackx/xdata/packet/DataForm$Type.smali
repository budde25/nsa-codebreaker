.class public final enum Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
.super Ljava/lang/Enum;
.source "DataForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/xdata/packet/DataForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

.field public static final enum cancel:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

.field public static final enum form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

.field public static final enum result:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

.field public static final enum submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    const/4 v1, 0x0

    const-string v2, "form"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 55
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    const/4 v2, 0x1

    const-string v3, "submit"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 60
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    const/4 v3, 0x2

    const-string v4, "cancel"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->cancel:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    const/4 v4, 0x3

    const-string v5, "result"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->result:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    sget-object v5, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->cancel:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->result:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->$VALUES:[Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 69
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    .locals 1

    .line 46
    sget-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->$VALUES:[Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    return-object v0
.end method
