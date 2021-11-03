.class public final enum Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
.super Ljava/lang/Enum;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/drafts/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseHandshakeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/java_websocket/drafts/Draft$CloseHandshakeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum ONEWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

.field public static final enum TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    new-instance v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "ONEWAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    new-instance v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    const-string v1, "TWOWAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    sget-object v1, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->NONE:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->ONEWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->$VALUES:[Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .line 69
    const-class v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object p0
.end method

.method public static values()[Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .line 69
    sget-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->$VALUES:[Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    invoke-virtual {v0}, [Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method
