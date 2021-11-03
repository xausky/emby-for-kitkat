.class Ltv/emby/embyatv/ui/BaseGridFragment$3;
.super Ljava/lang/Object;
.source "BaseGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/BaseGridFragment;->hideSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/BaseGridFragment;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/BaseGridFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment$3;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Ltv/emby/embyatv/ui/BaseGridFragment$3;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    iget-object v0, v0, Ltv/emby/embyatv/ui/BaseGridFragment;->mSpinner:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
