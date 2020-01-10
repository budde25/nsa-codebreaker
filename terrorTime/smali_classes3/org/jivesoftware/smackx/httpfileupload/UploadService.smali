.class public Lorg/jivesoftware/smackx/httpfileupload/UploadService;
.super Ljava/lang/Object;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    }
.end annotation


# instance fields
.field private final address:Lorg/jxmpp/jid/DomainBareJid;

.field private final maxFileSize:Ljava/lang/Long;

.field private final version:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;


# direct methods
.method constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;)V
    .locals 1
    .param p1, "address"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "version"    # Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;-><init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;Ljava/lang/Long;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;Ljava/lang/Long;)V
    .locals 1
    .param p1, "address"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "version"    # Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .param p3, "maxFileSize"    # Ljava/lang/Long;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/DomainBareJid;

    iput-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->address:Lorg/jxmpp/jid/DomainBareJid;

    .line 51
    iput-object p2, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->version:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    .line 52
    iput-object p3, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->maxFileSize:Ljava/lang/Long;

    .line 53
    return-void
.end method


# virtual methods
.method public acceptsFileOfSize(J)Z
    .locals 4
    .param p1, "size"    # J

    .line 72
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->hasMaxFileSizeLimit()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->maxFileSize:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAddress()Lorg/jxmpp/jid/DomainBareJid;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->address:Lorg/jxmpp/jid/DomainBareJid;

    return-object v0
.end method

.method public getMaxFileSize()Ljava/lang/Long;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->maxFileSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->version:Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    return-object v0
.end method

.method public hasMaxFileSizeLimit()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/UploadService;->maxFileSize:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
