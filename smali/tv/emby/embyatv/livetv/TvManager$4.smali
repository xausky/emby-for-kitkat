.class final Ltv/emby/embyatv/livetv/TvManager$4;
.super Ljava/lang/Object;
.source "TvManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/TvManager;->sortChannels()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmediabrowser/model/livetv/ChannelInfoDto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 298
    check-cast p1, Lmediabrowser/model/livetv/ChannelInfoDto;

    check-cast p2, Lmediabrowser/model/livetv/ChannelInfoDto;

    invoke-virtual {p0, p1, p2}, Ltv/emby/embyatv/livetv/TvManager$4;->compare(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/model/livetv/ChannelInfoDto;)I

    move-result p1

    return p1
.end method

.method public compare(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/model/livetv/ChannelInfoDto;)I
    .locals 5

    .line 301
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getLastPlayedDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getLastPlayedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v3, v1

    .line 302
    :goto_1
    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getLastPlayedDate()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lmediabrowser/model/livetv/ChannelInfoDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getLastPlayedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    goto :goto_3

    :cond_3
    :goto_2
    move-wide p1, v1

    :goto_3
    const/4 v0, 0x0

    sub-long/2addr v3, p1

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    if-lez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, -0x1

    :goto_4
    return p1
.end method
