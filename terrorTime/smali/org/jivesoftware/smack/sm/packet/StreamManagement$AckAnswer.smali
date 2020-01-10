.class public Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;
.super Ljava/lang/Object;
.source "StreamManagement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Nonza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/packet/StreamManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AckAnswer"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "a"


# instance fields
.field private final handledCount:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "handledCount"    # J

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-wide p1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;->handledCount:J

    .line 318
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 339
    const-string v0, "a"

    return-object v0
.end method

.method public getHandledCount()J
    .locals 2

    .line 321
    iget-wide v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;->handledCount:J

    return-wide v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 334
    const-string v0, "urn:xmpp:sm:3"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 326
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 327
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-wide v1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;->handledCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 328
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 329
    return-object v0
.end method
