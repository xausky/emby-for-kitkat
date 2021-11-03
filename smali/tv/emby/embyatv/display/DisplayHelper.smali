.class public Ltv/emby/embyatv/display/DisplayHelper;
.super Ljava/lang/Object;
.source "DisplayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;
    }
.end annotation


# static fields
.field private static mApplication:Ltv/emby/embyatv/TvApp;

.field private static mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

.field private static mHelper:Ltv/emby/embyatv/display/UhdHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ltv/emby/embyatv/display/Display$Mode;

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    .line 24
    new-instance v0, Ltv/emby/embyatv/display/UhdHelper;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-direct {v0, v1}, Ltv/emby/embyatv/display/UhdHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCurrentDisplayOptions(Ltv/emby/embyatv/api/StreamInfo;Landroid/view/Menu;)V
    .locals 14

    .line 37
    invoke-static {p0}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentBestDisplayMode(Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object p0

    .line 38
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    .line 40
    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ge v4, v2, :cond_2

    aget-object v8, v1, v4

    const-string v9, ""

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v10

    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v11

    if-ne v10, v11, :cond_0

    const-string v9, " * "

    .line 45
    :cond_0
    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v10

    add-int/lit8 v11, v5, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ltv/emby/embyatv/display/DisplayHelper;->getDisplayModeName(Ltv/emby/embyatv/display/Display$Mode;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v6, v10, v5, v9}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v8

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    move v5, v11

    goto :goto_0

    .line 48
    :cond_2
    invoke-interface {p1, v6, v7, v3}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    return-void
.end method

.method private static findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;)Ltv/emby/embyatv/display/Display$Mode;
    .locals 13

    .line 85
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-nez p0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/16 v0, 0x780

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_3

    .line 87
    :cond_1
    sget-object p1, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    if-ne p2, p1, :cond_2

    return-object v1

    .line 88
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 91
    :cond_3
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v0, :cond_d

    .line 94
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p2, p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    .line 95
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v6, "*** source rate for double comparison: %d"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v0, v6, v7}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    aget-object v8, v0, v7

    .line 97
    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v9

    mul-float v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v9, p2, :cond_4

    .line 98
    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v9, v10, :cond_4

    return-object v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 101
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float p2, p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 102
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v6, "*** source rate for comparison: %d"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v0, v6, v7}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    aget-object v8, v0, v7

    .line 104
    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v9

    mul-float v9, v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-eq v9, p2, :cond_6

    sub-int v9, p2, v9

    .line 105
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x3fc5c28f5c28f5c3L    # 0.17

    cmpg-double v9, v9, v11

    if-gez v9, :cond_7

    :cond_6
    invoke-virtual {v8}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v9, v10, :cond_7

    return-object v8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 111
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "*** source rate for single comparison: %d"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v0, v3, v6}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v3, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_a

    aget-object v7, v0, v6

    .line 113
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v8

    int-to-float v9, p2

    cmpl-float v8, v8, v9

    if-nez v8, :cond_9

    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gt v8, v9, :cond_9

    return-object v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 118
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    .line 119
    sget-object p2, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v0, "*** source rate for double comparison: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p2, v0, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    sget-object p2, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v0, p2

    :goto_3
    if-ge v4, v0, :cond_c

    aget-object v2, p2, v4

    .line 121
    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v3

    int-to-float v5, p0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_b

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v3, v5, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    return-object v1

    .line 125
    :cond_d
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v1

    .line 128
    :cond_e
    sget-object v6, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    if-ne p2, v6, :cond_11

    .line 130
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p2, "*** Searching for best resolution only with rate %s.  Requested resolution: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-interface {p0, p2, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length p2, p0

    :goto_4
    if-ge v4, p2, :cond_10

    aget-object v2, p0, v4

    .line 132
    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v3, v5, :cond_f

    return-object v2

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    return-object v1

    .line 141
    :cond_11
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p2

    const-string v6, "*** Searching for best rate only with resolution %s.  Requested rate: %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p0, v7, v5

    invoke-interface {p2, v6, v7}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 143
    sget-object p2, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v5, p2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_13

    aget-object v7, p2, v6

    .line 144
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v8

    mul-float v8, v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 145
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-gt v9, v10, :cond_12

    if-ne v8, p1, :cond_12

    return-object v7

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 150
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 151
    sget-object p2, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v5, p2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_15

    aget-object v7, p2, v6

    .line 152
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v8

    mul-float v8, v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 153
    invoke-virtual {v7}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-gt v9, v10, :cond_14

    if-ne v8, p1, :cond_14

    return-object v7

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 158
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 159
    sget-object p2, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v3, p2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_17

    aget-object v6, p2, v5

    .line 160
    invoke-virtual {v6}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v8

    if-gt v7, v8, :cond_16

    invoke-virtual {v6}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v7

    int-to-float v8, p1

    cmpl-float v7, v7, v8

    if-nez v7, :cond_16

    return-object v6

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 165
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    .line 166
    sget-object p1, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length p2, p1

    :goto_8
    if-ge v4, p2, :cond_19

    aget-object v2, p1, v4

    .line 167
    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-gt v3, v5, :cond_18

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v3

    int-to-float v5, p0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_19
    return-object v1

    :cond_1a
    :goto_9
    return-object v1
