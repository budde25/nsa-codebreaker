.class Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$1;
.super Ljava/lang/Object;
.source "TerrorTimeApplication.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


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

    .line 83
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 86
    const/4 v0, 0x1

    return v0
.end method
