.class public Lorg/jivesoftware/smack/packet/StanzaErrorTextElement;
.super Lorg/jivesoftware/smack/packet/AbstractTextElement;
.source "StanzaErrorTextElement.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:xmpp-stanzas"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/AbstractTextElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    return-object v0
.end method