.end method

.method public static getCurrentBestDisplayMode(Ltv/emby/embyatv/api/StreamInfo;)Ltv/emby/embyatv/display/Display$Mode;
    .locals 2

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Ltv/emby/embyatv/api/StreamInfo;->getMediaSource()Lmediabrowser/model/dto/MediaSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getVideoStream()Lmediabrowser/model/entities/MediaStream;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    invoke-static {v0, p0, v1}, Ltv/emby/embyatv/display/DisplayHelper;->findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentDisplayMode()Ltv/emby/embyatv/display/Display$Mode;
    .locals 1

    .line 179
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    invoke-virtual {v0}, Ltv/emby/embyatv/display/UhdHelper;->getMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDisplayModeName()Ljava/lang/String;
    .locals 5

    .line 29
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getDisplayModeName(Ltv/emby/embyatv/display/Display$Mode;)Ljava/lang/String;
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayModes()V
    .locals 9

    .line 56
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    invoke-virtual {v0}, Ltv/emby/embyatv/display/UhdHelper;->getSupportedModes()[Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    .line 57
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    new-instance v1, Ltv/emby/embyatv/display/DisplayHelper$1;

    invoke-direct {v1}, Ltv/emby/embyatv/display/DisplayHelper$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 69
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "** Available display refresh rates:"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mDisplayModes:[Ltv/emby/embyatv/display/Display$Mode;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 71
    sget-object v5, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "%s/%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setBestRefreshRate(Lmediabrowser/model/entities/MediaStream;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 184
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string v1, "Null video stream attempting to set refresh rate"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 188
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/display/DisplayHelper;->getCurrentDisplayMode()Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v1

    .line 189
    sget-object v2, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Both:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    .line 190
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_resolution_switching"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v2, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Rate:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_refresh_switching"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v2, Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;->Resolution:Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_3
    const/16 v4, 0x500

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4, v2}, Ltv/emby/embyatv/display/DisplayHelper;->findBestDisplayMode(Ljava/lang/Float;Ljava/lang/Integer;Ltv/emby/embyatv/display/DisplayHelper$SwitchMode;)Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 194
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string v4, "*** Best refresh mode is: %s/%s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {p0, v4, v6}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v1}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result p0

    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result v4

    if-eq p0, v4, :cond_4

    .line 196
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string v4, "*** Attempting to change refresh rate from %s/%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ltv/emby/embyatv/display/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v1}, Ltv/emby/embyatv/display/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-interface {p0, v4, v5}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v2}, Ltv/emby/embyatv/display/Display$Mode;->getModeId()I

    move-result p0

    invoke-static {p0}, Ltv/emby/embyatv/display/DisplayHelper;->setRefreshRate(I)V

    return v3

    .line 200
    :cond_4
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string v1, "Display is already in best mode"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 204
    :cond_5
    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "*** Unable to find display mode for refresh rate: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/model/entities/MediaStream;->getRealFrameRate()Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static setRefreshRate(I)V
    .locals 6

    const/4 v0, 0x0

    .line 211
    :try_start_0
    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Ltv/emby/embyatv/playback/PlaybackController;->stop(Z)V

    .line 215
    invoke-virtual {v1}, Ltv/emby/embyatv/playback/PlaybackController;->getCurrentPosition()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 216
    invoke-virtual {v1, v4}, Ltv/emby/embyatv/playback/PlaybackController;->setIgnoreAutoSwitch(Z)V

    .line 217
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Ltv/emby/embyatv/display/DisplayHelper$2;

    invoke-direct {v5, v1, v2, v3}, Ltv/emby/embyatv/display/DisplayHelper$2;-><init>(Ltv/emby/embyatv/playback/PlaybackController;J)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    :cond_0
    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    sget-object v2, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Ltv/emby/embyatv/display/UhdHelper;->setPreferredDisplayModeId(Landroid/view/Window;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 226
    sget-object v1, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    const-string v2, "Error setting refresh rate"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, p0, v0}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 227
    sget-object p0, Ltv/emby/embyatv/display/DisplayHelper;->mApplication:Ltv/emby/embyatv/TvApp;

    const-string v0, "Unable to set refresh rate"

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static supportsDisplayModeSwitching()Z
    .locals 2

    .line 26
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is60()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    invoke-virtual {v0}, Ltv/emby/embyatv/display/UhdHelper;->getSupportedModes()[Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/emby/embyatv/display/DisplayHelper;->mHelper:Ltv/emby/embyatv/display/UhdHelper;

    invoke-virtual {v0}, Ltv/emby/embyatv/display/UhdHelper;->getSupportedModes()[Ltv/emby/embyatv/display/Display$Mode;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
