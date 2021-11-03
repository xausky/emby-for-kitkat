.class Ltv/emby/embyatv/details/FullDetailsActivity$24;
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

    .line 1244
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$24;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1247
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$24;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    iget-object v0, p0, Ltv/emby/embyatv/details/FullDetailsActivity$24;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Ltv/emby/embyatv/details/FullDetailsActivity;->play(Lmediabrowser/model/dto/BaseItemDto;IZ)V

    return-void
.end method
