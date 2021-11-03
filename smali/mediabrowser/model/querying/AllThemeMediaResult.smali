.class public Lmediabrowser/model/querying/AllThemeMediaResult;
.super Ljava/lang/Object;
.source "AllThemeMediaResult.java"


# instance fields
.field private SoundtrackSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

.field private ThemeSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

.field private ThemeVideosResult:Lmediabrowser/model/querying/ThemeMediaResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-direct {v0}, Lmediabrowser/model/querying/ThemeMediaResult;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/AllThemeMediaResult;->setThemeVideosResult(Lmediabrowser/model/querying/ThemeMediaResult;)V

    .line 39
    new-instance v0, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-direct {v0}, Lmediabrowser/model/querying/ThemeMediaResult;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/AllThemeMediaResult;->setThemeSongsResult(Lmediabrowser/model/querying/ThemeMediaResult;)V

    .line 41
    new-instance v0, Lmediabrowser/model/querying/ThemeMediaResult;

    invoke-direct {v0}, Lmediabrowser/model/querying/ThemeMediaResult;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/querying/AllThemeMediaResult;->setSoundtrackSongsResult(Lmediabrowser/model/querying/ThemeMediaResult;)V

    return-void
.end method


# virtual methods
.method public final getSoundtrackSongsResult()Lmediabrowser/model/querying/ThemeMediaResult;
    .locals 1

    .line 28
    iget-object v0, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->SoundtrackSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-object v0
.end method

.method public final getThemeSongsResult()Lmediabrowser/model/querying/ThemeMediaResult;
    .locals 1

    .line 18
    iget-object v0, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->ThemeSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-object v0
.end method

.method public final getThemeVideosResult()Lmediabrowser/model/querying/ThemeMediaResult;
    .locals 1

    .line 8
    iget-object v0, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->ThemeVideosResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-object v0
.end method

.method public final setSoundtrackSongsResult(Lmediabrowser/model/querying/ThemeMediaResult;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->SoundtrackSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-void
.end method

.method public final setThemeSongsResult(Lmediabrowser/model/querying/ThemeMediaResult;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->ThemeSongsResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-void
.end method

.method public final setThemeVideosResult(Lmediabrowser/model/querying/ThemeMediaResult;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lmediabrowser/model/querying/AllThemeMediaResult;->ThemeVideosResult:Lmediabrowser/model/querying/ThemeMediaResult;

    return-void
.end method
