.class Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;
.super Ljava/lang/Object;
.source "ScramMechanism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sasl/core/ScramMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Keys"
.end annotation


# instance fields
.field private final clientKey:[B

.field private final serverKey:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .param p1, "clientKey"    # [B
    .param p2, "serverKey"    # [B

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->clientKey:[B

    .line 414
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->serverKey:[B

    .line 415
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;

    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->serverKey:[B

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;

    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramMechanism$Keys;->clientKey:[B

    return-object v0
.end method
