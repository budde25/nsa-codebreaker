.class Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager$2;
.super Landroid/content/BroadcastReceiver;
.source "ServerPingWithAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 115
    invoke-static {}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Ping Alarm broadcast received"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 117
    const-class v0, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;

    monitor-enter v0

    .line 121
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v1, "managers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;>;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/XMPPConnection;

    .line 125
    .local v3, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-static {}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling pingServerIfNecessary for connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    invoke-static {v3}, Lorg/jivesoftware/smackx/ping/PingManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/ping/PingManager;

    move-result-object v4

    .line 137
    .local v4, "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    new-instance v5, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager$2$1;

    invoke-direct {v5, p0, v4}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager$2$1;-><init>(Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager$2;Lorg/jivesoftware/smackx/ping/PingManager;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PingServerIfNecessary ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCounter()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-static {v5, v6}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    .line 143
    .end local v4    # "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    goto :goto_1

    .line 144
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT calling pingServerIfNecessary (disabled) on connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionCounter()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 147
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;>;"
    .end local v3    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :goto_1
    goto :goto_0

    .line 148
    :cond_1
    return-void

    .line 122
    .end local v1    # "managers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/ping/android/ServerPingWithAlarmManager;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
