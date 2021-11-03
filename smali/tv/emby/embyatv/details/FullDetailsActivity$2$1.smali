.class Ltv/emby/embyatv/details/FullDetailsActivity$2$1;
.super Lmediabrowser/apiinteraction/Response;
.source "FullDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmediabrowser/apiinteraction/Response<",
        "Lmediabrowser/model/dto/BaseItemDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$2;)V
    .locals 0

    .line 237
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V

    return-void
.end method

.method public onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 9

    .line 240
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$502(Ltv/emby/embyatv/details/FullDetailsActivity;Lmediabrowser/model/dto/BaseItemDto;)Lmediabrowser/model/dto/BaseItemDto;

    .line 242
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v0

    const-string v2, "Series"

    iget-object v3, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v3, v3, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v3}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lmediabrowser/model/dto/BaseItemDto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v2, v2, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object v2

    invoke-virtual {v2}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Ltv/emby/embyatv/ui/TextUnderButton;->setVisibility(I)V

    .line 244
    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getCanResume()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v0, v0, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object v0

    iget-object v2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object v2, v2, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    const v4, 0x7f100590

    invoke-virtual {v2, v4}, Ltv/emby/embyatv/details/FullDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getUserData()Lmediabrowser/model/dto/UserItemDataDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlaybackPositionTicks()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    div-long/2addr v5, v7

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getResumePreroll()I

    move-result p1

    int-to-long v7, p1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ltv/emby/embyatv/util/Utils;->formatMillis(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/ui/TextUnderButton;->setText(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$900(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TextUnderButton;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 247
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$800(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/ui/TextUnderButton;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/TextUnderButton;->requestFocus()Z

    goto :goto_1

    .line 249
    :cond_3
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 250
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity;->mNextUpRow:Landroidx/leanback/widget/ListRow;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRow;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object p1

    check-cast p1, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    invoke-virtual {p1}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->Retrieve()V

    .line 253
    :cond_4
    :goto_1
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1000(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    .line 255
    :cond_5
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1100(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    .line 256
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    .line 257
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$300(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_favor_logo"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 258
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1300(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    .line 259
    :cond_6
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$2$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$2;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$2;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$602(Ltv/emby/embyatv/details/FullDetailsActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    :cond_7
    return-void
.end method
