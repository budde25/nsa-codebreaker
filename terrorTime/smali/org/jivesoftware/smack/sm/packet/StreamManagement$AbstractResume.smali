.class abstract Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;
.super Ljava/lang/Object;
.source "StreamManagement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Nonza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sm/packet/StreamManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractResume"
.end annotation


# instance fields
.field private final handledCount:J

.field private final previd:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "handledCount"    # J
    .param p3, "previd"    # Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-wide p1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->handledCount:J

    .line 259
    iput-object p3, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->previd:Ljava/lang/String;

    .line 260
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/jivesoftware/smack/sm/packet/StreamManagement$1;

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHandledCount()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->handledCount:J

    return-wide v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 272
    const-string v0, "urn:xmpp:sm:3"

    return-object v0
.end method

.method public getPrevId()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->previd:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 277
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 278
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-wide v1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->handledCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 279
    iget-object v1, p0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AbstractResume;->previd:Ljava/lang/String;

    const-string v2, "previd"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 280
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 281
    return-object v0
.end method
