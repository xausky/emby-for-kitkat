.class Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;
.super Ljava/lang/Object;
.source "LiveTvGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/LiveTvGuideFragment;
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

    .line 628
    iput-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 631
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$202(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;Z)Z

    .line 632
    iget-object v0, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    check-cast p1, Ltv/emby/embyatv/ui/FriendlyDateButton;

    invoke-virtual {p1}, Ltv/emby/embyatv/ui/FriendlyDateButton;->getDate()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->access$300(Ltv/emby/embyatv/livetv/LiveTvGuideFragment;J)V

    .line 633
    iget-object p1, p0, Ltv/emby/embyatv/livetv/LiveTvGuideFragment$16;->this$0:Ltv/emby/embyatv/livetv/LiveTvGuideFragment;

    iget-object p1, p1, Ltv/emby/embyatv/livetv/LiveTvGuideFragment;->dateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
