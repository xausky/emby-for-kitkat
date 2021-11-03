.class Landroidx/leanback/app/OnboardingSupportFragment$2;
.super Ljava/lang/Object;
.source "OnboardingSupportFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/OnboardingSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/OnboardingSupportFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/app/OnboardingSupportFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 245
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    iget-boolean p1, p1, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 249
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_0

    return v1

    .line 267
    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    iget-boolean p1, p1, Landroidx/leanback/app/OnboardingSupportFragment;->mIsLtr:Z

    if-eqz p1, :cond_3

    .line 268
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingSupportFragment;->moveToNextPage()V

    goto :goto_0

    .line 270
    :cond_3
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingSupportFragment;->moveToPreviousPage()V

    :goto_0
    return v2

    .line 260
    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    iget-boolean p1, p1, Landroidx/leanback/app/OnboardingSupportFragment;->mIsLtr:Z

    if-eqz p1, :cond_4

    .line 261
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingSupportFragment;->moveToPreviousPage()V

    goto :goto_1

    .line 263
    :cond_4
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingSupportFragment;->moveToNextPage()V

    :goto_1
    return v2

    .line 254
    :cond_5
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    iget p1, p1, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    if-nez p1, :cond_6

    return v1

    .line 257
    :cond_6
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment$2;->this$0:Landroidx/leanback/app/OnboardingSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/OnboardingSupportFragment;->moveToPreviousPage()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
