.class public Ltv/emby/embyatv/presentation/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackdropDimLayer()I
    .locals 2

    .line 349
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f08008f

    return v0

    :pswitch_0
    const v0, 0x7f08019f

    return v0

    :pswitch_1
    const v0, 0x7f080193

    return v0

    :pswitch_2
    const v0, 0x7f08006c

    return v0

    :pswitch_3
    const v0, 0x7f0800ed

    return v0

    :pswitch_4
    const v0, 0x7f08006b

    return v0

    :pswitch_5
    const v0, 0x7f0801bc

    return v0

    :pswitch_6
    const v0, 0x7f08005c

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1e701ce5 -> :sswitch_7
        0x1cc4d -> :sswitch_6
        0x36425c -> :sswitch_5
        0x6233516 -> :sswitch_4
        0x6872199 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBlockTextBackgroundResource()I
    .locals 3

    .line 243
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const v0, 0x7f080065

    return v0

    :cond_2
    const v0, 0x7f060052

    return v0
.end method

.method public static getBrandColor()I
    .locals 3

    .line 44
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "classic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "halloween"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    .line 60
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 58
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 56
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 54
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 52
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 50
    :pswitch_5
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 48
    :pswitch_6
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 46
    :pswitch_7
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5820b3b3 -> :sswitch_7
        -0x1e701ce5 -> :sswitch_6
        0x2eef76 -> :sswitch_5
        0x36425c -> :sswitch_4
        0x6872199 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321ec883 -> :sswitch_1
        0x32e13892 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getBrowseTheme()I
    .locals 2

    .line 130
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "halloween"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f110006

    goto/16 :goto_b

    .line 148
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110009

    goto :goto_2

    :cond_1
    const v0, 0x7f11000a

    :goto_2
    return v0

    .line 146
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f11000f

    goto :goto_3

    :cond_2
    const v0, 0x7f110010

    :goto_3
    return v0

    .line 144
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110019

    goto :goto_4

    :cond_3
    const v0, 0x7f11001a

    :goto_4
    return v0

    .line 142
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f110017

    goto :goto_5

    :cond_4
    const v0, 0x7f110018

    :goto_5
    return v0

    .line 140
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f110015

    goto :goto_6

    :cond_5
    const v0, 0x7f110016

    :goto_6
    return v0

    .line 138
    :pswitch_5
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f110013

    goto :goto_7

    :cond_6
    const v0, 0x7f110014

    :goto_7
    return v0

    .line 136
    :pswitch_6
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f110007

    goto :goto_8

    :cond_7
    const v0, 0x7f110008

    :goto_8
    return v0

    .line 134
    :pswitch_7
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f11001b

    goto :goto_9

    :cond_8
    const v0, 0x7f11001c

    :goto_9
    return v0

    .line 132
    :pswitch_8
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->useThemeFocusColor()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f110011

    goto :goto_a

    :cond_9
    const v0, 0x7f110012

    :goto_a
    return v0

    :cond_a
    const v0, 0x7f11001d

    :goto_b
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5820b3b3 -> :sswitch_8
        -0x1e701ce5 -> :sswitch_7
        0x1cc4d -> :sswitch_6
        0x36425c -> :sswitch_5
        0x6233516 -> :sswitch_4
        0x6872199 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static getCardBackgroundResource()I
    .locals 2

    .line 306
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v1, "halloween"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f060044

    return v0

    :pswitch_0
    const v0, 0x7f060040

    return v0

    :pswitch_1
    const v0, 0x7f0600d7

    return v0

    :pswitch_2
    const v0, 0x7f0600ab

    return v0

    :pswitch_3
    const v0, 0x7f0600a3

    return v0

    :pswitch_4
    const v0, 0x7f0600a1

    return v0

    :pswitch_5
    const v0, 0x7f0600a7

    return v0

    :pswitch_6
    const v0, 0x7f060060

    return v0

    :pswitch_7
    const v0, 0x7f060067

    return v0

    :pswitch_8
    const v0, 0x7f060053

    return v0

    :pswitch_9
    const v0, 0x7f060052

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5820b3b3 -> :sswitch_a
        -0x1e701ce5 -> :sswitch_9
        0x1cc4d -> :sswitch_8
        0x2eef76 -> :sswitch_7
        0x36425c -> :sswitch_6
        0x6233516 -> :sswitch_5
        0x6872199 -> :sswitch_4
        0x11ef85a3 -> :sswitch_3
        0x321e25ba -> :sswitch_2
        0x321ec883 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultBackdropResource()I
    .locals 2

    .line 155
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f08008c

    return v0

    :pswitch_0
    const v0, 0x7f08019e

    return v0

    :pswitch_1
    const v0, 0x7f080192

    return v0

    :pswitch_2
    const v0, 0x7f080147

    return v0

    :pswitch_3
    const v0, 0x7f0800ec

    return v0

    :pswitch_4
    const v0, 0x7f080145

    return v0

    :pswitch_5
    const v0, 0x7f0801bb

    return v0

    :pswitch_6
    const v0, 0x7f08005b

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1e701ce5 -> :sswitch_7
        0x1cc4d -> :sswitch_6
        0x36425c -> :sswitch_5
        0x6233516 -> :sswitch_4
        0x6872199 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDialogBackgroundResource()I
    .locals 2

    .line 207
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0800dc

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f080089

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const v0, 0x7f0800d8

    return v0

    :pswitch_2
    const v0, 0x7f0800d9

    return v0

    :pswitch_3
    return v1

    :pswitch_4
    const v0, 0x7f060052

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1cc4d -> :sswitch_4
        0x6233516 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFullBackdropDimLayer()I
    .locals 3

    .line 399
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const v0, 0x7f080090

    return v0

    :cond_2
    const v0, 0x7f080091

    return v0
