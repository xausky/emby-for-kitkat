.class Ltv/emby/embyatv/details/ListItemAdapter$10$3;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V
    .locals 0

    .line 508
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$3;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 511
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10$3;->this$1:Ltv/emby/embyatv/details/ListItemAdapter$10;

    iget-object p1, p1, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {p1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "Item NOT Deleted"

    invoke-static {p1, p2}, Ltv/emby/embyatv/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
