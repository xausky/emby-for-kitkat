.class Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "MyAbstractDetailsPresenter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)V
    .locals 0

    .line 76
    iput-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 80
    iget-object p1, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-static {p1}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$300(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$000(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$100(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder$1;->this$0:Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;

    invoke-static {p2}, Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;->access$200(Ltv/emby/embyatv/presentation/MyAbstractDetailsPresenter$ViewHolder;)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
