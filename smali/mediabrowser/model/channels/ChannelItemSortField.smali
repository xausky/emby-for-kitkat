.class public final enum Lmediabrowser/model/channels/ChannelItemSortField;
.super Ljava/lang/Enum;
.source "ChannelItemSortField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmediabrowser/model/channels/ChannelItemSortField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum CommunityPlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum CommunityRating:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum DateCreated:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum Name:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum PlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum PremiereDate:Lmediabrowser/model/channels/ChannelItemSortField;

.field public static final enum Runtime:Lmediabrowser/model/channels/ChannelItemSortField;

.field private static mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/channels/ChannelItemSortField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "Name"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->Name:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 6
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "CommunityRating"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->CommunityRating:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 7
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "PremiereDate"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->PremiereDate:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 8
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "DateCreated"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->DateCreated:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 9
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "Runtime"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->Runtime:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 10
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "PlayCount"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->PlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

    .line 11
    new-instance v0, Lmediabrowser/model/channels/ChannelItemSortField;

    const-string v1, "CommunityPlayCount"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmediabrowser/model/channels/ChannelItemSortField;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->CommunityPlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lmediabrowser/model/channels/ChannelItemSortField;

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->Name:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v2

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->CommunityRating:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v3

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->PremiereDate:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v4

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->DateCreated:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v5

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->Runtime:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v6

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->PlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v7

    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->CommunityPlayCount:Lmediabrowser/model/channels/ChannelItemSortField;

    aput-object v1, v0, v8

    sput-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->$VALUES:[Lmediabrowser/model/channels/ChannelItemSortField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lmediabrowser/model/channels/ChannelItemSortField;->intValue:I

    .line 33
    invoke-static {}, Lmediabrowser/model/channels/ChannelItemSortField;->getMappings()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forValue(I)Lmediabrowser/model/channels/ChannelItemSortField;
    .locals 1

    .line 43
    invoke-static {}, Lmediabrowser/model/channels/ChannelItemSortField;->getMappings()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/channels/ChannelItemSortField;

    return-object p0
.end method

.method private static getMappings()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmediabrowser/model/channels/ChannelItemSortField;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->mappings:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lmediabrowser/model/channels/ChannelItemSortField;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->mappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmediabrowser/model/channels/ChannelItemSortField;->mappings:Ljava/util/HashMap;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->mappings:Ljava/util/HashMap;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmediabrowser/model/channels/ChannelItemSortField;
    .locals 1

    .line 3
    const-class v0, Lmediabrowser/model/channels/ChannelItemSortField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/channels/ChannelItemSortField;

    return-object p0
.end method

.method public static values()[Lmediabrowser/model/channels/ChannelItemSortField;
    .locals 1

    .line 3
    sget-object v0, Lmediabrowser/model/channels/ChannelItemSortField;->$VALUES:[Lmediabrowser/model/channels/ChannelItemSortField;

    invoke-virtual {v0}, [Lmediabrowser/model/channels/ChannelItemSortField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmediabrowser/model/channels/ChannelItemSortField;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lmediabrowser/model/channels/ChannelItemSortField;->intValue:I

    return v0
.end method
