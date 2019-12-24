.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MamQuery"
.end annotation


# instance fields
.field private final form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field private mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

.field private final node:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smackx/mam/MamManager;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/mam/MamManager;
    .param p2, "mamQueryPage"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .param p3, "node"    # Ljava/lang/String;
    .param p4, "form"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 955
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->this$0:Lorg/jivesoftware/smackx/mam/MamManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p3, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->node:Ljava/lang/String;

    .line 957
    iput-object p4, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 959
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 960
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;Lorg/jivesoftware/smackx/mam/MamManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .param p5, "x4"    # Lorg/jivesoftware/smackx/mam/MamManager$1;

    .line 949
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;-><init>(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    .line 949
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    .line 949
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->node:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;

    .line 949
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method private getPreviousRsmSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .locals 1

    .line 987
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->getMamFinIq()Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->getRSMSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object v0

    return-object v0
.end method

.method private page(Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Ljava/util/List;
    .locals 4
    .param p1, "requestRsmSet"    # Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/rsm/packet/RSMSet;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 976
    new-instance v0, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->node:Ljava/lang/String;

    iget-object v3, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 977
    .local v0, "mamQueryIQ":Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 978
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->this$0:Lorg/jivesoftware/smackx/mam/MamManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/mam/MamManager;->access$2100(Lorg/jivesoftware/smackx/mam/MamManager;)Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 979
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 981
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->this$0:Lorg/jivesoftware/smackx/mam/MamManager;

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/mam/MamManager;->access$2200(Lorg/jivesoftware/smackx/mam/MamManager;Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    .line 983
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    invoke-static {v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->access$1900(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMamResultExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    invoke-static {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->access$2000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    invoke-static {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->access$1900(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPage()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->mamQueryPage:Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryPage;->getMamFinIq()Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;->isComplete()Z

    move-result v0

    return v0
.end method

.method public pageNext(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 992
    invoke-direct {p0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getPreviousRsmSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object v0

    .line 993
    .local v0, "previousResultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;->getLast()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;->after:Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;

    invoke-direct {v1, p1, v2, v3}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(ILjava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;)V

    .line 994
    .local v1, "requestRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->page(Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public pagePrevious(I)Ljava/util/List;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 999
    invoke-direct {p0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->getPreviousRsmSet()Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object v0

    .line 1000
    .local v0, "previousResultRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    new-instance v1, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;->getFirst()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;->before:Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;

    invoke-direct {v1, p1, v2, v3}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(ILjava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet$PageDirection;)V

    .line 1001
    .local v1, "requestRsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQuery;->page(Lorg/jivesoftware/smackx/rsm/packet/RSMSet;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
