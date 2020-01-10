.class Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;
.super Ljava/lang/Object;
.source "PrivacyListManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/privacy/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    .line 173
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 176
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    .line 179
    .local v0, "privacy":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "activeList":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    iget-object v2, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-static {v2, v1}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->access$202(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "defaultList":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 185
    iget-object v3, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-static {v3, v2}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->access$402(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_1
    return-void
.end method
