.class Ltv/emby/embyatv/details/FullDetailsActivity$34;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->addButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/FullDetailsActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/FullDetailsActivity;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$34;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1521
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$34;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3600(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1522
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$34;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    const-class v1, Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ItemId"

    .line 1523
    iget-object v1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$34;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$3600(Ltv/emby/embyatv/details/FullDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1524
    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$34;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
