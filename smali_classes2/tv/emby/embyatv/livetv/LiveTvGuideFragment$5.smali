.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 217
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$202(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z

    .line 218
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$5;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)V

    return-void
.end method