.end method

.method public static getFullDarkenColor()I
    .locals 4

    .line 381
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x6233516

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const/high16 v0, -0x1000000

    return v0

    :cond_2
    return v2
.end method

.method public static getGuideBackgroundResource()I
    .locals 2

    .line 178
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "classic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_8
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "holidays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_a
    const-string v1, "halloween"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x7f0800d9

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const v0, 0x7f080089

    return v0

    :pswitch_1
    const v0, 0x7f08015e

    return v0

    :pswitch_2
    const v0, 0x7f0800ec

    return v0

    :pswitch_3
    const v0, 0x7f080146

    return v0

    :pswitch_4
    const v0, 0x7f0800d8

    return v0

    :pswitch_5
    const v0, 0x7f0800da

    return v0

    :pswitch_6
    const v0, 0x7f06005b

    return v0

    :pswitch_7
    return v1

    :pswitch_8
    const v0, 0x7f0800dc

    return v0

    :pswitch_9
    const v0, 0x7f060052

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5820b3b3 -> :sswitch_a
        -0x1e701ce5 -> :sswitch_9
        0x1cc4d -> :sswitch_8
        0x2eef76 -> :sswitch_7
        0x6233516 -> :sswitch_6
        0x6872199 -> :sswitch_5
        0x11ef85a3 -> :sswitch_4
        0x321e25ba -> :sswitch_3
        0x321ec883 -> :sswitch_2
        0x32e13892 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method public static getGuideTextColor()I
    .locals 2

    .line 90
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getHighlightedTextColor()I
    .locals 3

    .line 94
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    .line 98
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getTextColor()I

    move-result v0

    return v0

    .line 96
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getHomeScreenDarkening()F
    .locals 3

    .line 371
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const v0, 0x3e4ccccd    # 0.2f

    return v0

    :cond_2
    const v0, 0x3eb33333    # 0.35f

    return v0
.end method

.method public static getHomeScreenDimLayer()I
    .locals 3

    .line 390
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const v0, 0x7f0600e9

    return v0

    :cond_2
    const v0, 0x7f08005c

    return v0
.end method

