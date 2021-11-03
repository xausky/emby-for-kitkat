.class Ltv/emby/embyatv/browsing/StdGridFragment$2;
.super Ltv/emby/embyatv/ui/CharSelectedListener;
.source "StdGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment;->setupUI(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/StdGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    invoke-direct {p0}, Ltv/emby/embyatv/ui/CharSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharSelected(Ljava/lang/String;)V
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;

    invoke-direct {v1, p0, p1}, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    iget-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/StdGridFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->waitIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
