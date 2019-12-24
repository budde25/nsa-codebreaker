.class public final enum Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;
.super Ljava/lang/Enum;
.source "StreamOpen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/StreamOpen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamContentNamespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

.field public static final enum client:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

.field public static final enum server:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    new-instance v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    const/4 v1, 0x0

    const-string v2, "client"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->client:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    .line 117
    new-instance v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    const/4 v2, 0x1

    const-string v3, "server"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->server:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    sget-object v3, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->client:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->server:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->$VALUES:[Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 115
    const-class v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;
    .locals 1

    .line 115
    sget-object v0, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->$VALUES:[Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    return-object v0
.end method
