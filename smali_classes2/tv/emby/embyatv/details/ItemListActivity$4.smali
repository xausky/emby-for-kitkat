.class Ltv/emby/embyatv/details/ItemListActivity$4;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 261
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Ltv/emby/embyatv/playback/MediaManager;->getCurrentVideoQueue()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$502(Ltv/emby/embyatv/details/ItemListActivity;Ljava/util/List;)Ljava/util/List;

    .line 262
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 263
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$500(Ltv/emby/embyatv/details/ItemListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 264
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$002(Ltv/emby/embyatv/details/ItemListActivity;Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;)Ltv/emby/embyatv/details/ListItemAdapter$ItemViewHolder;

    .line 265
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    iget-object v1, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1100(Ltv/emby/embyatv/details/ItemListActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->setBaseItem(Lmediabrowser/model/dto/BaseItemDto;)V

    .line 266
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/emby/embyatv/details/ItemListActivity;->access$1202(Ltv/emby/embyatv/details/ItemListActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$4;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/details/ItemListActivity;->finish()V

    :goto_0
    return-void
.end method
