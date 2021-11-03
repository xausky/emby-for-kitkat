.class public final enum Lorg/java_websocket/drafts/Draft$HandshakeState;
.super Ljava/lang/Enum;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/drafts/Draft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandshakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/java_websocket/drafts/Draft$HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/drafts/Draft$HandshakeState;

.field public static final enum MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

.field public static final enum NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Lorg/java_websocket/drafts/Draft$HandshakeState;

    const-string v1, "MATCHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 64
    new-instance v0, Lorg/java_websocket/drafts/Draft$HandshakeState;

    const-string v1, "NOT_MATCHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/java_websocket/drafts/Draft$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [Lorg/java_websocket/drafts/Draft$HandshakeState;

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    aput-object v1, v0, v3

    sput-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->$VALUES:[Lorg/java_websocket/drafts/Draft$HandshakeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    .line 60
    const-class v0, Lorg/java_websocket/drafts/Draft$HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/java_websocket/drafts/Draft$HandshakeState;

    return-object p0
.end method

.method public static values()[Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 1

    .line 60
    sget-object v0, Lorg/java_websocket/drafts/Draft$HandshakeState;->$VALUES:[Lorg/java_websocket/drafts/Draft$HandshakeState;

    invoke-virtual {v0}, [Lorg/java_websocket/drafts/Draft$HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/drafts/Draft$HandshakeState;

    return-object v0
.end method
