.class Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;
.super Ljava/lang/Object;
.source "DeliveryReceiptManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;->this$0:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 7
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 164
    .local v0, "from":Lorg/jxmpp/jid/Jid;
    iget-object v1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;->this$0:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->access$100(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    .line 165
    .local v1, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    sget-object v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$5;->$SwitchMap$org$jivesoftware$smackx$receipts$DeliveryReceiptManager$AutoReceiptMode:[I

    iget-object v3, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;->this$0:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    invoke-static {v3}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->access$200(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {v1}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/roster/Roster;->isSubscribedToMyPresence(Lorg/jxmpp/jid/Jid;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    return-void

    .line 177
    :cond_1
    :goto_0
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/Message;

    .line 178
    .local v2, "messageWithReceiptRequest":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v2}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptMessageFor(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v3

    .line 179
    .local v3, "ack":Lorg/jivesoftware/smack/packet/Message;
    if-nez v3, :cond_2

    .line 180
    invoke-static {}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message stanza with receipt request from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' without a stanza ID set. Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 182
    return-void

    .line 184
    :cond_2
    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 185
    return-void

    .line 167
    .end local v2    # "messageWithReceiptRequest":Lorg/jivesoftware/smack/packet/Message;
    .end local v3    # "ack":Lorg/jivesoftware/smack/packet/Message;
    :cond_3
    return-void
.end method
