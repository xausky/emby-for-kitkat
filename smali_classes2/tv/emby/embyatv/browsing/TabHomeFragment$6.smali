.class Ltv/emby/embyatv/browsing/TabHomeFragment$6;
.super Lmediabrowser/apiinteraction/Response;
.source "TabHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabHomeFragment;->setupQueriesInternal(Ltv/emby/embyatv/browsing/IRowLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/querying/ItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

.field final synthetic val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabHomeFragment;Ltv/emby/embyatv/browsing/IRowLoader;)V
    .locals 0

    .line 245
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p1, Lmediabrowser/model/querying/ItemsResult;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->onResponse(Lmediabrowser/model/querying/ItemsResult;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/querying/ItemsResult;)V
    .locals 25

    move-object/from16 v0, p0

    .line 249
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual/range {p1 .. p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2, v3}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getLiveTvLibrary([Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setLiveTvLibrary(Lmediabrowser/model/dto/BaseItemDto;)V

    const-string v1, "books"

    const-string v2, "games"

    .line 250
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lmediabrowser/model/dto/BaseItemDto;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 254
    invoke-virtual {v7}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1, v2}, Ltv/emby/embyatv/TvApp;->setUserViews(Ljava/util/List;)V

    .line 259
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getDirectEntryId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 262
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_3

    const/16 v7, 0x7d0

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x4

    goto :goto_1

    :cond_3
    const/4 v6, 0x2

    .line 273
    :goto_1
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v8, v8, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-class v9, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "Folder"

    .line 274
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v9

    invoke-virtual {v9}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "RequestedTab"

    .line 275
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v6, v4}, Ltv/emby/embyatv/TvApp;->setReloadRequired(Z)V

    .line 277
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ltv/emby/embyatv/TvApp;->setDirectEntryId(Ljava/lang/String;)V

    .line 278
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v6, v7}, Ltv/emby/embyatv/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 283
    :catch_0
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v6}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v6

    const-string v7, "Invalid direct entry ID %s"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v5

    invoke-interface {v6, v7, v8}, Lmediabrowser/model/logging/ILogger;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 286
    :cond_4
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->hasLiveTv()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "pref_live_tv_mode"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    new-instance v1, Landroid/content/Intent;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    const-class v7, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "Folder"

    .line 289
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v7

    invoke-virtual {v7}, Ltv/emby/embyatv/TvApp;->getSerializedLiveTvLibrary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "RequestedTab"

    .line 290
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "loadLast"

    .line 291
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v6, v1}, Ltv/emby/embyatv/browsing/TabHomeFragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/4 v6, 0x6

    const/4 v7, 0x7

    if-ge v1, v7, :cond_8

    if-ne v1, v4, :cond_6

    .line 300
    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSpecialGenres()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 302
    new-instance v11, Ltv/emby/embyatv/querying/StdItemQuery;

    invoke-direct {v11}, Ltv/emby/embyatv/querying/StdItemQuery;-><init>()V

    const-string v9, "Movie"

    const-string v10, "Series"

    .line 303
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ltv/emby/embyatv/querying/StdItemQuery;->setIncludeItemTypes([Ljava/lang/String;)V

    .line 304
    invoke-virtual {v11, v8}, Ltv/emby/embyatv/querying/StdItemQuery;->setGenres([Ljava/lang/String;)V

    .line 305
    invoke-virtual {v11, v4}, Ltv/emby/embyatv/querying/StdItemQuery;->setRecursive(Z)V

    const/16 v8, 0x1e

    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltv/emby/embyatv/querying/StdItemQuery;->setLimit(Ljava/lang/Integer;)V

    .line 307
    invoke-virtual {v11, v5}, Ltv/emby/embyatv/querying/StdItemQuery;->setEnableTotalRecordCount(Z)V

    const-string v8, "DatePlayed"

    .line 308
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortBy([Ljava/lang/String;)V

    .line 309
    sget-object v8, Lmediabrowser/model/entities/SortOrder;->Ascending:Lmediabrowser/model/entities/SortOrder;

    invoke-virtual {v11, v8}, Ltv/emby/embyatv/querying/StdItemQuery;->setSortOrder(Lmediabrowser/model/entities/SortOrder;)V

    .line 310
    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v8, v8, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v15, Ltv/emby/embyatv/browsing/BrowseRowDef;

    invoke-static {}, Ltv/emby/embyatv/presentation/ThemeManager;->getSuggestionTitle()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v9, v5, [Ltv/emby/embyatv/model/ChangeTriggerType;

    move-object/from16 v16, v9

    move-object v9, v15

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_6
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$200(Ltv/emby/embyatv/browsing/TabHomeFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v8, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v6, "librarytiles-automobile"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    goto/16 :goto_5

    :sswitch_1
    const-string v6, "librarybuttons"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    goto/16 :goto_5

    :sswitch_2
    const-string v6, "latestmedia"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xb

    goto/16 :goto_5

    :sswitch_3
    const-string v6, "onnow"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    goto/16 :goto_5

    :sswitch_4
    const-string v6, "resumeaudio"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xd

    goto :goto_5

    :sswitch_5
    const-string v6, "latesttvrecordings"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xa

    goto :goto_5

    :sswitch_6
    const-string v7, "activerecordings"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    goto :goto_5

    :sswitch_7
    const-string v6, "smalllibrarytiles"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :sswitch_8
    const-string v6, "resume"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x5

    goto :goto_5

    :sswitch_9
    const-string v6, "nextup"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    goto :goto_5

    :sswitch_a
    const-string v6, "livetv"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    goto :goto_5

    :sswitch_b
    const-string v6, "latestchannelmedia"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xc

    goto :goto_5

    :sswitch_c
    const-string v6, "librarytiles"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    goto :goto_5

    :sswitch_d
    const-string v6, "smalllibrarytiles-automobile"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, -0x1

    :goto_5
    const v6, 0x7f100519

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 351
    :pswitch_0
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual/range {p1 .. p1}, Lmediabrowser/model/querying/ItemsResult;->getItems()[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2, v6}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addLatestMedia([Lmediabrowser/model/dto/BaseItemDto;)V

    goto/16 :goto_6

    .line 347
    :pswitch_1
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addLatestRecordings()V

    goto/16 :goto_6

    .line 343
    :pswitch_2
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addOnNow()V

    goto/16 :goto_6

    .line 337
    :pswitch_3
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v2}, Ltv/emby/embyatv/browsing/TabHomeFragment;->addNextUp()V

    .line 338
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v2, v4}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$402(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z

    goto/16 :goto_6

    .line 332
    :pswitch_4
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    const v8, 0x7f10043d

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v8}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getActiveRecordingQuery()Lmediabrowser/model/livetv/RecordingQuery;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/livetv/RecordingQuery;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v6, v6, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v2, v6}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$102(Ltv/emby/embyatv/browsing/TabHomeFragment;I)I

    goto :goto_6

    .line 327
    :pswitch_5
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v6, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v7, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v7, v7, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    const v8, 0x7f100477

    invoke-virtual {v7, v8}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v18

    iget-object v7, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-virtual {v7}, Ltv/emby/embyatv/browsing/TabHomeFragment;->getResumeQuery()Ltv/emby/embyatv/querying/StdItemQuery;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    new-array v7, v10, [Ltv/emby/embyatv/model/ChangeTriggerType;

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->MoviePlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v5

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->TvPlayback:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v4

    sget-object v8, Ltv/emby/embyatv/model/ChangeTriggerType;->VideoQueueChange:Ltv/emby/embyatv/model/ChangeTriggerType;

    aput-object v8, v7, v3

    sget-object v24, Ltv/emby/embyatv/querying/QueryType;->ContinueWatching:Ltv/emby/embyatv/querying/QueryType;

    move-object/from16 v17, v6

    move-object/from16 v23, v7

    invoke-direct/range {v17 .. v24}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Lmediabrowser/model/querying/ItemQuery;IZZ[Ltv/emby/embyatv/model/ChangeTriggerType;Ltv/emby/embyatv/querying/QueryType;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    invoke-static {v2, v4}, Ltv/emby/embyatv/browsing/TabHomeFragment;->access$002(Ltv/emby/embyatv/browsing/TabHomeFragment;Z)Z

    goto :goto_6

    .line 323
    :pswitch_6
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v8, v8, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v8, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v8}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    invoke-direct {v7, v6, v8}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Ltv/emby/embyatv/querying/ViewQuery;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 318
    :pswitch_7
    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    new-instance v7, Ltv/emby/embyatv/browsing/BrowseRowDef;

    iget-object v8, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v8, v8, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v8, v6}, Ltv/emby/embyatv/TvApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ltv/emby/embyatv/querying/ViewQuery;

    invoke-direct {v8}, Ltv/emby/embyatv/querying/ViewQuery;-><init>()V

    invoke-direct {v7, v6, v8, v4}, Ltv/emby/embyatv/browsing/BrowseRowDef;-><init>(Ljava/lang/String;Ltv/emby/embyatv/querying/ViewQuery;Z)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    :pswitch_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 365
    :cond_8
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->val$rowLoader:Ltv/emby/embyatv/browsing/IRowLoader;

    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mRows:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ltv/emby/embyatv/browsing/IRowLoader;->loadRows(Ljava/util/List;)V

    .line 368
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getConfigVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v6, :cond_9

    .line 369
    new-instance v1, Ltv/emby/embyatv/ui/AnnouncePopup;

    iget-object v2, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v2, v2, Ltv/emby/embyatv/browsing/TabHomeFragment;->mActivity:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v3, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v3, v3, Ltv/emby/embyatv/browsing/TabHomeFragment;->mBackground:Ltv/emby/embyatv/ui/BackgroundFrame;

    invoke-virtual {v3}, Ltv/emby/embyatv/ui/BackgroundFrame;->getPrimaryView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltv/emby/embyatv/ui/AnnouncePopup;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v1}, Ltv/emby/embyatv/ui/AnnouncePopup;->show()V

    .line 370
    iget-object v1, v0, Ltv/emby/embyatv/browsing/TabHomeFragment$6;->this$0:Ltv/emby/embyatv/browsing/TabHomeFragment;

    iget-object v1, v1, Ltv/emby/embyatv/browsing/TabHomeFragment;->mApplication:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSystemPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sys_pref_config_version"

    const-string v3, "6"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e635bd3 -> :sswitch_d
        -0x64c36456 -> :sswitch_c
        -0x5284e638 -> :sswitch_b
        -0x41b5cb92 -> :sswitch_a
        -0x3e835732 -> :sswitch_9
        -0x37b237d3 -> :sswitch_8
        -0x285e21cf -> :sswitch_7
        -0x25afcfd8 -> :sswitch_6
        -0x4acee55 -> :sswitch_5
        -0x4991837 -> :sswitch_4
        0x64fdc97 -> :sswitch_3
        0x1ab67cbd -> :sswitch_2
        0x1b45e266 -> :sswitch_1
        0x33d0f114 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
