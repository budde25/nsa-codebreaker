.class public abstract Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;
.super Ljava/lang/Object;
.source "JingleContentDescriptionChildElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "payload-type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "payload-type"

    return-object v0
.end method
