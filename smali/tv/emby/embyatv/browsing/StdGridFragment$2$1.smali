.class Ltv/emby/embyatv/browsing/StdGridFragment$2$1;
.super Ljava/lang/Object;
.source "StdGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/StdGridFragment$2;->onCharSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

.field final synthetic val$ch:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/StdGridFragment$2;Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iput-object p2, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->val$ch:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    iget-object v0, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->this$1:Ltv/emby/embyatv/browsing/StdGridFragment$2;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment$2;->this$0:Ltv/emby/embyatv/browsing/StdGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/browsing/StdGridFragment;->mGridAdapter:Ltv/emby/embyatv/itemhandling/ItemRowAdapter;

    iget-object v1, p0, Ltv/emby/embyatv/browsing/StdGridFragment$2$1;->val$ch:Ljava/lang/String;

    new-instance v2, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/browsing/StdGridFragment$2$1$1;-><init>(Ltv/emby/embyatv/browsing/StdGridFragment$2$1;)V

    invoke-virtual {v0, v1, v2}, Ltv/emby/embyatv/itemhandling/ItemRowAdapter;->getIndexOfStartsWithAsync(Ljava/lang/String;Lmediabrowser/apiinteraction/Response;)V

    return-void
.end method
