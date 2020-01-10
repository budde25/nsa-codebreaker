.class Lorg/jivesoftware/smack/roster/Roster$5;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/ExceptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/roster/Roster;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jivesoftware/smack/util/ExceptionCallback<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/roster/Roster;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 454
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster$5;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 458
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster$5;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$RosterState;->uninitialized:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/roster/Roster;->access$702(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$RosterState;)Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 460
    instance-of v0, p1, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .local v0, "logLevel":Ljava/util/logging/Level;
    goto :goto_0

    .line 463
    .end local v0    # "logLevel":Ljava/util/logging/Level;
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 465
    .restart local v0    # "logLevel":Ljava/util/logging/Level;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Exception reloading roster"

    invoke-virtual {v1, v0, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster$5;->this$0:Lorg/jivesoftware/smack/roster/Roster;

    invoke-static {v1}, Lorg/jivesoftware/smack/roster/Roster;->access$800(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterLoadedListener;

    .line 467
    .local v2, "listener":Lorg/jivesoftware/smack/roster/RosterLoadedListener;
    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/roster/RosterLoadedListener;->onRosterLoadingFailed(Ljava/lang/Exception;)V

    .line 468
    .end local v2    # "listener":Lorg/jivesoftware/smack/roster/RosterLoadedListener;
    goto :goto_1

    .line 469
    :cond_1
    return-void
.end method

.method public bridge synthetic processException(Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster$5;->processException(Ljava/lang/Exception;)V

    return-void
.end method
