.class Ltv/emby/embyatv/util/Utils$17$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/util/Utils$17;->onResponse(Lmediabrowser/model/dto/BaseItemDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/util/Utils$17;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$17;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$17$1;->this$0:Ltv/emby/embyatv/util/Utils$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1502
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$17$1;->this$0:Ltv/emby/embyatv/util/Utils$17;

    iget-object p1, p1, Ltv/emby/embyatv/util/Utils$17;->val$program:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getChannelId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/util/Utils$17$1;->this$0:Ltv/emby/embyatv/util/Utils$17;

    iget-object p2, p2, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method
