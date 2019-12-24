.class public Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError_V0_2;
.super Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;
.source "FileTooLargeError_V0_2.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "maxFileSize"    # J

    .line 26
    const-string v0, "urn:xmpp:http:upload"

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;-><init>(JLjava/lang/String;)V

    .line 27
    return-void
.end method
