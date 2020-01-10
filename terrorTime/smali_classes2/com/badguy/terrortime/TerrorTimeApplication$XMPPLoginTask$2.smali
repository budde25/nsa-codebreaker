.class Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$2;
.super Ljava/lang/Object;
.source "TerrorTimeApplication.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;

    .line 91
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$2;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
