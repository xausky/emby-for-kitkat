.class public Lmediabrowser/model/configuration/UserConfiguration;
.super Ljava/lang/Object;
.source "UserConfiguration.java"


# instance fields
.field private AudioLanguagePreference:Ljava/lang/String;

.field private DisplayCollectionsView:Z

.field private DisplayMissingEpisodes:Z

.field private DisplayUnairedEpisodes:Z

.field private EnableLocalPassword:Z

.field private EnableNextEpisodeAutoPlay:Z

.field private GroupedFolders:[Ljava/lang/String;

.field private HidePlayedInLatest:Z

.field private LatestItemsExcludes:[Ljava/lang/String;

.field private OrderedViews:[Ljava/lang/String;

.field private PlayDefaultAudioTrack:Z

.field private RememberAudioSelections:Z

.field private RememberSubtitleSelections:Z

.field private SubtitleLanguagePreference:Ljava/lang/String;

.field private SubtitleMode:Lmediabrowser/model/configuration/SubtitlePlaybackMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lmediabrowser/model/configuration/SubtitlePlaybackMode;->values()[Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->SubtitleMode:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setEnableNextEpisodeAutoPlay(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setRememberAudioSelections(Z)V

    .line 176
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setRememberSubtitleSelections(Z)V

    .line 178
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setHidePlayedInLatest(Z)V

    .line 179
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setPlayDefaultAudioTrack(Z)V

    .line 180
    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setDisplayMissingEpisodes(Z)V

    .line 182
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setLatestItemsExcludes([Ljava/lang/String;)V

    .line 183
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setOrderedViews([Ljava/lang/String;)V

    .line 185
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmediabrowser/model/configuration/UserConfiguration;->setGroupedFolders([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAudioLanguagePreference()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->AudioLanguagePreference:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayCollectionsView()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayCollectionsView:Z

    return v0
.end method

.method public final getDisplayMissingEpisodes()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayMissingEpisodes:Z

    return v0
.end method

.method public final getDisplayUnairedEpisodes()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayUnairedEpisodes:Z

    return v0
.end method

.method public final getEnableLocalPassword()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->EnableLocalPassword:Z

    return v0
.end method

.method public final getEnableNextEpisodeAutoPlay()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->EnableNextEpisodeAutoPlay:Z

    return v0
.end method

.method public final getGroupedFolders()[Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->GroupedFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public final getHidePlayedInLatest()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->HidePlayedInLatest:Z

    return v0
.end method

.method public final getLatestItemsExcludes()[Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->LatestItemsExcludes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderedViews()[Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->OrderedViews:[Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayDefaultAudioTrack()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->PlayDefaultAudioTrack:Z

    return v0
.end method

.method public final getRememberAudioSelections()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->RememberAudioSelections:Z

    return v0
.end method

.method public final getRememberSubtitleSelections()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->RememberSubtitleSelections:Z

    return v0
.end method

.method public final getSubtitleLanguagePreference()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->SubtitleLanguagePreference:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtitleMode()Lmediabrowser/model/configuration/SubtitlePlaybackMode;
    .locals 1

    .line 85
    iget-object v0, p0, Lmediabrowser/model/configuration/UserConfiguration;->SubtitleMode:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    return-object v0
.end method

.method public final setAudioLanguagePreference(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->AudioLanguagePreference:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayCollectionsView(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayCollectionsView:Z

    return-void
.end method

.method public final setDisplayMissingEpisodes(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayMissingEpisodes:Z

    return-void
.end method

.method public final setDisplayUnairedEpisodes(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->DisplayUnairedEpisodes:Z

    return-void
.end method

.method public final setEnableLocalPassword(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->EnableLocalPassword:Z

    return-void
.end method

.method public final setEnableNextEpisodeAutoPlay(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->EnableNextEpisodeAutoPlay:Z

    return-void
.end method

.method public final setGroupedFolders([Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->GroupedFolders:[Ljava/lang/String;

    return-void
.end method

.method public final setHidePlayedInLatest(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->HidePlayedInLatest:Z

    return-void
.end method

.method public final setLatestItemsExcludes([Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->LatestItemsExcludes:[Ljava/lang/String;

    return-void
.end method

.method public final setOrderedViews([Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->OrderedViews:[Ljava/lang/String;

    return-void
.end method

.method public final setPlayDefaultAudioTrack(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->PlayDefaultAudioTrack:Z

    return-void
.end method

.method public final setRememberAudioSelections(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->RememberAudioSelections:Z

    return-void
.end method

.method public final setRememberSubtitleSelections(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->RememberSubtitleSelections:Z

    return-void
.end method

.method public final setSubtitleLanguagePreference(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->SubtitleLanguagePreference:Ljava/lang/String;

    return-void
.end method

.method public final setSubtitleMode(Lmediabrowser/model/configuration/SubtitlePlaybackMode;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmediabrowser/model/configuration/UserConfiguration;->SubtitleMode:Lmediabrowser/model/configuration/SubtitlePlaybackMode;

    return-void
.end method
