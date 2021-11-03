.class public Lmediabrowser/model/dto/UserItemDataDto;
.super Ljava/lang/Object;
.source "UserItemDataDto.java"


# instance fields
.field private IsFavorite:Z

.field private ItemId:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private LastPlayedDate:Ljava/util/Date;

.field private Likes:Ljava/lang/Boolean;

.field private PlayCount:I

.field private PlaybackPositionTicks:J

.field private Played:Z

.field private PlayedPercentage:Ljava/lang/Double;

.field private Rating:Ljava/lang/Double;

.field private UnplayedItemCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Rating:Ljava/lang/Double;

    .line 28
    iput-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlayedPercentage:Ljava/lang/Double;

    .line 43
    iput-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->UnplayedItemCount:Ljava/lang/Integer;

    .line 103
    iput-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Likes:Ljava/lang/Boolean;

    .line 118
    iput-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->LastPlayedDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getIsFavorite()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->IsFavorite:Z

    return v0
.end method

.method public final getItemId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->ItemId:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Key:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPlayedDate()Ljava/util/Date;
    .locals 1

    .line 121
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->LastPlayedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getLikes()Ljava/lang/Boolean;
    .locals 1

    .line 106
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Likes:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPlayCount()I
    .locals 1

    .line 76
    iget v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlayCount:I

    return v0
.end method

.method public final getPlaybackPositionTicks()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlaybackPositionTicks:J

    return-wide v0
.end method

.method public final getPlayed()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Played:Z

    return v0
.end method

.method public final getPlayedPercentage()Ljava/lang/Double;
    .locals 1

    .line 31
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlayedPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRating()Ljava/lang/Double;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->Rating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getUnplayedItemCount()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/dto/UserItemDataDto;->UnplayedItemCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setIsFavorite(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->IsFavorite:Z

    return-void
.end method

.method public final setItemId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->Key:Ljava/lang/String;

    return-void
.end method

.method public final setLastPlayedDate(Ljava/util/Date;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->LastPlayedDate:Ljava/util/Date;

    return-void
.end method

.method public final setLikes(Ljava/lang/Boolean;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->Likes:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPlayCount(I)V
    .locals 0

    .line 80
    iput p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlayCount:I

    return-void
.end method

.method public final setPlaybackPositionTicks(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlaybackPositionTicks:J

    return-void
.end method

.method public final setPlayed(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->Played:Z

    return-void
.end method

.method public final setPlayedPercentage(Ljava/lang/Double;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->PlayedPercentage:Ljava/lang/Double;

    return-void
.end method

.method public final setRating(Ljava/lang/Double;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->Rating:Ljava/lang/Double;

    return-void
.end method

.method public final setUnplayedItemCount(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/dto/UserItemDataDto;->UnplayedItemCount:Ljava/lang/Integer;

    return-void
.end method
