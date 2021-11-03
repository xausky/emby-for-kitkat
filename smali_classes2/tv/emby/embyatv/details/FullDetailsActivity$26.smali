.class Ltv/emby/embyatv/details/FullDetailsActivity$26;
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

    .line 1263
    iput-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$26;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1266
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1267
    iget-object p1, p0, Ltv/emby/embyatv/details/FullDetailsActivity$26;->this$0:Ltv/emby/embyatv/details/FullDetailsActivity;

    invoke-static {p1}, Ltv/emby/embyatv/details/FullDetailsActivity;->access$500(Ltv/emby/embyatv/details/FullDetailsActivity;)Lmediabrowser/model/dto/BaseItemDto;

    move-result-object p1

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltv/emby/embyatv/util/Utils;->playInstantMix(Ljava/lang/String;)V

    return-void
.end method
