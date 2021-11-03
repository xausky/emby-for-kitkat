.class public Ltv/emby/embyatv/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static ProgressIndicatorTypes:[Ljava/lang/String; = null

.field private static ThumbFallbackTypes:[Ljava/lang/String; = null

.field private static divider:Ljava/lang/String; = null

.field private static final iso3BibliographicalToIso2:[Ljava/lang/String;

.field private static maxPrimaryImageHeight:I = 0x172

.field private static nonRatableTypes:[Ljava/lang/String;

.field private static rand:Ljava/util/Random;

.field public static transcodeReasonKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    const-string v0, "Episode"

    .line 422
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/util/Utils;->ThumbFallbackTypes:[Ljava/lang/String;

    const-string v0, "Episode"

    const-string v1, "Movie"

    const-string v2, "MusicVideo"

    const-string v3, "Video"

    .line 500
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/util/Utils;->ProgressIndicatorTypes:[Ljava/lang/String;

    const-string v0, "   |   "

    .line 1117
    sput-object v0, Ltv/emby/embyatv/util/Utils;->divider:Ljava/lang/String;

    const-string v1, "Program"

    const-string v2, "Timer"

    const-string v3, "SeriesTimer"

    const-string v4, "CollectionFolder"

    const-string v5, "UserView"

    const-string v6, "Channel"

    const-string v7, "Season"

    const-string v8, "Studio"

    const-string v9, "PlaylistsFolder"

    .line 1275
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/util/Utils;->nonRatableTypes:[Ljava/lang/String;

    .line 1739
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltv/emby/embyatv/util/Utils;->rand:Ljava/util/Random;

    const-string v0, "TranscodeReasons="

    .line 1864
    sput-object v0, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    const-string v1, "alb"

    const-string v2, "sq"

    const-string v3, "arm"

    const-string v4, "hy"

    const-string v5, "baq"

    const-string v6, "eu"

    const-string v7, "bur"

    const-string v8, "my"

    const-string v9, "tib"

    const-string v10, "bo"

    const-string v11, "chi"

    const-string v12, "zh"

    const-string v13, "cze"

    const-string v14, "cs"

    const-string v15, "dut"

    const-string v16, "nl"

    const-string v17, "ger"

    const-string v18, "de"

    const-string v19, "gre"

    const-string v20, "el"

    const-string v21, "fre"

    const-string v22, "fr"

    const-string v23, "geo"

    const-string v24, "ka"

    const-string v25, "ice"

    const-string v26, "is"

    const-string v27, "mac"

    const-string v28, "mk"

    const-string v29, "mao"

    const-string v30, "mi"

    const-string v31, "may"

    const-string v32, "ms"

    const-string v33, "per"

    const-string v34, "fa"

    const-string v35, "rum"

    const-string v36, "ro"

    const-string v37, "slo"

    const-string v38, "sk"

    const-string v39, "wel"

    const-string v40, "cy"

    .line 2604
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/emby/embyatv/util/Utils;->iso3BibliographicalToIso2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Beep()V
    .locals 2

    .line 1638
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1640
    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method public static CanAddToPlaylist(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 5

    const-string v0, "Program"

    const-string v1, "TvChannel"

    const-string v2, "Timer"

    const-string v3, "SeriesTimer"

    const-string v4, "VirtualFolder"

    .line 1099
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 1100
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Recording"

    .line 1102
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Completed"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "Photo"

    .line 1104
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Game"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v0, "livetv"

    .line 1106
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "playlists"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1108
    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "local"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Genre"

    const-string v2, "MusicGenre"

    const-string v3, "MusicArtist"

    .line 1110
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 1113
    :cond_5
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v3

    :cond_8
    :goto_1
    return v1

    :cond_9
    :goto_2
    return v1

    :cond_a
    :goto_3
    return v1
.end method

.method public static CanEditSubs(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 2

    .line 1094
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getEnableSubtitleDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getEnableSubtitleManagement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserDto;->getPolicy()Lmediabrowser/model/users/UserPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/users/UserPolicy;->getIsAdministrator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TvChannel"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Program"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/LocationType;->FileSystem:Lmediabrowser/model/entities/LocationType;

    if-ne v0, v1, :cond_1

    const-string v0, "Trailer"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Video"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPlayAccess()Lmediabrowser/model/library/PlayAccess;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/library/PlayAccess;->Full:Lmediabrowser/model/library/PlayAccess;

    invoke-virtual {v1, v2}, Lmediabrowser/model/library/PlayAccess;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1085
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsPlaceHolder()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsPlaceHolder()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "disc"

    .line 1086
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getContainer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1087
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmediabrowser/model/entities/LocationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1088
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1089
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeriesTimer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1090
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static CanRate(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ltv/emby/embyatv/util/Utils;->nonRatableTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static EnterManualServerAddress(Landroid/app/Activity;)V
    .locals 5

    .line 1577
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0294

    .line 1579
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v2, 0x7f0a0295

    .line 1580
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1581
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1004a4

    .line 1582
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10060c

    .line 1583
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1584
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f100464

    .line 1585
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/util/Utils$20;

    invoke-direct {v4}, Ltv/emby/embyatv/util/Utils$20;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f10052f

    .line 1589
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ltv/emby/embyatv/util/Utils$19;

    invoke-direct {v4, v2, v1, p0}, Ltv/emby/embyatv/util/Utils$19;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1598
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static EnterManualUser(Landroid/app/Activity;)V
    .locals 4

    .line 1603
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1604
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v1, 0x6

    .line 1605
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1606
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1004a6

    .line 1607
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1608
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100464

    .line 1609
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/util/Utils$22;

    invoke-direct {v3}, Ltv/emby/embyatv/util/Utils$22;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f10052f

    .line 1613
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ltv/emby/embyatv/util/Utils$21;

    invoke-direct {v3, v0, p0}, Ltv/emby/embyatv/util/Utils$21;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 1633
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static FirstToUpper(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 2213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1433
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->Audio:Lmediabrowser/model/entities/MediaStreamType;

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->GetStreams(Lmediabrowser/model/dto/MediaSourceInfo;Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static GetFirstAudioStream(Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/entities/MediaStream;
    .locals 4

    .line 1437
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->GetAudioStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    goto :goto_0

    .line 1440
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/entities/MediaStream;

    return-object p0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static GetFirstPerson(Lmediabrowser/model/dto/BaseItemDto;Ljava/lang/String;)Lmediabrowser/model/dto/BaseItemPerson;
    .locals 5

    .line 1384
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPeople()[Lmediabrowser/model/dto/BaseItemPerson;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1387
    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemPerson;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static GetFullName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 3

    .line 1267
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x72a55db

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Episode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1271
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1269
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetMediaStream(Lmediabrowser/model/dto/MediaSourceInfo;I)Lmediabrowser/model/entities/MediaStream;
    .locals 3

    .line 1421
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmediabrowser/model/entities/MediaStream;

    .line 1423
    invoke-virtual {v0}, Lmediabrowser/model/entities/MediaStream;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static GetProgramSubText(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 6

    const-string v0, "TvChannel"

    .line 1346
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1349
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    .line 1350
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1351
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1352
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1353
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1355
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x26

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->LimitSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, ""

    :goto_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetSavedLoginCredentials(Ljava/lang/String;)Ltv/emby/embyatv/startup/LogonCredentials;
    .locals 4

    .line 2142
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2144
    :try_start_0
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 2145
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->ReadStringFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 2146
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 2147
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p0

    const-class v3, Ltv/emby/embyatv/startup/LogonCredentials;

    invoke-virtual {p0, v2, v3}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltv/emby/embyatv/startup/LogonCredentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2152
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v2, "Error interpreting saved login"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2153
    new-instance p0, Ltv/emby/embyatv/startup/LogonCredentials;

    new-instance v0, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/ServerInfo;-><init>()V

    new-instance v2, Lmediabrowser/model/dto/UserDto;

    invoke-direct {v2}, Lmediabrowser/model/dto/UserDto;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Ltv/emby/embyatv/startup/LogonCredentials;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    return-object p0

    .line 2150
    :catch_1
    new-instance p0, Ltv/emby/embyatv/startup/LogonCredentials;

    new-instance v0, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-direct {v0}, Lmediabrowser/model/apiclient/ServerInfo;-><init>()V

    new-instance v2, Lmediabrowser/model/dto/UserDto;

    invoke-direct {v2}, Lmediabrowser/model/dto/UserDto;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Ltv/emby/embyatv/startup/LogonCredentials;-><init>(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    return-object p0
.end method

.method public static GetSavedWolInfos(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;"
        }
    .end annotation

    .line 2169
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    .line 2171
    :try_start_0
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 2172
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->ReadStringFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 2173
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 2174
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p0

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 2175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2176
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2177
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-class v5, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    invoke-virtual {v3, v4, v5}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/WakeOnLanInfo;

    .line 2178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 2185
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Error interpreting saved wol info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p0, v2}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 2186
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 2183
    :catch_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static GetStreams(Lmediabrowser/model/dto/MediaSourceInfo;Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            "Lmediabrowser/model/entities/MediaStreamType;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Lmediabrowser/model/dto/MediaSourceInfo;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object p0

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1451
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    .line 1452
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static GetSubName(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 4

    .line 1295
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AllEpisodes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "MusicVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "MusicAlbum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "Episode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "Season"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    .line 1313
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 1310
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const v0, 0x7f100445

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1308
    :pswitch_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string p0, ""

    :goto_2
    return-object p0

    .line 1306
    :pswitch_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getArtistItems()Ljava/util/ArrayList;

    move-result-object p0

    :goto_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p0}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, ""

    :goto_4
    return-object p0

    .line 1303
    :pswitch_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p0}, Lmediabrowser/model/dto/NameIdPair;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_4
    const-string p0, ""

    :goto_5
    return-object p0

    .line 1301
    :pswitch_4
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChildCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const v1, 0x7f1004aa

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_5
    const-string p0, ""

    :goto_6
    return-object p0

    .line 1297
    :pswitch_5
    sget-object v0, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getLocationType()Lmediabrowser/model/entities/LocationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/LocationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_6
    const-string v0, ""

    .line 1298
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_7
    const-string v2, ""

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_8
    const-string v2, ""

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_9
    const-string v2, ""

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    if-eq v1, v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_a
    const-string v1, ""

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_c
    const-string v1, ""

    .line 1314
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "  \u2022  "

    goto :goto_d

    :cond_c
    const-string v1, ""

    .line 1315
    :goto_d
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6ca0a8fd -> :sswitch_6
        0x3caabb6 -> :sswitch_5
        0x4ed245b -> :sswitch_4
        0x72a55db -> :sswitch_3
        0x46a98b6a -> :sswitch_2
        0x47d02176 -> :sswitch_1
        0x480c5679 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static GetSubName2(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 6

    .line 1285
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x3caabb6

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const-string v0, "%s%s"

    const/4 v1, 0x2

    .line 1287
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbum()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, ""

    :goto_2
    aput-object v3, v1, v2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const-string v3, " (%d)"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getProductionYear()Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    const-string p0, ""

    :goto_3
    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_4

    :cond_5
    const-string p0, ""

    :goto_4
    return-object p0
.end method

.method public static GetSubtitleStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1429
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->Subtitle:Lmediabrowser/model/entities/MediaStreamType;

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->GetStreams(Lmediabrowser/model/dto/MediaSourceInfo;Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static GetVideoStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/entities/MediaStream;",
            ">;"
        }
    .end annotation

    .line 1444
    sget-object v0, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->GetStreams(Lmediabrowser/model/dto/MediaSourceInfo;Lmediabrowser/model/entities/MediaStreamType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static IsEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 2238
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static LimitSize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 2415
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x20

    .line 2416
    new-array v1, v1, [B

    const-string v1, "iso-8859-1"

    .line 2417
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 2418
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 2419
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2424
    :catch_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2422
    :catch_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static NullCoalesce(Ljava/lang/Integer;I)I
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 2224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static NullCoalesce(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static NullCoalesce(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static ReadStringFromFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2191
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    .line 2193
    new-array v1, v1, [B

    .line 2195
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2197
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ReportProgress(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lmediabrowser/apiinteraction/EmptyResponse;)V
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1646
    new-instance v0, Lmediabrowser/model/session/PlaybackProgressInfo;

    invoke-direct {v0}, Lmediabrowser/model/session/PlaybackProgressInfo;-><init>()V

    .line 1647
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    .line 1648
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setItemId(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0, p2}, Lmediabrowser/model/session/PlaybackProgressInfo;->setPositionTicks(Ljava/lang/Long;)V

    .line 1650
    invoke-virtual {v0, p3}, Lmediabrowser/model/session/PlaybackProgressInfo;->setIsPaused(Z)V

    .line 1651
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setCanSeek(Z)V

    .line 1652
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->isAudioMuted()Z

    move-result p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setIsMuted(Z)V

    .line 1653
    invoke-virtual {p1}, Ltv/emby/embyatv/api/StreamInfo;->getPlayMethod()Lmediabrowser/model/session/PlayMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 1654
    invoke-virtual {v0, p4}, Lmediabrowser/model/session/PlaybackProgressInfo;->setPlaylistIndex(Ljava/lang/Integer;)V

    .line 1655
    invoke-virtual {v0, p6}, Lmediabrowser/model/session/PlaybackProgressInfo;->setEventName(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v0, p5}, Lmediabrowser/model/session/PlaybackProgressInfo;->setPlaylistLength(Ljava/lang/Integer;)V

    .line 1657
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1658
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getAudioStreamIndex()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setAudioStreamIndex(Ljava/lang/Integer;)V

    .line 1659
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/playback/PlaybackController;->getSubtitleStreamIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1660
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x63

    if-lt p2, p3, :cond_1

    const/4 p0, 0x0

    .line 1661
    :cond_1
    invoke-virtual {v0, p0}, Lmediabrowser/model/session/PlaybackProgressInfo;->setSubtitleStreamIndex(Ljava/lang/Integer;)V

    .line 1663
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object p2

    const/4 p5, 0x0

    new-instance p0, Ltv/emby/embyatv/util/Utils$23;

    invoke-direct {p0, p7}, Ltv/emby/embyatv/util/Utils$23;-><init>(Lmediabrowser/apiinteraction/EmptyResponse;)V

    move-object p3, v0

    move-object p4, p1

    move-object p6, v1

    move-object p7, p0

    invoke-virtual/range {p2 .. p7}, Ltv/emby/embyatv/api/PlaybackManager;->reportPlaybackProgress(Lmediabrowser/model/session/PlaybackProgressInfo;Ltv/emby/embyatv/api/StreamInfo;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V

    :cond_3
    return-void
.end method

.method public static ReportStart(Lmediabrowser/model/dto/BaseItemDto;JLmediabrowser/model/dto/MediaSourceInfo;Ljava/lang/String;Lmediabrowser/model/session/PlayMethod;)V
    .locals 2

    .line 1560
    new-instance v0, Lmediabrowser/model/session/PlaybackStartInfo;

    invoke-direct {v0}, Lmediabrowser/model/session/PlaybackStartInfo;-><init>()V

    .line 1561
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/session/PlaybackStartInfo;->setItemId(Ljava/lang/String;)V

    .line 1562
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/session/PlaybackStartInfo;->setPositionTicks(Ljava/lang/Long;)V

    .line 1563
    invoke-virtual {v0, p4}, Lmediabrowser/model/session/PlaybackStartInfo;->setPlaySessionId(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1566
    invoke-virtual {p3}, Lmediabrowser/model/dto/MediaSourceInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/session/PlaybackStartInfo;->setMediaSourceId(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p3}, Lmediabrowser/model/dto/MediaSourceInfo;->getLiveStreamId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/session/PlaybackStartInfo;->setLiveStreamId(Ljava/lang/String;)V

    .line 1569
    :cond_0
    invoke-virtual {v0, p5}, Lmediabrowser/model/session/PlaybackStartInfo;->setPlayMethod(Lmediabrowser/model/session/PlayMethod;)V

    .line 1570
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object p1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    new-instance p3, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {p3}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    const/4 p4, 0x0

    invoke-virtual {p1, v0, p4, p2, p3}, Ltv/emby/embyatv/api/PlaybackManager;->reportPlaybackStart(Lmediabrowser/model/session/PlaybackStartInfo;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1571
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Ltv/emby/embyatv/util/Utils;->NullCoalesce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1572
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Playback of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "%"

    const-string p5, ""

    invoke-virtual {p0, p3, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " started."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, p4, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static ReportStopped(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;J)V
    .locals 8

    if-eqz p0, :cond_3

    .line 1463
    new-instance v1, Lmediabrowser/model/session/PlaybackStopInfo;

    invoke-direct {v1}, Lmediabrowser/model/session/PlaybackStopInfo;-><init>()V

    .line 1464
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v6

    .line 1465
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmediabrowser/model/session/PlaybackStopInfo;->setItemId(Ljava/lang/String;)V

    .line 1466
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p3}, Lmediabrowser/model/session/PlaybackStopInfo;->setPositionTicks(Ljava/lang/Long;)V

    .line 1467
    invoke-virtual {v1, p2}, Lmediabrowser/model/session/PlaybackStopInfo;->setPlaySessionId(Ljava/lang/String;)V

    .line 1468
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getPlaybackManager()Ltv/emby/embyatv/api/PlaybackManager;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p3

    invoke-virtual {p3}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p3

    invoke-virtual {p3}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lmediabrowser/apiinteraction/EmptyResponse;

    invoke-direct {v7}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Ltv/emby/embyatv/api/PlaybackManager;->reportPlaybackStopped(Lmediabrowser/model/session/PlaybackStopInfo;Ltv/emby/embyatv/api/StreamInfo;Ljava/lang/String;Ljava/lang/String;ZLmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/EmptyResponse;)V

    .line 1470
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->setLastPlayback(Ljava/util/Calendar;)V

    .line 1471
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, 0x4714f10

    if-eq p2, p3, :cond_1

    const p3, 0x72a55db

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Episode"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "Movie"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1476
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp;->setLastTvPlayback(Ljava/util/Calendar;)V

    goto :goto_1

    .line 1473
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp;->setLastMoviePlayback(Ljava/util/Calendar;)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static SafeToUpper(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2209
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SaveLoginCredentials(Ltv/emby/embyatv/startup/LogonCredentials;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2134
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const/4 v1, 0x0

    .line 2135
    invoke-virtual {v0, p1, v1}, Ltv/emby/embyatv/TvApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 2136
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2137
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 2138
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->setConfiguredAutoCredentials(Ltv/emby/embyatv/startup/LogonCredentials;)V

    return-void
.end method

.method public static SaveWolInfos(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmediabrowser/model/apiclient/WakeOnLanInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2158
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2160
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2161
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2163
    invoke-virtual {v0, p1, p0}, Ltv/emby/embyatv/TvApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 2164
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2165
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static SupportsExtras(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 2

    const-string v0, "Video"

    .line 1281
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TvChannel"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static VersionString()Ljava/lang/String;
    .locals 3

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f10060d

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.8.29g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V
    .locals 0

    .line 136
    invoke-static {p0, p1, p2}, Ltv/emby/embyatv/util/Utils;->addMainItem(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method private static addMainItem(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/BaseItemDto;",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;>;)V"
        }
    .end annotation

    .line 1066
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPartCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPartCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1069
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/Utils$16;

    invoke-direct {v2, p1, p2}, Ltv/emby/embyatv/util/Utils$16;-><init>(Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {v0, p0, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetAdditionalParts(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p2, p1}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/Float;)V
    .locals 1

    .line 1260
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1261
    sget-object v0, Ltv/emby/embyatv/util/Utils;->divider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/Long;)V
    .locals 1

    .line 1253
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1254
    sget-object v0, Ltv/emby/embyatv/util/Utils;->divider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1246
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1247
    sget-object v0, Ltv/emby/embyatv/util/Utils;->divider:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static allowMediaSelection(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 4

    .line 1687
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsFolder()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "MusicArtist"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Program"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TvChannel"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_preplay_options"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->CanPlay(Lmediabrowser/model/dto/BaseItemDto;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ")",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/ChapterItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1392
    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildChapterItems(Lmediabrowser/model/dto/BaseItemDto;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/BaseItemDto;",
            "Z)",
            "Ljava/util/List<",
            "Ltv/emby/embyatv/model/ChapterItemInfo;",
            ">;"
        }
    .end annotation

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    new-instance v1, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v1}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 1398
    sget-object v2, Lmediabrowser/model/entities/ImageType;->Chapter:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 1400
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getChapters()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmediabrowser/model/dto/ChapterInfoDto;

    if-eqz p1, :cond_1

    .line 1401
    invoke-virtual {v4}, Lmediabrowser/model/dto/ChapterInfoDto;->getHasImage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1402
    :cond_1
    new-instance v5, Ltv/emby/embyatv/model/ChapterItemInfo;

    invoke-direct {v5}, Ltv/emby/embyatv/model/ChapterItemInfo;-><init>()V

    .line 1403
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/model/ChapterItemInfo;->setItemId(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v4}, Lmediabrowser/model/dto/ChapterInfoDto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ltv/emby/embyatv/model/ChapterItemInfo;->setName(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v4}, Lmediabrowser/model/dto/ChapterInfoDto;->getStartPositionTicks()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ltv/emby/embyatv/model/ChapterItemInfo;->setStartPositionTicks(J)V

    .line 1406
    invoke-virtual {v4}, Lmediabrowser/model/dto/ChapterInfoDto;->getHasImage()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1407
    invoke-virtual {v4}, Lmediabrowser/model/dto/ChapterInfoDto;->getImageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 1408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmediabrowser/model/dto/ImageOptions;->setImageIndex(Ljava/lang/Integer;)V

    .line 1409
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ltv/emby/embyatv/model/ChapterItemInfo;->setImagePath(Ljava/lang/String;)V

    .line 1411
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static buildOverview(Lmediabrowser/model/livetv/SeriesTimerInfoDto;)Ljava/lang/String;
    .locals 3

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100662

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordNewOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100535

    :goto_0
    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100445

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100530

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordAnyChannel()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f10044c

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getChannelName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getDayPattern()Lmediabrowser/model/livetv/DayPattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getRecordAnyTime()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f100451

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nStarting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPrePaddingSeconds()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPrePaddingSeconds()I

    move-result v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->formatSeconds(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Early"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    const-string v1, "On Schedule"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " And Ending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPostPaddingSeconds()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getPostPaddingSeconds()I

    move-result p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->formatSeconds(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " After Schedule"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_4
    const-string p0, "On Schedule"

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPendingIntent(Lmediabrowser/model/dto/BaseItemDto;)Landroid/app/PendingIntent;
    .locals 3

    .line 1955
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const-class v2, Ltv/emby/embyatv/startup/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ItemId"

    .line 1956
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 1957
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1959
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1960
    const-class v2, Ltv/emby/embyatv/browsing/MainActivity;

    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1961
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1964
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    const/high16 v0, 0x8000000

    .line 1966
    invoke-virtual {v1, p0, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static convertDpToPixel(Landroid/content/Context;I)I
    .locals 0

    int-to-float p0, p1

    .line 349
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getDisplayDensity()F

    move-result p1

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    .line 2397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2398
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_0

    const/16 v7, 0x9

    if-gt v5, v7, :cond_0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    .line 2403
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    .line 2405
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-lt v6, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 2409
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 1693
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1694
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    int-to-long v4, p0

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1697
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1698
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1701
    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static convertToUtcDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 6

    .line 1713
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1714
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1717
    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1718
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1721
    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 2571
    new-array v0, v0, [B

    .line 2573
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2576
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static copyFontFile(Ljava/lang/String;)V
    .locals 11

    .line 2531
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 2532
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2536
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2537
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 2542
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2543
    :try_start_2
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2544
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v4

    const-string v5, "Copied asset file %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-interface {v4, v5, v6}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_2

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v0, :cond_1

    .line 2552
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    if-eqz v1, :cond_3

    .line 2560
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v10, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v0, v4

    move-object v1, v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v4

    .line 2547
    :goto_2
    :try_start_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v5

    invoke-virtual {v5}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v5

    const-string v6, "Failed to copy asset file %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-interface {v5, v6, v0, v3}, Lmediabrowser/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_2

    .line 2552
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    :catch_5
    :cond_3
    :goto_3
    return-void

    :catchall_3
    move-exception p0

    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_4
    if-eqz v1, :cond_5

    .line 2560
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 2565
    :catch_7
    :cond_5
    throw p0
.end method

.method public static createIso3ToIso2Map()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2581
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 2582
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    sget-object v3, Ltv/emby/embyatv/util/Utils;->iso3BibliographicalToIso2:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2585
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 2588
    :try_start_0
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    .line 2589
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2590
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2597
    :cond_1
    :goto_1
    sget-object v0, Ltv/emby/embyatv/util/Utils;->iso3BibliographicalToIso2:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_2

    .line 2598
    sget-object v0, Ltv/emby/embyatv/util/Utils;->iso3BibliographicalToIso2:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v2, Ltv/emby/embyatv/util/Utils;->iso3BibliographicalToIso2:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static createPopupMenu(Landroid/app/Activity;Landroid/view/View;I)Landroid/widget/PopupMenu;
    .locals 1

    .line 2326
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-object v0
.end method

.method public static darker(IF)I
    .locals 4

    .line 2518
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 2519
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 2520
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 2521
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/4 v3, 0x0

    .line 2524
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 2525
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    .line 2526
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2523
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static downMixAudio()Z
    .locals 6

    .line 2505
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/TvApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2506
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2507
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v3, "Downmixing audio due to wired headset"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 2511
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is50()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "1"

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    invoke-virtual {v3}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_audio_option"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public static encrypt(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 255
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 258
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static formatHrMinStr(J)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-wide/32 v1, 0x36ee80

    .line 325
    div-long v3, p0, v1

    .line 326
    rem-long/2addr p0, v1

    const-wide/32 v1, 0xea60

    .line 327
    div-long v5, p0, v1

    .line 328
    rem-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    .line 329
    div-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long v7, v3, v1

    if-lez v7, :cond_0

    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "h "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-ltz v0, :cond_2

    cmp-long v3, v5, v1

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "m "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-gez v0, :cond_3

    cmp-long v0, v5, v8

    if-gez v0, :cond_3

    cmp-long v0, p0, v1

    if-lez v0, :cond_3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public static formatMillis(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const v1, 0x36ee80

    .line 269
    div-int v2, p0, v1

    .line 270
    rem-int/2addr p0, v1

    const v1, 0xea60

    .line 271
    div-int v3, p0, v1

    .line 272
    rem-int/2addr p0, v1

    .line 273
    div-int/lit16 p0, p0, 0x3e8

    if-lez v2, :cond_0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x9

    if-ltz v3, :cond_2

    if-le v3, v1, :cond_1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-le p0, v1, :cond_3

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 287
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static formatMillis(J)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const-wide/32 v1, 0x36ee80

    .line 300
    div-long v3, p0, v1

    .line 301
    rem-long/2addr p0, v1

    const-wide/32 v1, 0xea60

    .line 302
    div-long v5, p0, v1

    .line 303
    rem-long/2addr p0, v1

    const-wide/16 v1, 0x3e8

    .line 304
    div-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long v7, v3, v1

    if-lez v7, :cond_0

    .line 306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    cmp-long v1, v5, v1

    const-wide/16 v2, 0x9

    if-ltz v1, :cond_3

    cmp-long v1, v5, v2

    if-lez v1, :cond_1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v7, :cond_2

    const-string v0, "0"

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    cmp-long v1, p0, v2

    if-lez v1, :cond_4

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 318
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static formatSeconds(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const v1, 0x7f10059f

    invoke-virtual {p0, v1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_0
    const/16 v0, 0xe10

    if-ge p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/16 v2, 0x78

    if-ge p0, v2, :cond_1

    const p0, 0x7f100511

    goto :goto_0

    :cond_1
    const p0, 0x7f100512

    :goto_0
    invoke-virtual {v1, p0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0xe10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const/16 v2, 0x1c20

    if-ge p0, v2, :cond_3

    const p0, 0x7f1004e2

    goto :goto_1

    :cond_3
    const p0, 0x7f1004e3

    :goto_1
    invoke-virtual {v1, p0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static getAlphaValue(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x3ee66666    # 0.45f

    return p0

    :pswitch_1
    const p0, 0x3f333333    # 0.7f

    return p0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAudioChannelsString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1860
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "2.1"

    return-object p0

    :pswitch_1
    const-string p0, "stereo"

    return-object p0

    :cond_0
    const-string p0, "7.1"

    return-object p0

    :cond_1
    const-string p0, "5.1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBackdropImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;Z)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 641
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v0

    const/16 v1, 0x780

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 642
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 644
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    if-eqz p2, :cond_0

    .line 645
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {v2, p2}, Ltv/emby/embyatv/util/Utils;->randInt(II)I

    move-result v2

    .line 646
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageIndex(Ljava/lang/Integer;)V

    .line 647
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 650
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 651
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 653
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    if-eqz p2, :cond_2

    .line 654
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {v2, p2}, Ltv/emby/embyatv/util/Utils;->randInt(II)I

    move-result v2

    .line 655
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageIndex(Ljava/lang/Integer;)V

    .line 656
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropItemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBannerImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 5

    .line 512
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasBanner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 513
    :cond_0
    new-instance p2, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {p2}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 514
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lmediabrowser/model/entities/ImageType;->Banner:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 516
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MusicArtist"

    .line 517
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MusicAlbum"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    sget-object v1, Ltv/emby/embyatv/util/Utils;->ProgressIndicatorTypes:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x4058c00000000000L    # 99.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 520
    invoke-virtual {v0}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmediabrowser/model/dto/ImageOptions;->setPercentPlayed(Ljava/lang/Integer;)V

    .line 526
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 2282
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 2284
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2285
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 2286
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 2287
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorValue(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, -0x777778

    return p0

    :pswitch_1
    const/16 p0, -0x100

    return p0

    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentFormattedTime()Ljava/lang/String;
    .locals 3

    .line 2274
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "window"

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 154
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 155
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 157
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 158
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 159
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static getEntryIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1945
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1946
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "direct"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1947
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEpisodeTitle(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 1323
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 1325
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    const v2, 0x7f1005c6

    invoke-virtual {v0, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1328
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumberEnd()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1334
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getFirstVisibleChildNdx(Landroid/widget/LinearLayout;)I
    .locals 4

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 369
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getFriendlyBitrate(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    .line 1975
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const v0, 0x7f10045d

    invoke-virtual {p0, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1976
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf4240

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "%.2f Mbps"

    .line 1977
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1978
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    const-string v0, "%.2f Kbps"

    .line 1979
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "%d bps"

    .line 1981
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyCodec(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1970
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    const p1, 0x7f10045d

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "dca"

    .line 1971
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "DCA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "ac3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "AC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "eac3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "EAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    :goto_0
    const-string p0, "Dolby+"

    goto :goto_3

    :cond_5
    :goto_1
    const-string p0, "Dolby"

    goto :goto_3

    :cond_6
    :goto_2
    const-string p0, "DTS-HD MA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "DTS HD"

    goto :goto_3

    :cond_7
    const-string p0, "DTS"

    :goto_3
    return-object p0
.end method

.method public static getFriendlyDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1986
    invoke-static {p0, v0, v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyDate(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1990
    invoke-static {p0, p1, v0}, Ltv/emby/embyatv/util/Utils;->getFriendlyDate(Ljava/util/Date;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFriendlyDate(Ljava/util/Date;ZZ)Ljava/lang/String;
    .locals 7

    .line 1994
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1995
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p2, :cond_1

    const/16 p2, 0xb

    .line 1996
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v1, 0xc

    if-ge p2, v1, :cond_0

    const-string p2, " AM"

    goto :goto_0

    :cond_0
    const-string p2, " PM"

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 1997
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 1998
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_6

    const/4 v3, 0x6

    .line 1999
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Yesterday"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2000
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v0, 0x7f1005f1

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2001
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    if-ne v4, v5, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v0, 0x7f1005f5

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2002
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x7

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le v4, v5, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v6, p1, v1}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz p1, :cond_6

    .line 2003
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    const v4, 0x7f1004e9

    invoke-virtual {p1, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2006
    :cond_6
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageAspectRatio(Lmediabrowser/model/dto/BaseItemDto;ZZ)Ljava/lang/Double;
    .locals 2

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Movie"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result p1

    if-gtz p1, :cond_1

    .line 426
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "UserView"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CollectionFolder"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Video"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "MusicVideo"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide p0, 0x3ffc77318fc50481L    # 1.7791

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v0, 0x3fe55810624dd2f2L    # 0.667

    if-eqz p2, :cond_3

    .line 428
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPrimaryImageAspectRatio()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_4
    sget-object p1, Ltv/emby/embyatv/util/Utils;->ThumbFallbackTypes:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-wide v0, 0x3ffc76c8b4395810L    # 1.779

    :cond_5
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getImageUrl(Ljava/lang/String;Lmediabrowser/model/entities/ImageType;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;
    .locals 2

    .line 503
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 504
    sget v1, Ltv/emby/embyatv/util/Utils;->maxPrimaryImageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 505
    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 506
    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p3, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInfoRow(Lmediabrowser/model/dto/BaseItemDto;)Ljava/lang/String;
    .locals 8

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, -0x71b7788b

    if-eq v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_12

    .line 1143
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "S"

    .line 1144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", E"

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCommunityRating()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1151
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCommunityRating()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/Float;)V

    .line 1153
    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCriticRating()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_4
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCriticRating()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    .line 1156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v1, 0x0

    .line 1161
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1162
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaStreams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmediabrowser/model/entities/MediaStream;

    .line 1163
    invoke-virtual {v5}, Lmediabrowser/model/entities/MediaStream;->getType()Lmediabrowser/model/entities/MediaStreamType;

    move-result-object v6

    sget-object v7, Lmediabrowser/model/entities/MediaStreamType;->Video:Lmediabrowser/model/entities/MediaStreamType;

    if-ne v6, v7, :cond_6

    move-object v1, v5

    :cond_7
    if-eqz v1, :cond_9

    .line 1171
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, 0x776

    if-le v2, v5, :cond_8

    const-string v1, "1080"

    .line 1172
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    .line 1173
    :cond_8
    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f6

    if-le v1, v2, :cond_9

    const-string v1, "720"

    .line 1174
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1178
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_a

    .line 1179
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v5, 0x23c34600

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/Long;)V

    const-string v1, "m"

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_a
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1184
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getOfficialRating()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1187
    :cond_b
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x6c991569

    if-eq v2, v5, :cond_e

    const v5, 0x17833001

    if-eq v2, v5, :cond_d

    const v5, 0x50c7b664

    if-eq v2, v5, :cond_c

    goto :goto_3

    :cond_c
    const-string v2, "Program"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v3, 0x1

    goto :goto_3

    :cond_d
    const-string v2, "TvChannel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v3, 0x2

    goto :goto_3

    :cond_e
    const-string v2, "Series"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v3, 0x0

    :cond_f
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 1209
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1210
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1203
    :pswitch_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1204
    invoke-static {v0, p0}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1189
    :pswitch_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1190
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAirDays()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v1, " "

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_10
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAirTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1194
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAirTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_11
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1197
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStatus()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1124
    :cond_12
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1125
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    const v2, 0x7f10045c

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_13
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v1, "Died "

    .line 1129
    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->addWithDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1130
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM y"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {v1, p0}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 1133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1135
    :cond_14
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v1, " ("

    .line 1136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0, v1}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Date;Ljava/util/Calendar;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 1138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_15
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstantMixAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmediabrowser/apiinteraction/Response<",
            "[",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;)V"
        }
    .end annotation

    .line 992
    new-instance v0, Lmediabrowser/model/querying/SimilarItemsQuery;

    invoke-direct {v0}, Lmediabrowser/model/querying/SimilarItemsQuery;-><init>()V

    .line 993
    invoke-virtual {v0, p0}, Lmediabrowser/model/querying/SimilarItemsQuery;->setId(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/querying/SimilarItemsQuery;->setUserId(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 995
    new-array p0, p0, [Lmediabrowser/model/querying/ItemFields;

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Genres:Lmediabrowser/model/querying/ItemFields;

    const/4 v2, 0x1

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Lmediabrowser/model/querying/SimilarItemsQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 996
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    new-instance v1, Ltv/emby/embyatv/util/Utils$14;

    invoke-direct {v1, p1}, Ltv/emby/embyatv/util/Utils$14;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetInstantMixFromItem(Lmediabrowser/model/querying/SimilarItemsQuery;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static getItemIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    .line 1923
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Intent Uri: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1924
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1925
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "play"

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "displayitem"

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getItemInfo(Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/entities/BaseItemInfo;
    .locals 3

    .line 1547
    new-instance v0, Lmediabrowser/model/entities/BaseItemInfo;

    invoke-direct {v0}, Lmediabrowser/model/entities/BaseItemInfo;-><init>()V

    .line 1548
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setName(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setId(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getRunTimeTicks()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setRunTimeTicks(Ljava/lang/Long;)V

    .line 1551
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setLogoImageTag(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoItemId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setLogoItemId(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lmediabrowser/model/entities/BaseItemInfo;->setBackdropImageTag(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropItemId()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {v0, p0}, Lmediabrowser/model/entities/BaseItemInfo;->setBackdropItemId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/dto/BaseItemDto;",
            "ZZ",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;>;)V"
        }
    .end annotation

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    new-instance v1, Lmediabrowser/model/querying/ItemQuery;

    invoke-direct {v1}, Lmediabrowser/model/querying/ItemQuery;-><init>()V

    .line 669
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/TvApp;->setPlayingIntros(Z)V

    .line 671
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "Folder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "BoxSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "Playlist"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "PhotoAlbum"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v4, "Program"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_5
    const-string v4, "CollectionFolder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v4, "MusicAlbum"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_7
    const-string v4, "TvChannel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_8
    const-string v4, "Episode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_9
    const-string v4, "UserView"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_a
    const-string v4, "Series"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_b
    const-string v4, "Season"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_c
    const-string v4, "MusicArtist"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/16 v4, 0x3e8

    packed-switch v2, :pswitch_data_0

    if-eqz p1, :cond_c

    .line 839
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/TvApp;->useExternalPlayer(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_enable_cinema_mode"

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 841
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/Utils$10;

    invoke-direct {v2, v0, p0, p3}, Ltv/emby/embyatv/util/Utils$10;-><init>(Ljava/util/List;Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p2, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetIntrosAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 822
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/Utils$9;

    invoke-direct {v2, p0, v0, p3}, Ltv/emby/embyatv/util/Utils$9;-><init>(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p2, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetLiveTvChannelAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 795
    :pswitch_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 796
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "No Channel ID"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lmediabrowser/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    return-void

    .line 801
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltv/emby/embyatv/util/Utils$8;

    invoke-direct {v2, p0, v0, p3}, Ltv/emby/embyatv/util/Utils$8;-><init>(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p2, v1, v2}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 772
    :pswitch_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FAV_SONGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 773
    new-array p0, v10, [Lmediabrowser/model/querying/ItemFilter;

    sget-object p1, Lmediabrowser/model/querying/ItemFilter;->IsFavoriteOrLikes:Lmediabrowser/model/querying/ItemFilter;

    aput-object p1, p0, v3

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setFilters([Lmediabrowser/model/querying/ItemFilter;)V

    goto :goto_2

    .line 775
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    .line 777
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setIsMissing(Ljava/lang/Boolean;)V

    .line 778
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setIsVirtualUnaired(Ljava/lang/Boolean;)V

    if-eqz p2, :cond_3

    const-string p0, "Random"

    .line 779
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 780
    :cond_3
    invoke-virtual {v1, v10}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 781
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 782
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 783
    new-array p0, v8, [Lmediabrowser/model/querying/ItemFields;

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v3

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->MediaStreams:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v10

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->Chapters:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v9

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->Path:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v7

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v6

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 784
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 786
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/util/Utils$7;

    invoke-direct {p1, p3}, Ltv/emby/embyatv/util/Utils$7;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v1, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 753
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setIsMissing(Ljava/lang/Boolean;)V

    .line 754
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setIsVirtualUnaired(Ljava/lang/Boolean;)V

    const-string p1, "Audio"

    .line 755
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string p1, "Random"

    .line 756
    :goto_3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    const-string p1, "MusicArtist"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Album"

    goto :goto_3

    :cond_5
    const-string p1, "SortName"

    goto :goto_3

    :goto_4
    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 757
    invoke-virtual {v1, v10}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 758
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 759
    new-array p1, v9, [Lmediabrowser/model/querying/ItemFields;

    sget-object p2, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object p2, p1, v3

    sget-object p2, Lmediabrowser/model/querying/ItemFields;->Genres:Lmediabrowser/model/querying/ItemFields;

    aput-object p2, p1, v10

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 760
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    const-string p1, "MusicArtist"

    .line 762
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setArtistIds([Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    .line 763
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 764
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/util/Utils$6;

    invoke-direct {p1, p3}, Ltv/emby/embyatv/util/Utils$6;-><init>(Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v1, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 730
    :pswitch_4
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setParentId(Ljava/lang/String;)V

    .line 731
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setIsMissing(Ljava/lang/Boolean;)V

    .line 732
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setIsVirtualUnaired(Ljava/lang/Boolean;)V

    .line 733
    new-array p1, v10, [Lmediabrowser/model/entities/LocationType;

    sget-object v2, Lmediabrowser/model/entities/LocationType;->Virtual:Lmediabrowser/model/entities/LocationType;

    aput-object v2, p1, v3

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setExcludeLocationTypes([Lmediabrowser/model/entities/LocationType;)V

    const-string p1, "music"

    .line 734
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Audio"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_7
    const-string p1, "Video"

    const-string v2, "Photo"

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setMediaTypes([Ljava/lang/String;)V

    .line 735
    new-array p1, v10, [Ljava/lang/String;

    if-eqz p2, :cond_8

    const-string p0, "Random"

    goto :goto_7

    :cond_8
    const-string p2, "BoxSet"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "SortName"

    goto :goto_7

    :cond_9
    const/4 p0, 0x0

    :goto_7
    aput-object p0, p1, v3

    invoke-virtual {v1, p1}, Lmediabrowser/model/querying/ItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 736
    invoke-virtual {v1, v10}, Lmediabrowser/model/querying/ItemQuery;->setRecursive(Z)V

    .line 737
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setCollapseBoxSetItems(Ljava/lang/Boolean;)V

    .line 738
    invoke-virtual {v1, v3}, Lmediabrowser/model/querying/ItemQuery;->setEnableTotalRecordCount(Z)V

    .line 739
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 740
    new-array p0, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v3

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->MediaStreams:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v10

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->Chapters:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v9

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->Path:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v7

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v6

    sget-object p1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object p1, p0, v8

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 741
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p0

    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmediabrowser/model/querying/ItemQuery;->setUserId(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/util/Utils$5;

    invoke-direct {p1, v0, p3}, Ltv/emby/embyatv/util/Utils$5;-><init>(Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p0, v1, p1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemsAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_8

    .line 673
    :pswitch_5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_enable_tv_queuing"

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 675
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Ltv/emby/embyatv/playback/MediaManager;->setVideoQueueModified(Z)V

    .line 677
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 678
    new-instance p1, Lmediabrowser/model/querying/EpisodeQuery;

    invoke-direct {p1}, Lmediabrowser/model/querying/EpisodeQuery;-><init>()V

    const/16 p2, 0x32

    .line 679
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/EpisodeQuery;->setLimit(Ljava/lang/Integer;)V

    .line 680
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/EpisodeQuery;->setStartItemId(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/EpisodeQuery;->setSeriesId(Ljava/lang/String;)V

    .line 682
    new-array p2, v5, [Lmediabrowser/model/querying/ItemFields;

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->MediaSources:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v3

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->MediaStreams:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v10

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Path:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v9

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Chapters:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v7

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->Overview:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v6

    sget-object v1, Lmediabrowser/model/querying/ItemFields;->PrimaryImageAspectRatio:Lmediabrowser/model/querying/ItemFields;

    aput-object v1, p2, v8

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/EpisodeQuery;->setFields([Lmediabrowser/model/querying/ItemFields;)V

    .line 683
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object p2

    invoke-virtual {p2}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmediabrowser/model/querying/EpisodeQuery;->setUserId(Ljava/lang/String;)V

    .line 684
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p2

    invoke-virtual {p2}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p2

    new-instance v1, Ltv/emby/embyatv/util/Utils$4;

    invoke-direct {v1, p0, v0, p3}, Ltv/emby/embyatv/util/Utils$4;-><init>(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p2, p1, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetEpisodesAsync(Lmediabrowser/model/querying/EpisodeQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_8

    .line 715
    :cond_a
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object p0

    const-string p1, "Unable to add subsequent episodes due to lack of season or episode data."

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lmediabrowser/model/logging/ILogger;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-virtual {p3, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_8

    .line 719
    :cond_b
    invoke-virtual {p3, v0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    goto :goto_8

    .line 863
    :cond_c
    invoke-static {p0, v0, p3}, Ltv/emby/embyatv/util/Utils;->addMainItem(Lmediabrowser/model/dto/BaseItemDto;Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    :goto_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x711b8e54 -> :sswitch_c
        -0x6ca0a8fd -> :sswitch_b
        -0x6c991569 -> :sswitch_a
        -0xc06ded0 -> :sswitch_9
        0x72a55db -> :sswitch_8
        0x17833001 -> :sswitch_7
        0x46a98b6a -> :sswitch_6
        0x4a5a0ccc -> :sswitch_5
        0x50c7b664 -> :sswitch_4
        0x56e63b7d -> :sswitch_3
        0x73e0e5f2 -> :sswitch_2
        0x76f3dab7 -> :sswitch_1
        0x7dc2088e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getJumpListPrefixesAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/ApiClient;Lmediabrowser/apiinteraction/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmediabrowser/model/querying/ItemQuery;",
            "Lmediabrowser/apiinteraction/ApiClient;",
            "Lmediabrowser/apiinteraction/Response<",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;>;)V"
        }
    .end annotation

    .line 406
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0.0"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v1, Ltv/emby/embyatv/util/Utils$3;

    invoke-direct {v1, v0, p2}, Ltv/emby/embyatv/util/Utils$3;-><init>(Ljava/util/List;Lmediabrowser/apiinteraction/Response;)V

    invoke-virtual {p1, p0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetItemPrefixesAsync(Lmediabrowser/model/querying/ItemQuery;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p0

    invoke-virtual {p0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1003c7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/primitives/Chars;->asList([C)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmediabrowser/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b8

    .line 619
    invoke-static {p0, p1, v0}, Ltv/emby/embyatv/util/Utils;->getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogoImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 624
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 625
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 626
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 627
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasLogo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 628
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p2

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Logo:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 630
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 631
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoImageTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentLogoItemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxBitrate()I
    .locals 3

    .line 2296
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_max_bitrate"

    const-string v2, "0"

    .line 2297
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2298
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 2299
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAutoBitrate()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const v1, 0x186a0

    mul-int v0, v0, v1

    :goto_0
    return v0
.end method

.method public static getNavKeyDelay()I
    .locals 1

    .line 353
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isShield()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick4k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTvStick()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    goto :goto_1

    :cond_1
    const/16 v0, 0x96

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x50

    :goto_1
    return v0
.end method

.method public static getPosOfItemWithIndex(Ltv/emby/embyatv/itemhandling/ItemRowAdapter;I)I
    .locals 4

    .line 376
    invoke-virtual {p0}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 379
    invoke-virtual {p0, v1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getPremieres(Landroidx/leanback/widget/ArrayObjectAdapter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/leanback/widget/ArrayObjectAdapter;",
            ")",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/BaseItemDto;",
            ">;"
        }
    .end annotation

    .line 1024
    invoke-virtual {p0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    .line 1025
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, -0x5

    .line 1027
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1029
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltv/emby/embyatv/itemhandling/BaseRowItem;

    invoke-virtual {v4}, Ltv/emby/embyatv/itemhandling/BaseRowItem;->getBaseItem()Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v4

    .line 1030
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v5

    .line 1031
    :goto_1
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getIndexNumber()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    if-eqz v5, :cond_1

    .line 1032
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_2
    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getDateCreated()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lmediabrowser/model/dto/BaseItemDto;->getPremiereDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lmediabrowser/model/dto/BaseItemDto;->setDateCreated(Ljava/util/Date;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1036
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 1037
    new-instance p0, Ltv/emby/embyatv/util/Utils$15;

    invoke-direct {p0}, Ltv/emby/embyatv/util/Utils$15;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    return-object v1
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;II)Ljava/lang/String;
    .locals 3

    .line 472
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 473
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 474
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/ImageOptions;->setMaxWidth(Ljava/lang/Integer;)V

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 477
    sget-object p1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 478
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;
    .locals 3

    .line 483
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 484
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 485
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 486
    sget v1, Ltv/emby/embyatv/util/Utils;->maxPrimaryImageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 487
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 488
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZI)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    .line 549
    invoke-static/range {v0 .. v5}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZZZI)Ljava/lang/String;
    .locals 8

    .line 553
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 554
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v2

    sget-object v4, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 556
    :goto_0
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    const/4 v5, 0x0

    if-eqz p4, :cond_1

    .line 557
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v6, "Episode"

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 558
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object p3

    .line 559
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_1
    if-nez p3, :cond_3

    .line 560
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Episode"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    .line 582
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Season"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    if-nez v2, :cond_8

    .line 583
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesPrimaryImageTag()Ljava/lang/String;

    move-result-object p3

    .line 584
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 562
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 563
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object p3

    .line 564
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object v1

    .line 565
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    goto/16 :goto_2

    .line 566
    :cond_4
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 567
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesThumbImageTag()Ljava/lang/String;

    move-result-object p3

    .line 568
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getSeriesId()Ljava/lang/String;

    move-result-object v1

    .line 569
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    goto :goto_2

    .line 570
    :cond_5
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 571
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 572
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getParentBackdropItemId()Ljava/lang/String;

    move-result-object v1

    .line 573
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    goto :goto_2

    :cond_6
    const-string p3, "Movie"

    .line 574
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 575
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p3

    sget-object p4, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 576
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    goto :goto_2

    :cond_7
    const-string p3, "Movie"

    .line 577
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropCount()I

    move-result p3

    if-lez p3, :cond_8

    .line 578
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 579
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    goto :goto_2

    :cond_8
    move-object p3, v2

    :goto_2
    const-string p4, "Audio"

    .line 587
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasPrimaryImage()Z

    move-result p4

    if-nez p4, :cond_a

    .line 589
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 590
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumPrimaryImageTag()Ljava/lang/String;

    move-result-object p3

    .line 591
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    .line 592
    sget-object v4, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    goto :goto_3

    .line 593
    :cond_9
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_a

    .line 594
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getAlbumArtists()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmediabrowser/model/dto/NameIdPair;

    invoke-virtual {p3}, Lmediabrowser/model/dto/NameIdPair;->getId()Ljava/lang/String;

    move-result-object v1

    move-object p3, v3

    .line 598
    :cond_a
    :goto_3
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 599
    invoke-virtual {v0, v4}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 600
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p4

    if-eqz p4, :cond_b

    if-eqz p2, :cond_b

    .line 602
    sget-object p2, Ltv/emby/embyatv/util/Utils;->ProgressIndicatorTypes:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 603
    invoke-virtual {p4}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double p0, v4, v6

    if-lez p0, :cond_b

    invoke-virtual {p4}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4058c00000000000L    # 99.0

    cmpg-double p0, v4, v6

    if-gez p0, :cond_b

    .line 604
    invoke-virtual {p4}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayedPercentage()Ljava/lang/Double;

    move-result-object p0

    .line 605
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/dto/ImageOptions;->setPercentPlayed(Ljava/lang/Integer;)V

    :cond_b
    if-nez p3, :cond_c

    return-object v3

    .line 612
    :cond_c
    invoke-virtual {v0, p3}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    const/16 p0, 0x64

    .line 613
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmediabrowser/model/dto/ImageOptions;->setQuality(Ljava/lang/Integer;)V

    .line 615
    invoke-virtual {p1, v1, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemPerson;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 2

    .line 434
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemPerson;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 436
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemPerson;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 438
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 439
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetPersonImageUrl(Lmediabrowser/model/dto/BaseItemPerson;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/StudioDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 2

    .line 443
    invoke-virtual {p0}, Lmediabrowser/model/dto/StudioDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 445
    invoke-virtual {p0}, Lmediabrowser/model/dto/StudioDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 446
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 447
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 448
    invoke-virtual {p0}, Lmediabrowser/model/dto/StudioDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;
    .locals 2

    .line 463
    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 464
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 465
    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getPrimaryImageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 466
    sget v1, Ltv/emby/embyatv/util/Utils;->maxPrimaryImageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 467
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 468
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetUserImageUrl(Lmediabrowser/model/dto/UserDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/apiinteraction/ApiClient;)Ljava/lang/String;
    .locals 3

    .line 492
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getHasPrimaryImage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 493
    :cond_0
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 494
    invoke-virtual {p0}, Lmediabrowser/model/livetv/ChannelInfoDto;->getImageTags()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 495
    sget v1, Ltv/emby/embyatv/util/Utils;->maxPrimaryImageHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 496
    sget-object v1, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 497
    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Lmediabrowser/model/livetv/ChannelInfoDto;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryImageUrl(Lmediabrowser/model/livetv/SeriesTimerInfoDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 2

    .line 452
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentThumbItemId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_1
    new-instance v1, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v1}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 456
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lmediabrowser/model/dto/ImageOptions;->setMaxHeight(Ljava/lang/Integer;)V

    .line 457
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lmediabrowser/model/entities/ImageType;->Primary:Lmediabrowser/model/entities/ImageType;

    goto :goto_1

    :cond_2
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    :goto_1
    invoke-virtual {v1, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 458
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentPrimaryImageItemId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentPrimaryImageTag()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/livetv/SeriesTimerInfoDto;->getParentThumbImageTag()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v1, p0}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1, v0, v1}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReleaseVersion(Ljava/lang/String;)I
    .locals 2

    const-string v0, "[.]"

    .line 2269
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2270
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getRowOfType(Landroidx/leanback/widget/ArrayObjectAdapter;Ltv/emby/embyatv/querying/QueryType;)Landroidx/leanback/widget/ListRow;
    .locals 3

    const/4 v0, 0x0

    .line 1010
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1012
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ListRow;

    .line 1013
    invoke-virtual {v1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    .line 1014
    invoke-virtual {v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getQueryType()Ltv/emby/embyatv/querying/QueryType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStoreUrl()Ljava/lang/String;
    .locals 1

    .line 1053
    invoke-static {}, Ltv/emby/embyatv/util/Utils;->isFireTv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.amazon.com/Emby-for-Fire-TV/dp/B00VVJKTW8/ref=sr_1_2?s=mobile-apps&ie=UTF8&qid=1430569449&sr=1-2"

    goto :goto_0

    :cond_0
    const-string v0, "https://play.google.com/store/apps/details?id=tv.emby.embyatv"

    :goto_0
    return-object v0
.end method

.method public static getSubTextSize(I)I
    .locals 1

    const/16 v0, 0x28

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x3c

    return p0

    :pswitch_1
    const/16 p0, 0x32

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/16 p0, 0x1e

    return p0

    :pswitch_4
    const/16 p0, 0x19

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;I)Ljava/lang/String;
    .locals 3

    .line 531
    new-instance v0, Lmediabrowser/model/dto/ImageOptions;

    invoke-direct {v0}, Lmediabrowser/model/dto/ImageOptions;-><init>()V

    .line 532
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getHasThumb()Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 534
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Backdrop:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 535
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getBackdropImageTags()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-static {p0, p1, v2, p2}, Ltv/emby/embyatv/util/Utils;->getPrimaryImageUrl(Lmediabrowser/model/dto/BaseItemDto;Lmediabrowser/apiinteraction/ApiClient;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 540
    :cond_1
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getImageTags()Ljava/util/HashMap;

    move-result-object p2

    sget-object v1, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setTag(Ljava/lang/String;)V

    .line 541
    sget-object p2, Lmediabrowser/model/entities/ImageType;->Thumb:Lmediabrowser/model/entities/ImageType;

    invoke-virtual {v0, p2}, Lmediabrowser/model/dto/ImageOptions;->setImageType(Lmediabrowser/model/entities/ImageType;)V

    .line 544
    :goto_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetImageUrl(Ljava/lang/String;Lmediabrowser/model/dto/ImageOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranscodeReasons(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1867
    sget-object v0, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1869
    sget-object v1, Ltv/emby/embyatv/util/Utils;->transcodeReasonKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "&"

    .line 1870
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1871
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1872
    :cond_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1873
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "**** Transcode reason string: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ","

    .line 1874
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->getTranslatedReasons([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1878
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static getTranslatedReasons([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1883
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1884
    aget-object v2, p0, v1

    invoke-static {v2}, Ltv/emby/embyatv/util/Utils;->translateReason(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getVideoWidths(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmediabrowser/model/dto/MediaSourceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 2305
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    .line 2306
    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->GetVideoStreams(Lmediabrowser/model/dto/MediaSourceInfo;)Ljava/util/List;

    move-result-object v1

    .line 2307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2308
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/entities/MediaStream;

    invoke-virtual {v1}, Lmediabrowser/model/entities/MediaStream;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getYouTubeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "v="

    .line 1057
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 1059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleConnectionResponse(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;Lmediabrowser/apiinteraction/ConnectionResult;)V
    .locals 5

    .line 2429
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    .line 2430
    sget-object v1, Ltv/emby/embyatv/util/Utils$36;->$SwitchMap$mediabrowser$model$apiclient$ConnectionState:[I

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getState()Lmediabrowser/model/apiclient/ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/apiclient/ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p2, "Select A server"

    .line 2484
    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2485
    new-instance p2, Ltv/emby/embyatv/util/Utils$35;

    invoke-direct {p2, p1}, Ltv/emby/embyatv/util/Utils$35;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, p2}, Lmediabrowser/apiinteraction/IConnectionManager;->GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p0, "Sign in with connect..."

    .line 2432
    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p0, p2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2433
    new-instance p0, Landroid/content/Intent;

    const-class p2, Ltv/emby/embyatv/startup/ConnectActivity;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2434
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_2
    const-string p0, "Server not available..."

    .line 2438
    new-array p2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p0, p2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "No MB Servers available..."

    .line 2439
    invoke-static {p1, p0}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2442
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sign in with server "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-virtual {v3}, Lmediabrowser/model/apiclient/ServerInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " total: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2443
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmediabrowser/model/apiclient/ServerInfo;

    invoke-static {p0, p2, p1}, Ltv/emby/embyatv/util/Utils;->signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V

    goto :goto_1

    .line 2446
    :pswitch_4
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getConnectUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_login_behavior"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getServers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/apiclient/ServerInfo;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2449
    invoke-virtual {p2}, Lmediabrowser/apiinteraction/ConnectionResult;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object p0

    invoke-virtual {v1}, Lmediabrowser/model/apiclient/ServerInfo;->getUserId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ltv/emby/embyatv/util/Utils$33;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/util/Utils$33;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p2, v0}, Lmediabrowser/apiinteraction/ApiClient;->GetUserAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    goto :goto_1

    :cond_2
    const-string p2, "Ignoring saved connection manager sign in"

    .line 2459
    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2460
    new-instance p2, Ltv/emby/embyatv/util/Utils$34;

    invoke-direct {p2, p0, p1}, Ltv/emby/embyatv/util/Utils$34;-><init>(Lmediabrowser/apiinteraction/IConnectionManager;Landroid/app/Activity;)V

    invoke-interface {p0, p2}, Lmediabrowser/apiinteraction/IConnectionManager;->GetAvailableServers(Lmediabrowser/apiinteraction/Response;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleInProgressPlaybackRequest(Lmediabrowser/model/dto/BaseItemDto;Landroid/app/Activity;)V
    .locals 2

    .line 1486
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$17;

    invoke-direct {v1, p1, p0}, Ltv/emby/embyatv/util/Utils$17;-><init>(Landroid/app/Activity;Lmediabrowser/model/dto/BaseItemDto;)V

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/TvManager;->findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static is1stGenFireTv()Z
    .locals 2

    .line 2343
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static is50()Z
    .locals 2

    .line 2352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is60()Z
    .locals 2

    .line 2357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is70()Z
    .locals 2

    .line 2360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBravia()Z
    .locals 2

    .line 2334
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "BRAVIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFireElement()Z
    .locals 2

    .line 2340
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTRS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFireTv()Z
    .locals 2

    .line 2330
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFireTvStick()Z
    .locals 2

    .line 2337
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

.method public static isFireTvStick1stGen()Z
    .locals 2

    .line 2338
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFireTvStick4k()Z
    .locals 2

    .line 2339
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGreaterThan51()Z
    .locals 2

    .line 2354
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "5.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ltv/emby/embyatv/util/Utils;->is60()Z

    move-result v0

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

.method public static isLiveTv(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 2

    const-string v0, "Program"

    .line 402
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LiveTvChannel"

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isMi3()Z
    .locals 2

    .line 2342
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MIBOX3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNew(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 2

    .line 1679
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsSeries()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsNews()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsNew()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentSystemInfo()Lmediabrowser/model/system/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lmediabrowser/model/system/SystemInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.6.0.1"

    invoke-static {v0, v1}, Ltv/emby/embyatv/util/Utils;->versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getIsRepeat()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->isTrue(Ljava/lang/Boolean;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNexus()Z
    .locals 2

    .line 2347
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus Player"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOreoOrLater()Z
    .locals 2

    .line 2362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPhilipsTv()Z
    .locals 2

    .line 2336
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "QM163E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isShield()Z
    .locals 2

    .line 2345
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHIELD Android TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1683
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isX86()Z
    .locals 2

    const-string v0, "i686"

    const-string v1, "os.arch"

    .line 2349
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchAfterLogin(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 2102
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getAppValidator()Ltv/emby/embyatv/validation/AppValidator;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$31;

    invoke-direct {v1, p1, p0}, Ltv/emby/embyatv/util/Utils$31;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/validation/AppValidator;->validate(Lmediabrowser/apiinteraction/EmptyResponse;)V

    return-void
.end method

.method public static loginAuthenticatedUser(Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .line 2072
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    .line 2073
    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signed in as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v0, p0}, Ltv/emby/embyatv/TvApp;->setCurrentUser(Lmediabrowser/model/dto/UserDto;)V

    .line 2076
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/apiinteraction/ApiClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ltv/emby/embyatv/util/Utils$30;

    invoke-direct {v1, v0, p1, p2}, Ltv/emby/embyatv/util/Utils$30;-><init>(Ltv/emby/embyatv/TvApp;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ltv/emby/embyatv/TvApp;->getDisplayPrefsAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 2047
    invoke-static {p0, p1, p2, p3, v0}, Ltv/emby/embyatv/util/Utils;->loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static loginUser(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/ApiClient;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 2052
    :try_start_0
    new-instance v0, Ltv/emby/embyatv/util/Utils$29;

    invoke-direct {v0, p1, p3, p4}, Ltv/emby/embyatv/util/Utils$29;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1, v0}, Lmediabrowser/apiinteraction/ApiClient;->AuthenticateUserAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2067
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static numYears(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4

    const/4 v0, 0x1

    .line 1235
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 1236
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1238
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x5

    .line 1239
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ge p1, p0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static numYears(Ljava/util/Date;Ljava/util/Calendar;)I
    .locals 1

    .line 1229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1230
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1231
    invoke-static {v0, p1}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static numYears(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1

    .line 1221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1222
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1224
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1225
    invoke-static {v0, p0}, Ltv/emby/embyatv/util/Utils;->numYears(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static play(Lmediabrowser/model/dto/BaseItemDto;IZIILjava/lang/String;Landroid/content/Context;)V
    .locals 9

    .line 871
    instance-of v0, p6, Ltv/emby/embyatv/playback/PlaybackOverlayActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPlaybackController()Ltv/emby/embyatv/playback/PlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/playback/PlaybackController;->stop()V

    :cond_0
    if-nez p1, :cond_1

    .line 874
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v8, Ltv/emby/embyatv/util/Utils$11;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p6

    move v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ltv/emby/embyatv/util/Utils$11;-><init>(Lmediabrowser/model/dto/BaseItemDto;Landroid/content/Context;IIILjava/lang/String;)V

    invoke-static {p0, v0, p2, v8}, Ltv/emby/embyatv/util/Utils;->getItemsToPlay(Lmediabrowser/model/dto/BaseItemDto;ZZLmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static playInstantMix(Ljava/lang/String;)V
    .locals 1

    .line 979
    new-instance v0, Ltv/emby/embyatv/util/Utils$13;

    invoke-direct {v0}, Ltv/emby/embyatv/util/Utils$13;-><init>()V

    invoke-static {p0, v0}, Ltv/emby/embyatv/util/Utils;->getInstantMixAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static playRecording(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 1529
    new-instance v0, Ltv/emby/embyatv/util/Utils$18;

    invoke-direct {v0, p1}, Ltv/emby/embyatv/util/Utils$18;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Ltv/emby/embyatv/livetv/TvManager;->findRecordingByTimerAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;)V
    .locals 1

    const/4 v0, 0x0

    .line 2369
    invoke-static {p0, p1, v0}, Ltv/emby/embyatv/util/Utils;->processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V

    return-void
.end method

.method public static processPasswordEntry(Landroid/app/Activity;Lmediabrowser/model/dto/UserDto;Ljava/lang/String;)V
    .locals 6

    .line 2373
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_alt_pw_entry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltv/emby/embyatv/startup/DpadPwActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "User"

    .line 2375
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ItemId"

    .line 2376
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 2377
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2378
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2380
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    const-string v1, "Requesting dialog..."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2381
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x81

    .line 2382
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2383
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1004a2

    .line 2384
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2385
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v3

    const v4, 0x7f1004a3

    invoke-virtual {v3, v4}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserDto;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2386
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Ltv/emby/embyatv/util/Utils$32;

    invoke-direct {v3, v0, p1, p0, p2}, Ltv/emby/embyatv/util/Utils$32;-><init>(Landroid/widget/EditText;Lmediabrowser/model/dto/UserDto;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2392
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method public static programIsRecording(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1521
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getTimerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1522
    :cond_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 1523
    :goto_0
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getStartDate()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Ltv/emby/embyatv/util/Utils;->convertToLocalDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    .line 1524
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-lez p0, :cond_3

    cmp-long p0, v5, v1

    if-gez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method public static randInt(II)I
    .locals 1

    if-gt p1, p0, :cond_0

    return p0

    .line 1746
    :cond_0
    sget-object v0, Ltv/emby/embyatv/util/Utils;->rand:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 2011
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2012
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100589

    .line 2013
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f100464

    .line 2014
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$28;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$28;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10056f

    .line 2020
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$27;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$27;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1005a4

    .line 2027
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ltv/emby/embyatv/util/Utils$26;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/util/Utils$26;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2043
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 958
    invoke-static/range {v0 .. v6}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLjava/lang/Long;IILjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static retrieveAndPlay(Ljava/lang/String;ZLjava/lang/Long;IILjava/lang/String;Landroid/content/Context;)V
    .locals 10

    .line 962
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getApiClient()Lmediabrowser/apiinteraction/ApiClient;

    move-result-object v0

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getCurrentUser()Lmediabrowser/model/dto/UserDto;

    move-result-object v1

    invoke-virtual {v1}, Lmediabrowser/model/dto/UserDto;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ltv/emby/embyatv/util/Utils$12;

    move-object v2, v9

    move-object v3, p2

    move v4, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Ltv/emby/embyatv/util/Utils$12;-><init>(Ljava/lang/Long;ZIILjava/lang/String;Landroid/content/Context;)V

    move-object v2, p0

    invoke-virtual {v0, p0, v1, v9}, Lmediabrowser/apiinteraction/ApiClient;->GetItemAsync(Ljava/lang/String;Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static shouldDirectPlay(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1935
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1936
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "play"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static final showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1003df

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ltv/emby/embyatv/util/Utils$1;

    invoke-direct {p1}, Ltv/emby/embyatv/util/Utils$1;-><init>()V

    const v0, 0x7f100671

    .line 171
    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 1

    .line 206
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 188
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Ltv/emby/embyatv/util/Utils$2;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/util/Utils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 1824
    new-instance v0, Ltv/emby/embyatv/util/Utils$25;

    invoke-direct {v0, p2}, Ltv/emby/embyatv/util/Utils$25;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static signInToServer(Lmediabrowser/apiinteraction/IConnectionManager;Lmediabrowser/model/apiclient/ServerInfo;Landroid/app/Activity;)V
    .locals 1

    .line 1750
    new-instance v0, Ltv/emby/embyatv/util/Utils$24;

    invoke-direct {v0, p2, p1, p0}, Ltv/emby/embyatv/util/Utils$24;-><init>(Landroid/app/Activity;Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/IConnectionManager;)V

    invoke-interface {p0, p1, v0}, Lmediabrowser/apiinteraction/IConnectionManager;->Connect(Lmediabrowser/model/apiclient/ServerInfo;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method

.method public static supportsAc3()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportsMediaSourceSelection(Lmediabrowser/model/dto/BaseItemDto;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Video"

    .line 2318
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v1, "TvChannel"

    .line 2319
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 2320
    :cond_2
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getMediaSources()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmediabrowser/model/dto/MediaSourceInfo;

    invoke-virtual {v1}, Lmediabrowser/model/dto/MediaSourceInfo;->getType()Lmediabrowser/model/dto/MediaSourceType;

    move-result-object v1

    sget-object v3, Lmediabrowser/model/dto/MediaSourceType;->Placeholder:Lmediabrowser/model/dto/MediaSourceType;

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 2322
    :cond_3
    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEnableMediaSourceDisplay()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lmediabrowser/model/dto/BaseItemDto;->getEnableMediaSourceDisplay()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v0
.end method

.method private static translateReason(Ljava/lang/String;)I
    .locals 3

    const v0, 0x7f10045d

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1893
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "AudioCodecNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "VideoLevelNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_2
    const-string v2, "SubtitleCodecNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_3
    const-string v2, "ContainerNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "AudioBitrateNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "DirectPlayError"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v2, "VideoProfileNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "InterlacedVideoNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_8
    const-string v2, "ContainerBitrateExceedsLimit"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v2, "VideoCodecNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v2, "AudioChannelsNotSupported"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x7

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const p0, 0x7f1006c1

    return p0

    :pswitch_1
    const p0, 0x7f1006c0

    return p0

    :pswitch_2
    const p0, 0x7f1006bd

    return p0

    :pswitch_3
    const p0, 0x7f1006b9

    return p0

    :pswitch_4
    const p0, 0x7f1006be

    return p0

    :pswitch_5
    const p0, 0x7f1006bf

    return p0

    :pswitch_6
    const p0, 0x7f1006ba

    return p0

    :pswitch_7
    const p0, 0x7f1006c3

    return p0

    :pswitch_8
    const p0, 0x7f1006c2

    return p0

    :pswitch_9
    const p0, 0x7f1006bb

    return p0

    :pswitch_a
    const p0, 0x7f1006bc

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7623101f -> :sswitch_a
        -0x5d3a48ca -> :sswitch_9
        -0x2f2cbe58 -> :sswitch_8
        -0x2affe43b -> :sswitch_7
        -0x4f38f7 -> :sswitch_6
        0xd81c92b -> :sswitch_5
        0x3e0f7f92 -> :sswitch_4
        0x3fabfe1c -> :sswitch_3
        0x41e0c0f9 -> :sswitch_2
        0x5d148da4 -> :sswitch_1
        0x67a2713b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trimEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static versionGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "[.]"

    .line 2243
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "[.]"

    .line 2244
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2245
    array-length v1, p0

    .line 2246
    array-length v2, p1

    if-lez v1, :cond_0

    .line 2247
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_1

    .line 2248
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-le v1, v5, :cond_2

    .line 2249
    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-le v2, v5, :cond_3

    .line 2250
    aget-object v7, p1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x2

    if-le v1, v8, :cond_4

    .line 2251
    aget-object v9, p0, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-lez v2, :cond_5

    .line 2252
    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    const/4 v10, 0x3

    if-le v1, v10, :cond_6

    .line 2253
    aget-object p0, p0, v10

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    if-le v2, v10, :cond_7

    .line 2254
    aget-object p1, p1, v10

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    :goto_7
    if-ge v3, v4, :cond_8

    return v0

    :cond_8
    if-ne v3, v4, :cond_9

    if-ge v6, v7, :cond_9

    return v0

    :cond_9
    if-ne v3, v4, :cond_a

    if-ne v6, v7, :cond_a

    if-ge v9, v8, :cond_a

    return v0

    :cond_a
    if-ne v3, v4, :cond_b

    if-ne v6, v7, :cond_b

    if-ne v9, v8, :cond_b

    if-ge p0, p1, :cond_b

    return v0

    :cond_b
    return v5

    :catch_0
    return v0
.end method

.method public static writeOnDrawable(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 388
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 391
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    .line 392
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41f00000    # 30.0f

    .line 393
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
