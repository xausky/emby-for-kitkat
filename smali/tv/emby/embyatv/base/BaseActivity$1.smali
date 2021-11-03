.class Ltv/emby/embyatv/base/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/base/BaseActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/base/BaseActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 57
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v0}, Ltv/emby/embyatv/base/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v0}, Ltv/emby/embyatv/base/BaseActivity;->access$000(Ltv/emby/embyatv/base/BaseActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v0

    invoke-virtual {v0}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Ltv/emby/embyatv/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 59
    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$000(Ltv/emby/embyatv/base/BaseActivity;)Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const v3, 0x7f0d0096

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->access$102(Ltv/emby/embyatv/base/BaseActivity;Landroid/view/View;)Landroid/view/View;

    .line 60
    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->access$202(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->access$302(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v1, v2}, Ltv/emby/embyatv/base/BaseActivity;->access$402(Ltv/emby/embyatv/base/BaseActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v1}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 64
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 65
    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v2

    invoke-virtual {v2}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v2, v3}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    iget-object v3, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-virtual {v3}, Ltv/emby/embyatv/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 68
    iget-object v3, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v2}, Ltv/emby/embyatv/base/BaseActivity;->access$502(Ltv/emby/embyatv/base/BaseActivity;I)I

    .line 69
    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    iget-object v3, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v3}, Ltv/emby/embyatv/base/BaseActivity;->access$500(Ltv/emby/embyatv/base/BaseActivity;)I

    move-result v3

    invoke-static {}, Ltv/emby/embyatv/TvApp;->getApplication()Ltv/emby/embyatv/TvApp;

    move-result-object v4

    invoke-virtual {v4}, Ltv/emby/embyatv/TvApp;->getCurrentActivity()Ltv/emby/embyatv/base/BaseActivity;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Ltv/emby/embyatv/util/Utils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ltv/emby/embyatv/base/BaseActivity;->access$602(Ltv/emby/embyatv/base/BaseActivity;I)I

    .line 70
    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v3}, Ltv/emby/embyatv/base/BaseActivity;->access$500(Ltv/emby/embyatv/base/BaseActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLeft(I)V

    .line 71
    iget-object v2, p0, Ltv/emby/embyatv/base/BaseActivity$1;->this$0:Ltv/emby/embyatv/base/BaseActivity;

    invoke-static {v2}, Ltv/emby/embyatv/base/BaseActivity;->access$100(Ltv/emby/embyatv/base/BaseActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
