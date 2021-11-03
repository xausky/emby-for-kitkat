.class Ltv/emby/embyatv/util/Utils$17$2;
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

.field final synthetic val$response:Lmediabrowser/model/dto/BaseItemDto;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/util/Utils$17;Lmediabrowser/model/dto/BaseItemDto;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Ltv/emby/embyatv/util/Utils$17$2;->this$0:Ltv/emby/embyatv/util/Utils$17;

    iput-object p2, p0, Ltv/emby/embyatv/util/Utils$17$2;->val$response:Lmediabrowser/model/dto/BaseItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1496
    iget-object p1, p0, Ltv/emby/embyatv/util/Utils$17$2;->val$response:Lmediabrowser/model/dto/BaseItemDto;

    invoke-virtual {p1}, Lmediabrowser/model/dto/BaseItemDto;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ltv/emby/embyatv/util/Utils$17$2;->this$0:Ltv/emby/embyatv/util/Utils$17;

    iget-object p2, p2, Ltv/emby/embyatv/util/Utils$17;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ltv/emby/embyatv/util/Utils;->retrieveAndPlay(Ljava/lang/String;ZLandroid/content/Context;)V

    return-void
.end method
