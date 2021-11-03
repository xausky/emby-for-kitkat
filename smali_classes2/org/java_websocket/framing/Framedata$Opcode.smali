.class public final enum Lorg/java_websocket/framing/Framedata$Opcode;
.super Ljava/lang/Enum;
.source "Framedata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/framing/Framedata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Opcode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/java_websocket/framing/Framedata$Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum PING:Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum PONG:Lorg/java_websocket/framing/Framedata$Opcode;

.field public static final enum TEXT:Lorg/java_websocket/framing/Framedata$Opcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "BINARY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "PING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "PONG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    new-instance v0, Lorg/java_websocket/framing/Framedata$Opcode;

    const-string v1, "CLOSING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/java_websocket/framing/Framedata$Opcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    const/4 v0, 0x6

    .line 37
    new-array v0, v0, [Lorg/java_websocket/framing/Framedata$Opcode;

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    aput-object v1, v0, v7

    sput-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lorg/java_websocket/framing/Framedata$Opcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/java_websocket/framing/Framedata$Opcode;
    .locals 1

    .line 37
    const-class v0, Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/java_websocket/framing/Framedata$Opcode;

    return-object p0
.end method

.method public static values()[Lorg/java_websocket/framing/Framedata$Opcode;
    .locals 1

    .line 37
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->$VALUES:[Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0}, [Lorg/java_websocket/framing/Framedata$Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/java_websocket/framing/Framedata$Opcode;

    return-object v0
.end method
