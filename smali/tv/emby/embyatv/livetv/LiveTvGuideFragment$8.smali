.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 259
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 264
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$900(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$800(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$700(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$202(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z

    .line 268
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object p2, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$8;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-static {p2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$1000(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)V

    :cond_1
    :goto_0
    return-void
.end method
