.class public final enum Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum DELETE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum GET:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum HEAD:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum OPTIONS:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum PATCH:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum POST:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum PUT:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field public static final enum TRACE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "OPTIONS"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->OPTIONS:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "GET"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->GET:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 28
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "HEAD"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->HEAD:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "POST"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->POST:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "PUT"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->PUT:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v6, 0x5

    const-string v7, "DELETE"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->DELETE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 32
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v7, 0x6

    const-string v8, "TRACE"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->TRACE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const/4 v8, 0x7

    const-string v9, "PATCH"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->PATCH:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    sget-object v9, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->OPTIONS:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v9, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->GET:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->HEAD:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->POST:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->PUT:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->DELETE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->TRACE:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->PATCH:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    aput-object v1, v0, v8

    sput-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->$VALUES:[Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->$VALUES:[Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    return-object v0
.end method
