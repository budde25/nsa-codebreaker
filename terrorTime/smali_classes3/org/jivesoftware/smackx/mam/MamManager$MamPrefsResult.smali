.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MamPrefsResult"
.end annotation


# instance fields
.field public final form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field public final mamPrefs:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "mamPrefs"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .param p2, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;->mamPrefs:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    .line 1238
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 1239
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .param p3, "x2"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 1232
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;-><init>(Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-void
.end method


# virtual methods
.method public asMamPrefs()Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;
    .locals 2

    .line 1242
    new-instance v0, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamPrefs;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamPrefsResult;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v0
.end method
