.class Ltv/emby/embyatv/presentation/TilePresenter$1$1;
.super Ljava/lang/Object;
.source "TilePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/TilePresenter$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/presentation/TilePresenter$1;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/TilePresenter$1;)V
    .locals 0

    .line 79
    iput-object p1, p0, Ltv/emby/embyatv/presentation/TilePresenter$1$1;->this$1:Ltv/emby/embyatv/presentation/TilePresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method
