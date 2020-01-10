.class public Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLPlainMechanism.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PLAIN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method protected authenticateInternal(Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .param p1, "cbh"    # Ljavax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CallbackHandler not (yet) supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authzidSupported()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public checkIfSuccessfulOrThrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method protected getAuthenticationText()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    if-nez v0, :cond_0

    .line 39
    const-string v0, ""

    .local v0, "authzid":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v0    # "authzid":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->authorizationId:Lorg/jxmpp/jid/EntityBareJid;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .restart local v0    # "authzid":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->authenticationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 44
    .local v1, "authcid":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->password:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 46
    .local v2, "passw":[B
    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/ByteUtils;->concat([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "PLAIN"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 56
    const/16 v0, 0x19a

    return v0
.end method

.method public bridge synthetic newInstance()Lorg/jivesoftware/smack/sasl/SASLMechanism;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;->newInstance()Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;
    .locals 1

    .line 61
    new-instance v0, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;

    invoke-direct {v0}, Lorg/jivesoftware/smack/sasl/provided/SASLPlainMechanism;-><init>()V

    return-object v0
.end method
