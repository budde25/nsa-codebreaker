.class Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lorg/jivesoftware/smack/ReconnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/ContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerrorTimeReconnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method private constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badguy/terrortime/ContactActivity;
    .param p2, "x1"    # Lcom/badguy/terrortime/ContactActivity$1;

    .line 314
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    return-void
.end method


# virtual methods
.method public reconnectingIn(I)V
    .locals 2
    .param p1, "seconds"    # I

    .line 318
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    new-instance v1, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;-><init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;I)V

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/ContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 329
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/ContactActivity;->access$1000(Lcom/badguy/terrortime/ContactActivity;)Lorg/jivesoftware/smack/ReconnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->disableAutomaticReconnection()V

    .line 330
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    new-instance v1, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;-><init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;)V

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/ContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method
