.class public Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;
.super Lorg/jivesoftware/smack/sasl/core/ScramMechanism;
.source "SCRAMSHA1Mechanism.java"


# static fields
.field public static final NAME:Ljava/lang/String;

.field static final PRIORITY:I = 0x6e

.field static final SHA_1_SCRAM_HMAC:Lorg/jivesoftware/smack/sasl/core/ScramHmac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;->SHA_1_SCRAM_HMAC:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    .line 39
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;-><init>()V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;->NAME:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    sget-object v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;->SHA_1_SCRAM_HMAC:Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;-><init>(Lorg/jivesoftware/smack/sasl/core/ScramHmac;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    .line 52
    const/16 v0, 0x6e

    return v0
.end method

.method protected newInstance()Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .locals 1

    .line 57
    new-instance v0, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/core/SCRAMSHA1Mechanism;-><init>()V

    return-object v0
.end method
