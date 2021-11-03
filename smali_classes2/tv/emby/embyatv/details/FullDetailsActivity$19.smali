.class Ltv/emby/embyatv/details/FullDetailsActivity$19;
.super Ljava/lang/Object;
.source "FullDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/FullDetailsActivity;->ShowPremiereMessage()V
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

    .line 1153
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$19;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1156
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$19;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p2

    const-class v0, Ltv/emby/embyatv/validation/UnlockActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    iget-object p2, p0, Ltv/emby/embyatv/details/FullDetailsActivity$19;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p2}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$1700(Ltv/emby/embyatv/details/FullDetailsActivity;)Ltv/emby/embyatv/details/FullDetailsActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
