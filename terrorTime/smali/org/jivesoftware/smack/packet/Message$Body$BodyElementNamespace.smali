.class final enum Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Message$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BodyElementNamespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

.field public static final enum client:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

.field public static final enum server:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;


# instance fields
.field private final xmlNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 622
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    const/4 v1, 0x0

    const-string v2, "client"

    const-string v3, "jabber:client"

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->client:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    .line 623
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    const/4 v2, 0x1

    const-string v3, "server"

    const-string v4, "jabber:server"

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->server:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    .line 621
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    sget-object v3, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->client:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->server:Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->$VALUES:[Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "xmlNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 628
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 629
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->xmlNamespace:Ljava/lang/String;

    .line 630
    return-void
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    .line 621
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->xmlNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 621
    const-class v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;
    .locals 1

    .line 621
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->$VALUES:[Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;

    return-object v0
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message$Body$BodyElementNamespace;->xmlNamespace:Ljava/lang/String;

    return-object v0
.end method
