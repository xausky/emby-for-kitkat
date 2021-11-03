.class final Ltv/emby/embyatv/itemhandling/ItemLauncher$1;
.super Lmediabrowser/apiinteraction/Response;
.source "ItemLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/itemhandling/ItemLauncher;->launch(Ltv/emby/embyatv/itemhandling/BaseRowItem;Ltv/emby/embyatv/itemhandling/ItemRowAdapter;ILandroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/entities/DisplayPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$application:Ltv/emby/embyatv/TvApp;

.field final synthetic val$baseItem:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Lmediabrowser/model/dto/BaseItemDto;Ltv/emby/embyatv/TvApp;Landroid/app/Activity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    iput-object p2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    iput-object p3, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p1, Lmediabrowser/model/entities/DisplayPreferences;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/entities/DisplayPreferences;)V
    .locals 5

    .line 81
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    const-string v1, "mixed"

    invoke-virtual {v0, v1}, Lmediabrowser/model/dto/BaseItemDto;->setCollectionType(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** Collection type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x41b5cb92

    if-eq v3, v4, :cond_4

    const v4, -0x3fac58bd

    if-eq v3, v4, :cond_3

    const v4, -0x37cbc82c

    if-eq v3, v4, :cond_2

    const v4, 0x636ee25

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "music"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v3, "tvshows"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "movies"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v3, "livetv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/GenericGridActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Folder"

    .line 138
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 129
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/MusicActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Folder"

    .line 130
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "IncludeType"

    const-string v1, "MusicAlbum"

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 115
    :pswitch_1
    iget-object p1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->canAccessLiveTv()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 117
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/LiveTvActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Folder"

    .line 118
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 123
    :cond_6
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 87
    :pswitch_2
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getLogger()Lmediabrowser/model/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** View Type Pref: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "DefaultView"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmediabrowser/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lmediabrowser/model/entities/DisplayPreferences;->getCustomPrefs()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "DefaultView"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, "0"

    :cond_7
    const-string v0, "1"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 92
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/GenericGridActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Folder"

    .line 93
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_8
    const-string p1, "movies"

    .line 96
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 98
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/MovieActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "IncludeType"

    const-string v1, "Movie"

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Folder"

    .line 100
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_9
    const-string p1, "tvshows"

    .line 104
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v0}, Lmediabrowser/model/dto/BaseItemDto;->getCollectionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 106
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    const-class v1, Ltv/emby/embyatv/browsing/TvActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "IncludeType"

    const-string v1, "Series"

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Folder"

    .line 108
    iget-object v1, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$application:Ltv/emby/embyatv/TvApp;

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getSerializer()Lmediabrowser/apiinteraction/android/GsonJsonSerializer;

    move-result-object v1

    iget-object v2, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$baseItem:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {v1, v2}, Lmediabrowser/apiinteraction/android/GsonJsonSerializer;->SerializeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Ltv/emby/embyatv/itemhandling/ItemLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
