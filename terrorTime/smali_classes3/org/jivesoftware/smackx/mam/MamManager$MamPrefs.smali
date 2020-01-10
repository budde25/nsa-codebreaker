.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MamPrefs"
.end annotation


# instance fields
.field private final alwaysJids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

.field private final neverJids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;)V
    .locals 3
    .param p1, "mamPrefsResult"    # Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iget-object v0, p1, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;->mamPrefs:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    .line 1253
    .local v0, "mamPrefsIq":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getAlwaysJids()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->alwaysJids:Ljava/util/List;

    .line 1254
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getNeverJids()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->neverJids:Ljava/util/List;

    .line 1255
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getDefault()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 1256
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 1246
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;

    .line 1246
    invoke-direct {p0}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->constructMamPrefsIq()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    move-result-object v0

    return-object v0
.end method

.method private constructMamPrefsIq()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .locals 4

    .line 1275
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->alwaysJids:Ljava/util/List;

    iget-object v2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->neverJids:Ljava/util/List;

    iget-object v3, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;-><init>(Ljava/util/List;Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V

    return-object v0
.end method


# virtual methods
.method public getAlwaysJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->alwaysJids:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultBehavior()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .locals 1

    .line 1263
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    return-object v0
.end method

.method public getNeverJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 1271
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->neverJids:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultBehavior(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V
    .locals 1
    .param p1, "defaultBehavior"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 1259
    const-string v0, "defaultBehavior must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 1260
    return-void
.end method
