.class Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$2;
.super Ljava/lang/Object;
.source "StableUniqueStanzaIdManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 61
    invoke-static {p1}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;

    .line 62
    return-void
.end method
