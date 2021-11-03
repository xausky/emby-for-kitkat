.class Ltv/emby/embyatv/browsing/TabGridFragment$1;
.super Lmediabrowser/apiinteraction/EmptyResponse;
.source "TabGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/TabGridFragment;->setupRetrieveListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/TabGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/TabGridFragment;)V
    .locals 0

    .line 42
    iput-object p1, p0, Ltv/emby/embyatv/browsing/TabGridFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-direct {p0}, Lmediabrowser/apiinteraction/EmptyResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse()V
    .locals 1

    .line 45
    iget-object v0, p0, Ltv/emby/embyatv/browsing/TabGridFragment$1;->this$0:Ltv/emby/embyatv/browsing/TabGridFragment;

    invoke-virtual {v0}, Ltv/emby/embyatv/browsing/TabGridFragment;->showSpinner()V

    return-void
.end method
