.class public Lcom/badguy/terrortime/TerrorTimeApplication;
.super Landroid/app/Application;
.source "TerrorTimeApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mThis:Lcom/badguy/terrortime/TerrorTimeApplication;


# instance fields
.field private mClient:Lcom/badguy/terrortime/Client;

.field private mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private mContactList:Lcom/badguy/terrortime/ContactList;

.field private mMamManager:Lorg/jivesoftware/smackx/mam/MamManager;

.field private mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

.field private mVcardManager:Lorg/jivesoftware/smackx/vcardtemp/VCardManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 35
    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mClient:Lcom/badguy/terrortime/Client;

    .line 36
    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 39
    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mMamManager:Lorg/jivesoftware/smackx/mam/MamManager;

    .line 40
    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mVcardManager:Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 41
    iput-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/badguy/terrortime/TerrorTimeApplication;)Lcom/badguy/terrortime/Client;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mClient:Lcom/badguy/terrortime/Client;

    return-object v0
.end method

.method static synthetic access$002(Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/Client;)Lcom/badguy/terrortime/Client;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lcom/badguy/terrortime/Client;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mClient:Lcom/badguy/terrortime/Client;

    return-object p1
.end method

.method static synthetic access$100(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/AbstractXMPPConnection;)Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    return-object p1
.end method

.method static synthetic access$202(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/vcardtemp/VCardManager;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mVcardManager:Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    return-object p1
.end method

.method static synthetic access$302(Lcom/badguy/terrortime/TerrorTimeApplication;Lcom/badguy/terrortime/ContactList;)Lcom/badguy/terrortime/ContactList;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lcom/badguy/terrortime/ContactList;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContactList:Lcom/badguy/terrortime/ContactList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smack/ReconnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/ReconnectionManager;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lorg/jivesoftware/smack/ReconnectionManager;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/TerrorTimeApplication;)Lorg/jivesoftware/smackx/mam/MamManager;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 33
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mMamManager:Lorg/jivesoftware/smackx/mam/MamManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/badguy/terrortime/TerrorTimeApplication;Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jivesoftware/smackx/mam/MamManager;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/TerrorTimeApplication;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/mam/MamManager;

    .line 33
    iput-object p1, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mMamManager:Lorg/jivesoftware/smackx/mam/MamManager;

    return-object p1
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 45
    sget-object v0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/badguy/terrortime/TerrorTimeApplication;
    .locals 1

    .line 43
    sget-object v0, Lcom/badguy/terrortime/TerrorTimeApplication;->mThis:Lcom/badguy/terrortime/TerrorTimeApplication;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .line 170
    new-instance v0, Lcom/badguy/terrortime/TerrorTimeApplication$1;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/TerrorTimeApplication$1;-><init>(Lcom/badguy/terrortime/TerrorTimeApplication;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 185
    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method

.method public getClient()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/badguy/terrortime/Client;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mClient:Lcom/badguy/terrortime/Client;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getContactList()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/badguy/terrortime/ContactList;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContactList:Lcom/badguy/terrortime/ContactList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMamManager()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smackx/mam/MamManager;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mMamManager:Lorg/jivesoftware/smackx/mam/MamManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getReconnectionManager()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/ReconnectionManager;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getVCardManager()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smackx/vcardtemp/VCardManager;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mVcardManager:Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getXMPPTCPConnection()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/jivesoftware/smack/AbstractXMPPConnection;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public initializeXMPPTCPConnection(Lcom/badguy/terrortime/Client;)V
    .locals 2
    .param p1, "client"    # Lcom/badguy/terrortime/Client;

    .line 154
    new-instance v0, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;

    new-instance v1, Landroid/support/v4/util/Pair;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;-><init>(Landroid/support/v4/util/Pair;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/badguy/terrortime/TerrorTimeApplication$XMPPLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    sput-object p0, Lcom/badguy/terrortime/TerrorTimeApplication;->mThis:Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 52
    invoke-virtual {p0}, Lcom/badguy/terrortime/TerrorTimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContext:Landroid/content/Context;

    .line 53
    sget-object v0, Lcom/badguy/terrortime/TerrorTimeApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/jivesoftware/smack/android/AndroidSmackInitializer;->initialize(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 55
    return-void
.end method
