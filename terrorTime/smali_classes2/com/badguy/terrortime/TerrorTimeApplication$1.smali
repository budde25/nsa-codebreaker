.class Lcom/badguy/terrortime/TerrorTimeApplication$1;
.super Landroid/os/AsyncTask;
.source "TerrorTimeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/TerrorTimeApplication;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/TerrorTimeApplication;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/TerrorTimeApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 170
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/TerrorTimeApplication$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 173
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->disconnect()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$102(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$202(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/vcardtemp/VCardManager;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 180
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$502(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jivesoftware/smackx/mam/MamManager;

    .line 181
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$302(Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/ContactList;)Lcom/badguy/terrortime/ContactList;

    .line 182
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$1;->this$0:Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$402(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/ReconnectionManager;

    .line 183
    return-object v1
.end method
