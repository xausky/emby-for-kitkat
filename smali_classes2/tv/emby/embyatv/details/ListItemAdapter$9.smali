.class Ltv/emby/embyatv/details/ListItemAdapter$9;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;)V
    .locals 0

    .line 458
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$9;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 461
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    iget-object v0, p0, Ltv/emby/embyatv/details/ListItemAdapter$9;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v0}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltv/emby/embyatv/playback/MediaManager;->saveVideoQueue(Landroid/content/Context;)V

    return-void
.end method
