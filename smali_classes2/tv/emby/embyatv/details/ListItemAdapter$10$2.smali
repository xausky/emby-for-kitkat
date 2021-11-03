.class Ltv/emby/embyatv/details/ListItemAdapter$10$2;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V
    .locals 0

    .line 473
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 475
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-virtual {p1}, Ltv/emby/embyatv/TvApp;->getMediaManager()Ltv/emby/embyatv/playback/MediaManager;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Ltv/emby/embyatv/playback/MediaManager;->setCurrentVideoQueue(Ljava/util/List;)V

    .line 476
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$700(Ltv/emby/embyatv/details/ListItemAdapter;)Ltv/emby/embyatv/TvApp;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ltv/emby/embyatv/TvApp;->setLastVideoQueueChange(J)V

    .line 477
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$2;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
