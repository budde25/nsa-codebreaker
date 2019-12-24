.class public Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;
.super Landroid/os/AsyncTask;
.source "TerrorTimeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/TerrorTimeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMPPLoginTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/Optional<",
        "Lorg/jivesoftware/smack/AbstractXMPPConnection;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mWeakApp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/badguy/terrortime/TerrorTimeApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair<",
            "Lcom/badguy/terrortime/TerrorTimeApplication;",
            "Lcom/badguy/terrortime/Client;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "context":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/Client;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iget-object v0, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/badguy/terrortime/TerrorTimeApplication;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/badguy/terrortime/Client;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$002(Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/Client;)Lcom/badguy/terrortime/Client;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->mWeakApp:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Optional;
    .locals 9
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->mWeakApp:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 68
    .local v0, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "username_host":[Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badguy/terrortime/Client;->validateAccessToken(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;->builder()Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;

    move-result-object v2

    .line 73
    .local v2, "configBuilder":Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v4

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badguy/terrortime/Client;->getEncryptPin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badguy/terrortime/Client;->getOAuth2AccessToken(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 74
    .local v3, "token":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v2, v5, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setUsernameAndPassword(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 75
    const-string v5, "chat"

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setResource(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 76
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badguy/terrortime/Client;->getXmppServerIP()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "serverIpAndPort":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_0
    const/16 v6, 0x1bb

    .line 78
    .local v6, "port":I
    :goto_0
    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setHostAddress(Ljava/net/InetAddress;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 79
    aget-object v4, v1, v8

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setXmppDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 80
    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setPort(I)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 83
    new-instance v4, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$1;

    invoke-direct {v4, p0}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$1;-><init>(Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;)V

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 91
    new-instance v4, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$2;

    invoke-direct {v4, p0}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask$2;-><init>(Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;)V

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->setCustomX509TrustManager(Ljavax/net/ssl/X509TrustManager;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 108
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->setup(Landroid/content/Context;)Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;

    .line 109
    new-instance v4, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;->build()Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration;)V

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$102(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 110
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    const-wide/16 v7, 0x7530

    invoke-virtual {v4, v7, v8}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->setReplyTimeout(J)V

    .line 111
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$202(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/vcardtemp/VCardManager;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 112
    new-instance v4, Lcom/badguy/terrortime/ContactList;

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v7

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/badguy/terrortime/ContactList;-><init>(Lorg/jivesoftware/smack/roster/Roster;Lcom/badguy/terrortime/Client;)V

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$302(Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/ContactList;)Lcom/badguy/terrortime/ContactList;

    .line 114
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/ReconnectionManager;->getInstanceFor(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/ReconnectionManager;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$402(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/ReconnectionManager;

    .line 115
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$400(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/ReconnectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ReconnectionManager;->enableAutomaticReconnection()V

    .line 117
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->connect()Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 118
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->login()V

    .line 120
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/mam/MamManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/mam/MamManager;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$502(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jivesoftware/smackx/mam/MamManager;

    .line 121
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$500(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smackx/mam/MamManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/mam/MamManager;->isSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
    const-string v4, "MAM"

    const-string v7, "not supported"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$502(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jivesoftware/smackx/mam/MamManager;

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v4

    invoke-static {}, Lcom/badguy/terrortime/MamHelper;->getMessageArchive()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/badguy/terrortime/Client;->setMessageList(Ljava/util/List;)V

    .line 129
    :goto_1
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v4

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/badguy/terrortime/VCardHelper;->getPublicKeys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/badguy/terrortime/Client;->addPublicKeys(Ljava/util/Set;)Z

    .line 131
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 133
    .end local v2    # "configBuilder":Lorg/jivesoftware/smack/tcp/XMPPTCPConnectionConfiguration$Builder;
    .end local v3    # "token":Ljava/lang/String;
    .end local v5    # "serverIpAndPort":[Ljava/lang/String;
    .end local v6    # "port":I
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "EXCEPTION"

    const-string v4, "Error during xmpp connection setup"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->disconnect()V

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->onPostExecute(Ljava/util/Optional;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "connection":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/jivesoftware/smack/AbstractXMPPConnection;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "XMPP_INITIALIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 147
    .local v1, "result":Z
    :goto_0
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v2, "xmpptask"

    const-string v3, "sending initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 150
    return-void
.end method
