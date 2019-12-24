.class Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$1;
.super Ljava/lang/Object;
.source "StableUniqueStanzaIdManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 52
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 53
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v0}, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;->addOriginId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

    .line 54
    return-void
.end method
