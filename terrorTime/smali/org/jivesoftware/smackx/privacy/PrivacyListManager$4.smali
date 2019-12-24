.class Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;
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

    .line 151
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->access$300(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 155
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    .line 156
    .local v1, "privacy":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    new-instance v2, Lorg/jivesoftware/smack/filter/IQResultReplyFilter;

    invoke-direct {v2, v1, v0}, Lorg/jivesoftware/smack/filter/IQResultReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 157
    .local v2, "iqResultReplyFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "defaultListName":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->isDeclineDefaultList()Z

    move-result v4

    .line 159
    .local v4, "declinceDefaultList":Z
    new-instance v5, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4$1;

    invoke-direct {v5, p0, v4, v3}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4$1;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;ZLjava/lang/String;)V

    invoke-interface {v0, v5, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addOneTimeSyncCallback(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 171
    return-void
.end method
