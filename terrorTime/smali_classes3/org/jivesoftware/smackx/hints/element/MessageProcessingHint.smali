.class public abstract Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;
.super Ljava/lang/Object;
.source "MessageProcessingHint.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:hints"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHintType()Lorg/jivesoftware/smackx/hints/element/MessageProcessingHintType;
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "urn:xmpp:hints"

    return-object v0
.end method
