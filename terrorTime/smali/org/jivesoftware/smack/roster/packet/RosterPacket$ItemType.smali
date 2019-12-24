.class public final enum Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
.super Ljava/lang/Enum;
.source "RosterPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field private static final ME:C = '\u25cf'

.field public static final enum both:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field public static final enum from:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field public static final enum none:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field public static final enum remove:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field public static final enum to:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;


# instance fields
.field private final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 351
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const/4 v1, 0x0

    const-string v2, "none"

    const/16 v3, 0x22a5

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->none:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 357
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const/4 v2, 0x1

    const-string v3, "to"

    const/16 v4, 0x2190

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->to:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 363
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const/4 v3, 0x2

    const-string v4, "from"

    const/16 v5, 0x2192

    invoke-direct {v0, v4, v3, v5}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 369
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const/4 v4, 0x3

    const-string v5, "both"

    const/16 v6, 0x2194

    invoke-direct {v0, v5, v4, v6}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 374
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const/4 v5, 0x4

    const-string v6, "remove"

    const/16 v7, 0x26a1

    invoke-direct {v0, v6, v5, v7}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 344
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    sget-object v6, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->none:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    aput-object v6, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->to:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->$VALUES:[Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .param p3, "secondSymbolChar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    .local p1, "sb":Ljava/lang/StringBuilder;
    const/16 p2, 0x25cf

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->symbol:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 389
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->none:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    return-object v0

    .line 392
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 344
    const-class v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    .locals 1

    .line 344
    sget-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->$VALUES:[Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    return-object v0
.end method


# virtual methods
.method public asSymbol()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->symbol:Ljava/lang/String;

    return-object v0
.end method
