.class public final enum Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;
.super Ljava/lang/Enum;
.source "AbstractJidTypeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "JidType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

.field public static final enum any:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

.field public static final enum domainBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

.field public static final enum domainFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

.field public static final enum entityBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

.field public static final enum entityFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    const/4 v1, 0x0

    const-string v2, "entityFull"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->entityFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 27
    new-instance v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    const/4 v2, 0x1

    const-string v3, "entityBare"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->entityBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 28
    new-instance v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    const/4 v3, 0x2

    const-string v4, "domainFull"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->domainFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 29
    new-instance v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    const/4 v4, 0x3

    const-string v5, "domainBare"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->domainBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    const/4 v5, 0x4

    const-string v6, "any"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->any:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    sget-object v6, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->entityFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    aput-object v6, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->entityBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->domainFull:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->domainBare:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->any:Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->$VALUES:[Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->$VALUES:[Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/filter/AbstractJidTypeFilter$JidType;

    return-object v0
.end method
