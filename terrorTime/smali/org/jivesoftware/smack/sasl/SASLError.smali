.class public final enum Lorg/jivesoftware/smack/sasl/SASLError;
.super Ljava/lang/Enum;
.source "SASLError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/sasl/SASLError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/sasl/SASLError;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final enum aborted:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum account_disabled:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum credentials_expired:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum encryption_required:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum incorrect_encoding:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum invalid_authzid:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum invalid_mechanism:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum malformed_request:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum mechanism_too_weak:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum not_authorized:Lorg/jivesoftware/smack/sasl/SASLError;

.field public static final enum temporary_auth_failure:Lorg/jivesoftware/smack/sasl/SASLError;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v1, 0x0

    const-string v2, "aborted"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->aborted:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v2, 0x1

    const-string v3, "account_disabled"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->account_disabled:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 31
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v3, 0x2

    const-string v4, "credentials_expired"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->credentials_expired:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 32
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v4, 0x3

    const-string v5, "encryption_required"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->encryption_required:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 33
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v5, 0x4

    const-string v6, "incorrect_encoding"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->incorrect_encoding:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 34
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v6, 0x5

    const-string v7, "invalid_authzid"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->invalid_authzid:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 35
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v7, 0x6

    const-string v8, "invalid_mechanism"

    invoke-direct {v0, v8, v7}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->invalid_mechanism:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 36
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/4 v8, 0x7

    const-string v9, "malformed_request"

    invoke-direct {v0, v9, v8}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->malformed_request:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 37
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/16 v9, 0x8

    const-string v10, "mechanism_too_weak"

    invoke-direct {v0, v10, v9}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->mechanism_too_weak:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 38
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/16 v10, 0x9

    const-string v11, "not_authorized"

    invoke-direct {v0, v11, v10}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->not_authorized:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 39
    new-instance v0, Lorg/jivesoftware/smack/sasl/SASLError;

    const/16 v11, 0xa

    const-string v12, "temporary_auth_failure"

    invoke-direct {v0, v12, v11}, Lorg/jivesoftware/smack/sasl/SASLError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->temporary_auth_failure:Lorg/jivesoftware/smack/sasl/SASLError;

    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/jivesoftware/smack/sasl/SASLError;

    sget-object v12, Lorg/jivesoftware/smack/sasl/SASLError;->aborted:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v12, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->account_disabled:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->credentials_expired:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->encryption_required:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->incorrect_encoding:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->invalid_authzid:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->invalid_mechanism:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v7

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->malformed_request:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v8

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->mechanism_too_weak:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v9

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->not_authorized:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v10

    sget-object v1, Lorg/jivesoftware/smack/sasl/SASLError;->temporary_auth_failure:Lorg/jivesoftware/smack/sasl/SASLError;

    aput-object v1, v0, v11

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->$VALUES:[Lorg/jivesoftware/smack/sasl/SASLError;

    .line 41
    const-class v0, Lorg/jivesoftware/smack/sasl/SASLError;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/sasl/SASLError;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .line 48
    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "saslError":Lorg/jivesoftware/smack/sasl/SASLError;
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smack/sasl/SASLError;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/sasl/SASLError;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jivesoftware/smack/sasl/SASLError;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not transform string \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to SASLError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/sasl/SASLError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jivesoftware/smack/sasl/SASLError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/sasl/SASLError;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/sasl/SASLError;
    .locals 1

    .line 27
    sget-object v0, Lorg/jivesoftware/smack/sasl/SASLError;->$VALUES:[Lorg/jivesoftware/smack/sasl/SASLError;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/sasl/SASLError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/sasl/SASLError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLError;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
