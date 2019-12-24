.class Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
.super Ljava/lang/Object;
.source "ClientCredentialTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/ClientCredentialTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tokenHelper"
.end annotation


# instance fields
.field expiration:Ljava/lang/Integer;

.field value:[B


# direct methods
.method public constructor <init>(Ljava/lang/Integer;[B)V
    .locals 0
    .param p1, "expiration"    # Ljava/lang/Integer;
    .param p2, "value"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->expiration:Ljava/lang/Integer;

    .line 54
    iput-object p2, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;->value:[B

    .line 55
    return-void
.end method
