.class public Lmediabrowser/model/users/UserPolicy;
.super Ljava/lang/Object;
.source "UserPolicy.java"


# instance fields
.field private AccessSchedules:[Lmediabrowser/model/configuration/AccessSchedule;

.field private BlockUnratedItems:[Lmediabrowser/model/configuration/UnratedItem;

.field private BlockedChannels:[Ljava/lang/String;

.field private BlockedMediaFolders:[Ljava/lang/String;

.field private BlockedTags:[Ljava/lang/String;

.field private EnableAllChannels:Z

.field private EnableAllDevices:Z

.field private EnableAllFolders:Z

.field private EnableAudioPlaybackTranscoding:Z

.field private EnableContentDeletion:Z

.field private EnableContentDownloading:Z

.field private EnableLiveTvAccess:Z

.field private EnableLiveTvManagement:Z

.field private EnableMediaPlayback:Z

.field private EnablePlaybackRemuxing:Z

.field private EnablePublicSharing:Z

.field private EnableRemoteControlOfOtherUsers:Z

.field private EnableSharedDeviceControl:Z

.field private EnableSubtitleDownloading:Z

.field private EnableSubtitleManagement:Z

.field private EnableSyncTranscoding:Z

.field private EnableUserPreferenceAccess:Z

.field private EnableVideoPlaybackTranscoding:Z

.field private EnabledChannels:[Ljava/lang/String;

.field private EnabledDevices:[Ljava/lang/String;

.field private EnabledFolders:[Ljava/lang/String;

.field private InvalidLoginAttemptCount:I

.field private IsAdministrator:Z

.field private IsDisabled:Z

.field private IsHidden:Z

.field private MaxParentalRating:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 325
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableSyncTranscoding(Z)V

    .line 327
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableMediaPlayback(Z)V

    .line 328
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableAudioPlaybackTranscoding(Z)V

    .line 329
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableVideoPlaybackTranscoding(Z)V

    .line 330
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnablePlaybackRemuxing(Z)V

    .line 332
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableLiveTvManagement(Z)V

    .line 333
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableLiveTvAccess(Z)V

    .line 337
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableLiveTvManagement(Z)V

    .line 339
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableSharedDeviceControl(Z)V

    const/4 v1, 0x0

    .line 341
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmediabrowser/model/users/UserPolicy;->setBlockedTags([Ljava/lang/String;)V

    .line 342
    new-array v2, v1, [Lmediabrowser/model/configuration/UnratedItem;

    invoke-virtual {p0, v2}, Lmediabrowser/model/users/UserPolicy;->setBlockUnratedItems([Lmediabrowser/model/configuration/UnratedItem;)V

    .line 344
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableUserPreferenceAccess(Z)V

    .line 346
    new-array v2, v1, [Lmediabrowser/model/configuration/AccessSchedule;

    invoke-virtual {p0, v2}, Lmediabrowser/model/users/UserPolicy;->setAccessSchedules([Lmediabrowser/model/configuration/AccessSchedule;)V

    .line 348
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableAllChannels(Z)V

    .line 349
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmediabrowser/model/users/UserPolicy;->setEnabledChannels([Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableAllFolders(Z)V

    .line 352
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmediabrowser/model/users/UserPolicy;->setEnabledFolders([Ljava/lang/String;)V

    .line 354
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmediabrowser/model/users/UserPolicy;->setEnabledDevices([Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableAllDevices(Z)V

    .line 357
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnableContentDownloading(Z)V

    .line 358
    invoke-virtual {p0, v0}, Lmediabrowser/model/users/UserPolicy;->setEnablePublicSharing(Z)V

    return-void
.end method


# virtual methods
.method public final getAccessSchedules()[Lmediabrowser/model/configuration/AccessSchedule;
    .locals 1

    .line 88
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->AccessSchedules:[Lmediabrowser/model/configuration/AccessSchedule;

    return-object v0
.end method

.method public final getBlockUnratedItems()[Lmediabrowser/model/configuration/UnratedItem;
    .locals 1

    .line 97
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->BlockUnratedItems:[Lmediabrowser/model/configuration/UnratedItem;

    return-object v0
.end method

.method public final getBlockedChannels()[Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->BlockedChannels:[Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockedMediaFolders()[Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->BlockedMediaFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockedTags()[Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->BlockedTags:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableAllChannels()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllChannels:Z

    return v0
.end method

.method public final getEnableAllDevices()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllDevices:Z

    return v0
.end method

.method public final getEnableAllFolders()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllFolders:Z

    return v0
.end method

.method public final getEnableAudioPlaybackTranscoding()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableAudioPlaybackTranscoding:Z

    return v0
.end method

.method public final getEnableContentDeletion()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableContentDeletion:Z

    return v0
.end method

.method public final getEnableContentDownloading()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableContentDownloading:Z

    return v0
.end method

.method public final getEnableLiveTvAccess()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableLiveTvAccess:Z

    return v0
.end method

.method public final getEnableLiveTvManagement()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableLiveTvManagement:Z

    return v0
.end method

.method public final getEnableMediaPlayback()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableMediaPlayback:Z

    return v0
.end method

.method public final getEnablePlaybackRemuxing()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnablePlaybackRemuxing:Z

    return v0
.end method

.method public final getEnablePublicSharing()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnablePublicSharing:Z

    return v0
.end method

.method public final getEnableRemoteControlOfOtherUsers()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableRemoteControlOfOtherUsers:Z

    return v0
.end method

.method public final getEnableSharedDeviceControl()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableSharedDeviceControl:Z

    return v0
.end method

.method public final getEnableSubtitleDownloading()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableSubtitleDownloading:Z

    return v0
.end method

.method public final getEnableSubtitleManagement()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableSubtitleManagement:Z

    return v0
.end method

.method public final getEnableSyncTranscoding()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableSyncTranscoding:Z

    return v0
.end method

.method public final getEnableUserPreferenceAccess()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableUserPreferenceAccess:Z

    return v0
.end method

.method public final getEnableVideoPlaybackTranscoding()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->EnableVideoPlaybackTranscoding:Z

    return v0
.end method

.method public final getEnabledChannels()[Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->EnabledChannels:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabledDevices()[Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->EnabledDevices:[Ljava/lang/String;

    return-object v0
.end method

.method public final getEnabledFolders()[Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->EnabledFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public final getInvalidLoginAttemptCount()I
    .locals 1

    .line 287
    iget v0, p0, Lmediabrowser/model/users/UserPolicy;->InvalidLoginAttemptCount:I

    return v0
.end method

.method public final getIsAdministrator()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->IsAdministrator:Z

    return v0
.end method

.method public final getIsDisabled()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->IsDisabled:Z

    return v0
.end method

.method public final getIsHidden()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lmediabrowser/model/users/UserPolicy;->IsHidden:Z

    return v0
.end method

.method public final getMaxParentalRating()Ljava/lang/Integer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmediabrowser/model/users/UserPolicy;->MaxParentalRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setAccessSchedules([Lmediabrowser/model/configuration/AccessSchedule;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->AccessSchedules:[Lmediabrowser/model/configuration/AccessSchedule;

    return-void
.end method

.method public final setBlockUnratedItems([Lmediabrowser/model/configuration/UnratedItem;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->BlockUnratedItems:[Lmediabrowser/model/configuration/UnratedItem;

    return-void
.end method

.method public final setBlockedChannels([Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->BlockedChannels:[Ljava/lang/String;

    return-void
.end method

.method public final setBlockedMediaFolders([Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->BlockedMediaFolders:[Ljava/lang/String;

    return-void
.end method

.method public final setBlockedTags([Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->BlockedTags:[Ljava/lang/String;

    return-void
.end method

.method public final setEnableAllChannels(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllChannels:Z

    return-void
.end method

.method public final setEnableAllDevices(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllDevices:Z

    return-void
.end method

.method public final setEnableAllFolders(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableAllFolders:Z

    return-void
.end method

.method public final setEnableAudioPlaybackTranscoding(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableAudioPlaybackTranscoding:Z

    return-void
.end method

.method public final setEnableContentDeletion(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableContentDeletion:Z

    return-void
.end method

.method public final setEnableContentDownloading(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableContentDownloading:Z

    return-void
.end method

.method public final setEnableLiveTvAccess(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableLiveTvAccess:Z

    return-void
.end method

.method public final setEnableLiveTvManagement(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableLiveTvManagement:Z

    return-void
.end method

.method public final setEnableMediaPlayback(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableMediaPlayback:Z

    return-void
.end method

.method public final setEnablePlaybackRemuxing(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnablePlaybackRemuxing:Z

    return-void
.end method

.method public final setEnablePublicSharing(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnablePublicSharing:Z

    return-void
.end method

.method public final setEnableRemoteControlOfOtherUsers(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableRemoteControlOfOtherUsers:Z

    return-void
.end method

.method public final setEnableSharedDeviceControl(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableSharedDeviceControl:Z

    return-void
.end method

.method public final setEnableSubtitleDownloading(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableSubtitleDownloading:Z

    return-void
.end method

.method public final setEnableSubtitleManagement(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableSubtitleManagement:Z

    return-void
.end method

.method public final setEnableSyncTranscoding(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableSyncTranscoding:Z

    return-void
.end method

.method public final setEnableUserPreferenceAccess(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableUserPreferenceAccess:Z

    return-void
.end method

.method public final setEnableVideoPlaybackTranscoding(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->EnableVideoPlaybackTranscoding:Z

    return-void
.end method

.method public final setEnabledChannels([Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->EnabledChannels:[Ljava/lang/String;

    return-void
.end method

.method public final setEnabledDevices([Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->EnabledDevices:[Ljava/lang/String;

    return-void
.end method

.method public final setEnabledFolders([Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->EnabledFolders:[Ljava/lang/String;

    return-void
.end method

.method public final setInvalidLoginAttemptCount(I)V
    .locals 0

    .line 291
    iput p1, p0, Lmediabrowser/model/users/UserPolicy;->InvalidLoginAttemptCount:I

    return-void
.end method

.method public final setIsAdministrator(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->IsAdministrator:Z

    return-void
.end method

.method public final setIsDisabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->IsDisabled:Z

    return-void
.end method

.method public final setIsHidden(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmediabrowser/model/users/UserPolicy;->IsHidden:Z

    return-void
.end method

.method public final setMaxParentalRating(Ljava/lang/Integer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmediabrowser/model/users/UserPolicy;->MaxParentalRating:Ljava/lang/Integer;

    return-void
.end method
