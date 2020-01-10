.class public Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
.super Ljava/lang/Object;
.source "JivePropertiesExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "properties"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "http://www.jivesoftware.com/xmlns/xmpp/properties"


# instance fields
.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 231
    const-string v0, "properties"

    const-string v1, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "properties"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    return-object v0
.end method

.method public declared-synchronized getProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 125
    .end local p0    # "this":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    .end local p0    # "this":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    .end local p0    # "this":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 86
    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 87
    .end local p0    # "this":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serializable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 140
    const-string v0, "java-object"

    new-instance v1, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 141
    .local v1, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 143
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->getPropertyNames()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 145
    .local v4, "value":Ljava/lang/Object;
    const-string v5, "property"

    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 146
    const-string v6, "name"

    invoke-virtual {v1, v6, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 147
    const-string v6, "value"

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 151
    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 152
    const-string v7, "integer"

    .line 153
    .local v7, "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 155
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_0
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_1

    .line 156
    const-string v7, "long"

    .line 157
    .restart local v7    # "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 159
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_1
    instance-of v7, v4, Ljava/lang/Float;

    if-eqz v7, :cond_2

    .line 160
    const-string v7, "float"

    .line 161
    .restart local v7    # "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 163
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_2
    instance-of v7, v4, Ljava/lang/Double;

    if-eqz v7, :cond_3

    .line 164
    const-string v7, "double"

    .line 165
    .restart local v7    # "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 167
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_3
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    .line 168
    const-string v7, "boolean"

    .line 169
    .restart local v7    # "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 171
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_4
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 172
    const-string v7, "string"

    .line 173
    .restart local v7    # "type":Ljava/lang/String;
    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_7

    .line 179
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .line 180
    .local v7, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 182
    .local v8, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v9

    .line 183
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v9

    .line 184
    invoke-virtual {v8, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 185
    move-object v9, v0

    .line 186
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .local v10, "valueStr":Ljava/lang/String;
    nop

    .line 196
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    goto :goto_1

    .line 198
    :catch_0
    move-exception v11

    .line 202
    :goto_1
    nop

    .line 204
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :goto_2
    goto :goto_3

    .line 206
    :catch_1
    move-exception v11

    goto :goto_2

    .line 212
    .end local v7    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    :goto_3
    move-object v7, v9

    move-object v8, v10

    goto :goto_7

    .line 194
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "valueStr":Ljava/lang/String;
    .restart local v7    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 188
    :catch_2
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v10, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->LOGGER:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v12, "Error encoding java object"

    invoke-virtual {v10, v11, v12, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    move-object v10, v0

    .line 191
    .local v10, "type":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Serializing error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v11

    .line 194
    .local v9, "valueStr":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 196
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 200
    goto :goto_4

    .line 198
    :catch_3
    move-exception v11

    .line 202
    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 204
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 208
    :goto_5
    goto :goto_6

    .line 206
    :catch_4
    move-exception v11

    goto :goto_5

    .line 212
    .end local v7    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    :cond_7
    :goto_6
    move-object v8, v9

    move-object v7, v10

    .end local v9    # "valueStr":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .local v7, "type":Ljava/lang/String;
    .local v8, "valueStr":Ljava/lang/String;
    :goto_7
    const-string v9, "type"

    invoke-virtual {v1, v9, v7}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 213
    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 214
    invoke-virtual {v1, v8}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 215
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 216
    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 217
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 194
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    .local v7, "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ObjectOutputStream;
    :goto_8
    if-eqz v8, :cond_8

    .line 196
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 200
    goto :goto_9

    .line 198
    :catch_5
    move-exception v2

    .line 202
    :cond_8
    :goto_9
    if-eqz v7, :cond_9

    .line 204
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 208
    goto :goto_a

    .line 206
    :catch_6
    move-exception v2

    .line 208
    :cond_9
    :goto_a
    throw v0

    .line 218
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v7    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Ljava/io/ObjectOutputStream;
    :cond_a
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 220
    return-object v1
.end method
