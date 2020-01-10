.class public abstract Lorg/jivesoftware/smack/packet/AbstractError$Builder;
.super Ljava/lang/Object;
.source "AbstractError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/AbstractError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/jivesoftware/smack/packet/AbstractError$Builder<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected descriptiveTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation
.end field

.field protected textNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .locals 1
    .param p1, "extension"    # Lorg/jivesoftware/smack/packet/ExtensionElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ")TB;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->extensions:Ljava/util/List;

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public setDescriptiveEnText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .locals 2
    .param p1, "descriptiveEnText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptiveTexts(Ljava/util/Map;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    .local p1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    .line 129
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 135
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 133
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "descriptiveTexts cannot contain null key"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 137
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->descriptiveTexts:Ljava/util/Map;

    goto :goto_1

    .line 140
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExtensions(Ljava/util/List;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)TB;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->extensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->extensions:Ljava/util/List;

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTextNamespace(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;
    .locals 1
    .param p1, "textNamespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/jivesoftware/smack/packet/AbstractError$Builder;, "Lorg/jivesoftware/smack/packet/AbstractError$Builder<TB;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->textNamespace:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/AbstractError$Builder;->getThis()Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v0

    return-object v0
.end method
