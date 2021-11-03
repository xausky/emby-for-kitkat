.class public final enum Lmediabrowser/model/configuration/UnratedItem;
.super Ljava/lang/Enum;
.source "UnratedItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/configuration/UnratedItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Book:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum ChannelContent:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Game:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum LiveTvChannel:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum LiveTvProgram:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Movie:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Music:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Other:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Series:Lmediabrowser/model/configuration/UnratedItem;

.field public static final enum Trailer:Lmediabrowser/model/configuration/UnratedItem;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Movie"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Movie:Lmediabrowser/model/configuration/UnratedItem;

    .line 6
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Trailer"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Trailer:Lmediabrowser/model/configuration/UnratedItem;

    .line 7
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Series"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Series:Lmediabrowser/model/configuration/UnratedItem;

    .line 8
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Music"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Music:Lmediabrowser/model/configuration/UnratedItem;

    .line 9
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Game"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Game:Lmediabrowser/model/configuration/UnratedItem;

    .line 10
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Book"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Book:Lmediabrowser/model/configuration/UnratedItem;

    .line 11
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "LiveTvChannel"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->LiveTvChannel:Lmediabrowser/model/configuration/UnratedItem;

    .line 12
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "LiveTvProgram"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->LiveTvProgram:Lmediabrowser/model/configuration/UnratedItem;

    .line 13
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "ChannelContent"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->ChannelContent:Lmediabrowser/model/configuration/UnratedItem;

    .line 14
    new-instance v0, Lmediabrowser/model/configuration/UnratedItem;

    const-string v1, "Other"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lmediabrowser/model/configuration/UnratedItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->Other:Lmediabrowser/model/configuration/UnratedItem;

    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [Lmediabrowser/model/configuration/UnratedItem;

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Movie:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Trailer:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Series:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Music:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Game:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Book:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->LiveTvChannel:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v8

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->LiveTvProgram:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v9

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->ChannelContent:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v10

    sget-object v1, Lmediabrowser/model/configuration/UnratedItem;->Other:Lmediabrowser/model/configuration/UnratedItem;

    aput-object v1, v0, v11

    sput-object v0, Lmediabrowser/model/configuration/UnratedItem;->$VALUES:[Lmediabrowser/model/configuration/UnratedItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/configuration/UnratedItem;
    .locals 1

    .line 23
    invoke-static {}, Lmediabrowser/model/configuration/UnratedItem;->values()[Lmediabrowser/model/configuration/UnratedItem;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/configuration/UnratedItem;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/configuration/UnratedItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/configuration/UnratedItem;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/configuration/UnratedItem;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/configuration/UnratedItem;->$VALUES:[Lmediabrowser/model/configuration/UnratedItem;

    invoke-virtual {v0}, [Lmediabrowser/model/configuration/UnratedItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/configuration/UnratedItem;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 18
    invoke-virtual {p0}, Lmediabrowser/model/configuration/UnratedItem;->ordinal()I

    move-result v0

    return v0
.end method
