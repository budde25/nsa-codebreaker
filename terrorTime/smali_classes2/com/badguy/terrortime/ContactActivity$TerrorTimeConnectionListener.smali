.class Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/ContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerrorTimeConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method private constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/badguy/terrortime/ContactActivity;
    .param p2, "x1"    # Lcom/badguy/terrortime/ContactActivity$1;

    .line 343
    invoke-direct {p0, p1}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 352
    const-string v0, "connection_status"

    const-string v1, "authenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method public connected(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 347
    const-string v0, "connection_status"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public connectionClosed()V
    .locals 2

    .line 358
    const-string v0, "connection_status"

    const-string v1, "closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 363
    const-string v0, "connection_status"

    const-string v1, "closed on error "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    new-instance v1, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;-><init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/ContactActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method
