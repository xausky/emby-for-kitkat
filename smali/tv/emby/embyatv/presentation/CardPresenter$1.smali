.class Ltv/emby/embyatv/presentation/CardPresenter$1;
.super Ljava/lang/Object;
.source "CardPresenter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/CardPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Ltv/emby/embyatv/presentation/CardPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/CardPresenter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/CardPresenter;)V
    .locals 0

    .line 534
    iput-object p1, p0, Ltv/emby/embyatv/presentation/CardPresenter$1;->this$0:Ltv/emby/embyatv/presentation/CardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 537
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ltv/emby/embyatv/presentation/CardPresenter$1$1;

    invoke-direct {v0, p0}, Ltv/emby/embyatv/presentation/CardPresenter$1$1;-><init>(Ltv/emby/embyatv/presentation/CardPresenter$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 542
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
