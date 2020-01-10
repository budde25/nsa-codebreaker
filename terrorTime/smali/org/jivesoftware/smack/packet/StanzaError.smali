.class public Lorg/jivesoftware/smack/packet/StanzaError;
.super Lorg/jivesoftware/smack/packet/AbstractError;
.source "StanzaError.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/StanzaError$Condition;,
        Lorg/jivesoftware/smack/packet/StanzaError$Type;,
        Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    }
.end annotation


# static fields
.field static final CONDITION_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/packet/StanzaError$Condition;",
            "Lorg/jivesoftware/smack/packet/StanzaError$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_CONDITION_AND_TEXT_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:xmpp-stanzas"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:xmpp-stanzas"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

.field private final conditionText:Ljava/lang/String;

.field private final errorGenerator:Ljava/lang/String;

.field private final stanza:Lorg/jivesoftware/smack/packet/Stanza;

.field private final type:Lorg/jivesoftware/smack/packet/StanzaError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    const-class v0, Lorg/jivesoftware/smack/packet/StanzaError;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->LOGGER:Ljava/util/logging/Logger;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    .line 81
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->AUTH:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->gone:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->internal_server_error:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->jid_malformed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_allowed:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_authorized:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->AUTH:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->policy_violation:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->recipient_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->WAIT:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->redirect:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->registration_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->AUTH:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->remote_server_timeout:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->WAIT:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->resource_constraint:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->WAIT:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->subscription_required:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->AUTH:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->undefined_condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->MODIFY:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Type;->WAIT:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/StanzaError$Condition;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StanzaError$Type;Ljava/util/Map;Ljava/util/List;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 4
    .param p1, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .param p2, "conditionText"    # Ljava/lang/String;
    .param p3, "errorGenerator"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/jivesoftware/smack/packet/StanzaError$Type;
    .param p7, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/StanzaError$Condition;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/StanzaError$Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ")V"
        }
    .end annotation

    .line 127
    .local p5, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    const-string v0, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-direct {p0, p5, v0, p6}, Lorg/jivesoftware/smack/packet/AbstractError;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 128
    const-string v0, "condition must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 129
    iput-object p7, p0, Lorg/jivesoftware/smack/packet/StanzaError;->stanza:Lorg/jivesoftware/smack/packet/Stanza;

    .line 133
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 p2, 0x0

    .line 136
    :cond_0
    if-eqz p2, :cond_2

    .line 137
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$1;->$SwitchMap$org$jivesoftware$smack$packet$StanzaError$Condition:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Condition text can only be set with condtion types \'gone\' and \'redirect\', not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    :goto_0
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/StanzaError;->conditionText:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/StanzaError;->errorGenerator:Ljava/lang/String;

    .line 149
    if-nez p4, :cond_4

    .line 150
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError;->CONDITION_TO_TYPE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/StanzaError$Type;

    .line 151
    .local v0, "determinedType":Lorg/jivesoftware/smack/packet/StanzaError$Type;
    if-nez v0, :cond_3

    .line 152
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine type for condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    .line 155
    :cond_3
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->type:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    .line 156
    .end local v0    # "determinedType":Lorg/jivesoftware/smack/packet/StanzaError$Type;
    goto :goto_1

    .line 157
    :cond_4
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/StanzaError;->type:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    .line 159
    :goto_1
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/StanzaError$Condition;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .locals 3
    .param p0, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .param p1, "descriptiveText"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 258
    .local v0, "builder":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    if-eqz p1, :cond_0

    .line 259
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "en"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setDescriptiveTexts(Ljava/util/Map;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 263
    .end local v1    # "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public static getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .locals 2

    .line 267
    new-instance v0, Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;-><init>(Lorg/jivesoftware/smack/packet/StanzaError$1;)V

    return-object v0
.end method

.method public static getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .locals 1
    .param p0, "condition"    # Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    .line 271
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getBuilder(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .locals 1
    .param p0, "xmppError"    # Lorg/jivesoftware/smack/packet/StanzaError;

    .line 275
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->copyFrom(Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    return-object v0
.end method

.method public getConditionText()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->conditionText:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 215
    const-string v0, "error"

    return-object v0
.end method

.method public getErrorGenerator()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->errorGenerator:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 220
    const-string v0, "jabber:client"

    return-object v0
.end method

.method public getStanza()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->stanza:Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/StanzaError$Type;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StanzaError;->type:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XMPPError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->type:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/StanzaError;->getDescriptiveText()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "descriptiveText":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 204
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/StanzaError;->errorGenerator:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 208
    const-string v2, ". Generated by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/StanzaError;->errorGenerator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/StanzaError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/StanzaError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 234
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;Ljava/lang/String;)V

    .line 235
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->type:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 236
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->errorGenerator:Ljava/lang/String;

    const-string v2, "by"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 237
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 239
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 240
    const-string v1, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 241
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->conditionText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 243
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->conditionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 244
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StanzaError;->condition:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 250
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/StanzaError;->addDescriptiveTextsAndExtensions(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 252
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 253
    return-object v0
.end method
