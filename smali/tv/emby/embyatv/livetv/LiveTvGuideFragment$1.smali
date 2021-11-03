.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$1;
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

    .line 184
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$1;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$1;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-virtual {p1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->showFilterOptions()V

    return-void
.end method
