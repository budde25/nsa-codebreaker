.class Lorg/jivesoftware/smackx/privacy/PrivacyListManager$2;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "PrivacyListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/privacy/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 104
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$2;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 107
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    .line 110
    .local v0, "privacy":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    iget-object v1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$2;->this$0:Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->access$000(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/privacy/PrivacyListListener;

    .line 112
    .local v2, "listener":Lorg/jivesoftware/smackx/privacy/PrivacyListListener;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getItemLists()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 113
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "listName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 115
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    invoke-interface {v2, v5}, Lorg/jivesoftware/smackx/privacy/PrivacyListListener;->updatedPrivacyList(Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :cond_0
    invoke-interface {v2, v5, v6}, Lorg/jivesoftware/smackx/privacy/PrivacyListListener;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)V

    .line 121
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;>;"
    .end local v5    # "listName":Ljava/lang/String;
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;"
    :goto_2
    goto :goto_1

    .line 122
    .end local v2    # "listener":Lorg/jivesoftware/smackx/privacy/PrivacyListListener;
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1
.end method
