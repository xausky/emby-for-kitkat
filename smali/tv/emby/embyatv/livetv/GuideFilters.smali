.class public Ltv/emby/embyatv/livetv/GuideFilters;
.super Ljava/lang/Object;
.source "GuideFilters.java"


# instance fields
.field private kids:Z

.field private movies:Z

.field private news:Z

.field private prefs:Landroid/content/SharedPreferences;

.field private premiere:Z

.field private series:Z

.field private sports:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/GuideFilters;->load()V

    return-void
.end method

.method private getFilterString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 68
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "movies"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->getSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "news"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_1
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->getSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sports"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_2
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->getSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "series"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_3
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->getSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "kids"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_4
    iget-boolean v1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->getSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ONLY new"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private getSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, ", "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public any()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setNews(Z)V

    .line 54
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setSeries(Z)V

    .line 55
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setSports(Z)V

    .line 56
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setKids(Z)V

    .line 57
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setMovies(Z)V

    .line 58
    invoke-virtual {p0, v0}, Ltv/emby/embyatv/livetv/GuideFilters;->setPremiere(Z)V

    return-void
.end method

.method public isKids()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    return v0
.end method

.method public isMovies()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    return v0
.end method

.method public isNews()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    return v0
.end method

.method public isPremiere()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    return v0
.end method

.method public isSeries()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    return v0
.end method

.method public isSports()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    return v0
.end method

.method public load()V
    .locals 3

    .line 26
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    .line 28
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_movies"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    .line 29
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_news"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    .line 30
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_series"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    .line 31
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_kids"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    .line 32
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_sports"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    .line 33
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "guide_filter_premiere"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    return-void
.end method

.method public passesFilter(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 3

    .line 39
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/GuideFilters;->any()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 41
    :cond_0
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsMovie()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 42
    :cond_3
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsNews()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsLive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1

    .line 43
    :cond_6
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_2
    return v1

    .line 44
    :cond_9
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsKids()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_3
    return v1

    .line 45
    :cond_c
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsLive()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_4
    return v1

    .line 46
    :cond_f
    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsPremiere()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsSports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getIsLive()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_5
    return v1

    :cond_13
    return v2
.end method

.method public setKids(Z)V
    .locals 2

    .line 112
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->kids:Z

    .line 113
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_kids"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMovies(Z)V
    .locals 2

    .line 85
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->movies:Z

    .line 86
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_movies"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNews(Z)V
    .locals 2

    .line 94
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->news:Z

    .line 95
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_news"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPremiere(Z)V
    .locals 2

    .line 130
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->premiere:Z

    .line 131
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_premiere"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSeries(Z)V
    .locals 2

    .line 103
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->series:Z

    .line 104
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_series"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSports(Z)V
    .locals 2

    .line 121
    iput-boolean p1, p0, Ltv/emby/embyatv/livetv/GuideFilters;->sports:Z

    .line 122
    iget-object v0, p0, Ltv/emby/embyatv/livetv/GuideFilters;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_filter_sports"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    invoke-virtual {p0}, Ltv/emby/embyatv/livetv/GuideFilters;->any()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content filtered. Showing channels with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ltv/emby/embyatv/livetv/GuideFilters;->getFilterString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Showing all programs "

    :goto_0
    return-object v0
.end method
