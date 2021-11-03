.class Ltv/emby/embyatv/details/FullDetailsActivity$42$1;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity$42;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/FullDetailsActivity$42;

.field final synthetic val$data:Lmediabrowser/model/dto/UserItemDataDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity$42;Lmediabrowser/model/dto/UserItemDataDto;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$42;

    iput-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;->val$data:Lmediabrowser/model/dto/UserItemDataDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1794
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;->val$data:Lmediabrowser/model/dto/UserItemDataDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/UserItemDataDto;->getPlayed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$42;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$4200(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$42$1;->this$1:Ltv/emby/embyatv/details/FullDetailsActivity$42;

    iget-object p1, p1, Ltv/emby/embyatv/details/FullDetailsActivity$42;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$4300(Ltv/emby/embyatv/details/FullDetailsActivity;)V

    :goto_0
    return-void
.end method
