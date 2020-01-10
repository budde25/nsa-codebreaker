.class public Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication;
.super Ljava/lang/Object;
.source "ClientStateIndication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Feature;,
        Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Inactive;,
        Lorg/jivesoftware/smackx/csi/packet/ClientStateIndication$Active;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:csi:0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
