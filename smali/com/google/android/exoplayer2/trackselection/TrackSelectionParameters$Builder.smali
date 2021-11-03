.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field disabledTextTrackSelectionFlags:I

.field preferredAudioLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field preferredTextLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field preferredTextRoleFlags:I

.field selectUndeterminedTextLanguage:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    .line 76
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 77
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 78
    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTextTrackSelectionFlags:I

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    return-void
.end method

.method private setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 175
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    .line 185
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 186
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 188
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 7

    .line 162
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iget v5, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    return-object v6
.end method

.method public setDisabledTextTrackSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 156
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTextTrackSelectionFlags:I

    return-object p0
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    .line 104
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return-object p0
.end method
