.class public Lcom/badguy/terrortime/ParameterValidatorClass;
.super Ljava/lang/Object;
.source "ParameterValidatorClass.java"


# instance fields
.field private final ipv4Address:Ljava/lang/String;

.field private final pin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    iput-object v0, p0, Lcom/badguy/terrortime/ParameterValidatorClass;->ipv4Address:Ljava/lang/String;

    .line 6
    const-string v0, "\\d\\d\\d\\d\\d\\d"

    iput-object v0, p0, Lcom/badguy/terrortime/ParameterValidatorClass;->pin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isValidIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isValidPassword(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 25
    if-nez p1, :cond_0

    .line 26
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isValidPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 v0, 0x0

    return v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\\d\\d\\d\\d\\d\\d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isValidUserName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 v0, 0x0

    return v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
