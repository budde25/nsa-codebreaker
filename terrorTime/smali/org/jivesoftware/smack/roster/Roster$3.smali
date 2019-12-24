.class Lorg/jivesoftware/smack/roster/Roster$3;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/Roster;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 311
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$3;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 315
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$3;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->isRosterLoadedAtLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    if-eqz p2, :cond_1

    .line 319
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$3;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$400(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$3;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/Roster;->reload()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    nop

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not reload Roster"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    return-void
.end method

.method public connectionClosed()V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$3;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v0}, Lorg/jivesoftware/smack/roster/Roster;->access$400(Lorg/jivesoftware/smack/roster/Roster;)V

    .line 339
    return-void
.end method
