.class public Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
.source "JingleFileTransfer.java"


# static fields
.field public static final NAMESPACE_V5:Ljava/lang/String; = "urn:xmpp:jingle:apps:file-transfer:5"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;-><init>(Ljava/util/List;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "urn:xmpp:jingle:apps:file-transfer:5"

    return-object v0
.end method
