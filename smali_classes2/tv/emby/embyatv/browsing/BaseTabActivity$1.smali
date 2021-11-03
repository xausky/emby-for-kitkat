.class Ltv/emby/embyatv/browsing/BaseTabActivity$1;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/browsing/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/browsing/BaseTabActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$1;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 112
    iget-object p1, p0, Ltv/emby/embyatv/browsing/BaseTabActivity$1;->this$0:Ltv/emby/embyatv/browsing/BaseTabActivity;

    iget-object p1, p1, Ltv/emby/embyatv/browsing/BaseTabActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_0
    return-void
.end method