.method public static getIconTintColor()I
    .locals 3

    .line 121
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    .line 125
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 123
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getMessageBackgroundResource()I
    .locals 2

    .line 225
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "matcyan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "matgreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "wmc"

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

    const v0, 0x7f080148

    return v0

    :pswitch_0
    const v0, 0x7f0800d7

    return v0

    :pswitch_1
    const v0, 0x7f0600a7

    return v0

    :pswitch_2
    const v0, 0x7f0600a5

    return v0

    :pswitch_3
    const v0, 0x7f0800dc

    return v0

    :pswitch_4
    const v0, 0x7f060052

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1cc4d -> :sswitch_4
        0x6233516 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchColor()I
    .locals 3

    .line 67
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1cc4d

    if-eq v1, v2, :cond_3

    const v2, 0x2eef76

    if-eq v1, v2, :cond_2

    const v2, 0x6233516

    if-eq v1, v2, :cond_1

    const v2, 0x5c13d641

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "dark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 74
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    :pswitch_1
    const-string v0, "#0a2048"

    .line 71
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_2
    const v0, -0x777778

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSpecialGenres()[Ljava/lang/String;
    .locals 3

    const-string v0, "halloween"

    .line 458
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Halloween"

    const-string v1, "Horror"

    .line 459
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "holidays"

    .line 462
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Holiday"

    const-string v1, "Holidays"

    const-string v2, "Christmas"

    .line 463
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStartupLogoResource()I
    .locals 3

    .line 296
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const v0, 0x7f080137

    return v0

    :cond_2
    const v0, 0x7f08013a

    return v0
.end method

.method public static getSuggestionTitle()Ljava/lang/String;
    .locals 2

    const-string v0, "halloween"

    .line 470
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Spooky Suggestions"

    goto :goto_0

    :cond_0
    const-string v0, "holidays"

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Holiday Suggestions"

    goto :goto_0

    :cond_1
    const-string v0, "Suggestions"

    :goto_0
    return-object v0
.end method

.method public static getSummaryTextColor()I
    .locals 3

    .line 112
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    .line 116
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 114
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getTabHeaderBackgroundResource()I
    .locals 3

    .line 335
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1cc4d

    if-eq v1, v2, :cond_2

    const v2, 0x6233516

    if-eq v1, v2, :cond_1

    const v2, 0x321e25ba

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "matblue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "wmc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f060028

    return v0

    :pswitch_0
    const v0, 0x7f0800d7

    return v0

    :pswitch_1
    const v0, 0x7f0800dc

    return v0

    :pswitch_2
    const v0, 0x7f0600e2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTabHighlightColor()I
    .locals 3

    .line 253
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x36425c

    if-eq v1, v2, :cond_2

    const v2, 0x6233516

    if-eq v1, v2, :cond_1

    const v2, 0x6872199

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "slate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 258
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 255
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTabTextColor()I
    .locals 3

    .line 103
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    .line 107
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 105
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getTextColor()I
    .locals 3

    .line 81
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6233516

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "light"

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

    const-string v0, "#deffffff"

    .line 85
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 83
    :cond_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getThemeGradient()Landroid/graphics/drawable/GradientDrawable;
    .locals 7

    const/4 v0, 0x2

    .line 266
    new-array v1, v0, [I

    .line 267
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 268
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "matcyan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "matblue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "matgreen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "light"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "wmc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 282
    :pswitch_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 279
    :pswitch_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 276
    :pswitch_2
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 273
    :pswitch_3
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_2

    .line 270
    :pswitch_4
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_2
    const v0, 0x3f4ccccd    # 0.8f

    .line 285
    invoke-static {v2, v0}, Ltv/emby/embyatv/util/Utils;->darker(IF)I

    move-result v0

    aput v0, v1, v6

    .line 286
    aget v0, v1, v6

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Ltv/emby/embyatv/util/Utils;->darker(IF)I

    move-result v0

    aput v0, v1, v5

    .line 288
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    const/16 v1, 0x64

    .line 291
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1cc4d -> :sswitch_4
        0x6233516 -> :sswitch_3
        0x11ef85a3 -> :sswitch_2
        0x321e25ba -> :sswitch_1
        0x321ec883 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThemeSetting()Ljava/lang/String;
    .locals 3

    .line 410
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->isHalloween()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "halloween"

    return-object v0

    .line 411
    :cond_0
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->isHolidays()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "holidays"

    return-object v0

    .line 412
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->isTrial()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "default"

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_display_theme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static isEnabled()Z
    .locals 3

    .line 26
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_enable_themes"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isHalloween()Z
    .locals 4

    .line 30
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isHolidays()Z
    .locals 5

    .line 37
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 39
    :cond_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v2, 0x2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x1b

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static showWelcomeMessage()V
    .locals 8

    .line 416
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    const-string v1, "halloween"

    .line 417
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 418
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Ltv/emby/embyatv/presentation/ThemeManager$1;

    invoke-direct {v4, v0}, Ltv/emby/embyatv/presentation/ThemeManager$1;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v1, "holidays"

    .line 429
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 430
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Ltv/emby/embyatv/presentation/ThemeManager$2;

    invoke-direct {v4, v0}, Ltv/emby/embyatv/presentation/ThemeManager$2;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 440
    :cond_1
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getThemeSetting()Ljava/lang/String;

    move-result-object v1

    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "lastThemeNag"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide v6, 0xe7be2c00L

    add-long/2addr v4, v6

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 443
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Ltv/emby/embyatv/presentation/ThemeManager$3;

    invoke-direct {v4, v0}, Ltv/emby/embyatv/presentation/ThemeManager$3;-><init>(Ltv/emby/embyatv/base/BaseActivity;)V

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static useThemeFocusColor()Z
    .locals 3

    .line 22
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_focusrect_color"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
