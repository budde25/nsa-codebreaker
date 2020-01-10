.class Lcom/badguy/terrortime/ClientCredentialTokenRequest$2;
.super Ljava/lang/Object;
.source "ClientCredentialTokenRequest.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ClientCredentialTokenRequest;->requestAccessToken()Lcom/badguy/terrortime/ClientCredentialTokenRequest$tokenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ClientCredentialTokenRequest;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ClientCredentialTokenRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/ClientCredentialTokenRequest;

    .line 146
    iput-object p1, p0, Lcom/badguy/terrortime/ClientCredentialTokenRequest$2;->this$0:Lcom/badguy/terrortime/ClientCredentialTokenRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 149
    const/4 v0, 0x1

    return v0
.end method
