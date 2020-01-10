.class public final Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;
.super Ljava/lang/Object;
.source "CarbonExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Private"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "private"

.field public static final INSTANCE:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;->INSTANCE:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static addTo(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 164
    sget-object v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;->INSTANCE:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 165
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "private"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "urn:xmpp:carbons:2"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 154
    const-string v0, "<private xmlns=\'urn:xmpp:carbons:2\'/>"

    return-object v0
.end method
