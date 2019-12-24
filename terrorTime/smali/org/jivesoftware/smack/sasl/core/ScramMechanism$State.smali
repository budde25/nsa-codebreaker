.class final enum Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;
.super Ljava/lang/Enum;
.source "ScramMechanism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sasl/core/ScramMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

.field public static final enum AUTH_TEXT_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

.field public static final enum INITIAL:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

.field public static final enum RESPONSE_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

.field public static final enum VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    const/4 v1, 0x0

    const-string v2, "INITIAL"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->INITIAL:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 63
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    const/4 v2, 0x1

    const-string v3, "AUTH_TEXT_SENT"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->AUTH_TEXT_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 64
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    const/4 v3, 0x2

    const-string v4, "RESPONSE_SENT"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->RESPONSE_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 65
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    const/4 v4, 0x3

    const-string v5, "VALID_SERVER_RESPONSE"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    sget-object v5, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->INITIAL:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->AUTH_TEXT_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->RESPONSE_SENT:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->VALID_SERVER_RESPONSE:Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->$VALUES:[Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;
    .locals 1

    .line 61
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->$VALUES:[Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/sasl/core/ScramMechanism$State;

    return-object v0
.end method
