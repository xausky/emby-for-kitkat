.class Ltv/emby/embyatv/details/ListItemAdapter$10;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ListItemAdapter;->addButtons(Ltv/emby/embyatv/details/ListItemAdapter$DetailViewHolder;Lmediabrowser/model/dto/BaseItemDto;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ListItemAdapter;

.field final synthetic val$item:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ListItemAdapter;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 466
    iput-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    iput-object p2, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 469
    iget-object p1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VIDEO_QUEUE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f1003b1

    if-eqz p1, :cond_0

    .line 470
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10046c

    .line 471
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Clear current video queue?"

    .line 472
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Clear"

    new-instance v2, Ltv/emby/embyatv/details/ListItemAdapter$10$2;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ListItemAdapter$10$2;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V

    .line 473
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/details/ListItemAdapter$10$1;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/ListItemAdapter$10$1;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V

    .line 480
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 488
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->this$0:Ltv/emby/embyatv/details/ListItemAdapter;

    invoke-static {v1}, Ltv/emby/embyatv/details/ListItemAdapter;->access$600(Ltv/emby/embyatv/details/ListItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100486

    .line 489
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This will PERMANENTLY DELETE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltv/emby/embyatv/details/ListItemAdapter$10;->val$item:Lmediabrowser/model/dto/BaseItemDto;

    .line 490
    invoke-virtual {v2}, Lmediabrowser/model/dto/BaseItemDto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from your library.  Are you VERY sure?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "Delete"

    new-instance v2, Ltv/emby/embyatv/details/ListItemAdapter$10$4;

    invoke-direct {v2, p0}, Ltv/emby/embyatv/details/ListItemAdapter$10$4;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V

    .line 491
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Ltv/emby/embyatv/details/ListItemAdapter$10$3;

    invoke-direct {v1, p0}, Ltv/emby/embyatv/details/ListItemAdapter$10$3;-><init>(Ltv/emby/embyatv/details/ListItemAdapter$10;)V

    .line 508
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
