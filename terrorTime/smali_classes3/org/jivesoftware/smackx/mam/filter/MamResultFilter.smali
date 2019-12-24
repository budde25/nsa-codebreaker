.class public Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;
.super Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;
.source "MamResultFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter<",
        "Lorg/jivesoftware/smack/packet/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private final queryId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)V
    .locals 1
    .param p1, "mamQueryIQ"    # Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    .line 38
    const-class v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->getQueryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;->queryId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 4
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 44
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    move-result-object v0

    .line 46
    .local v0, "mamResultExtension":Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 50
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;->getQueryId()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "resultQueryId":Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;->queryId:Ljava/lang/String;

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;->queryId:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method protected bridge synthetic acceptSpecific(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 0

    .line 33
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/mam/filter/MamResultFilter;->acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result p1

    return p1
.end method
