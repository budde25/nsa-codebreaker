.class public Lorg/jivesoftware/smackx/xdata/packet/DataForm;
.super Ljava/lang/Object;
.source "DataForm.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;,
        Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;,
        Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "x"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:x:data"


# instance fields
.field private final extensionElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private final instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;",
            ">;"
        }
    .end annotation
.end field

.field private reportedData:Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

.field private title:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V
    .locals 1
    .param p1, "type"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->items:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->extensionElements:Ljava/util/List;

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->type:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 83
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 349
    const-string v0, "x"

    const-string v1, "jabber:x:data"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method


# virtual methods
.method public addExtensionElement(Lorg/jivesoftware/smack/packet/Element;)V
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Element;

    .line 283
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->extensionElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public addField(Lorg/jivesoftware/smackx/xdata/FormField;)V
    .locals 4
    .param p1, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 225
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "fieldVariableName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->hasField(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This data form already contains a form field with the variable name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    monitor-exit v1

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addFields(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)Z"
        }
    .end annotation

    .line 246
    .local p1, "fieldsToAdd":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    const/4 v0, 0x0

    .line 247
    .local v0, "fieldOverridden":Z
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    monitor-enter v1

    .line 248
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 249
    .local v3, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    iget-object v4, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 250
    .local v4, "previousField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v4, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 253
    .end local v3    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v4    # "previousField":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_0
    goto :goto_0

    .line 254
    :cond_1
    monitor-exit v1

    .line 255
    return v0

    .line 254
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addInstruction(Ljava/lang/String;)V
    .locals 2
    .param p1, "instruction"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addItem(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;)V
    .locals 2
    .param p1, "item"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;

    .line 277
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "x"

    return-object v0
.end method

.method public getExtensionElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->extensionElements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/FormField;

    monitor-exit v0

    return-object v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFields()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    monitor-enter v0

    .line 146
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHiddenFormTypeField()Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 3

    .line 297
    const-string v0, "FORM_TYPE"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 298
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-ne v1, v2, :cond_0

    .line 299
    return-object v0

    .line 301
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstructions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v0

    .line 115
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v0

    .line 135
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->items:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "jabber:x:data"

    return-object v0
.end method

.method public getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->type:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasHiddenFormTypeField()Z
    .locals 1

    .line 311
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getHiddenFormTypeField()Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInstructions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "instructions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 206
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->instructions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setReportedData(Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;)V
    .locals 0
    .param p1, "reportedData"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    .line 216
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    .line 217
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 316
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 317
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 318
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 320
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 321
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getInstructions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    .local v2, "instruction":Ljava/lang/String;
    const-string v3, "instructions"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 323
    .end local v2    # "instruction":Ljava/lang/String;
    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->toXML()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 329
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;

    .line 330
    .local v2, "item":Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;->toXML()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 331
    .end local v2    # "item":Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;
    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 334
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 335
    .end local v2    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_2

    .line 336
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->extensionElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Element;

    .line 337
    .local v2, "element":Lorg/jivesoftware/smack/packet/Element;
    invoke-interface {v2, v3}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 338
    .end local v2    # "element":Lorg/jivesoftware/smack/packet/Element;
    goto :goto_3

    .line 339
    :cond_4
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 340
    return-object v0
.end method
