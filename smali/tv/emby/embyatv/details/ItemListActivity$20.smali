.class Ltv/emby/embyatv/details/ItemListActivity$20;
.super Ljava/lang/Object;
.source "ItemListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/details/ItemListActivity;->rotateBackdrops()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/details/ItemListActivity;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/details/ItemListActivity;)V
    .locals 0

    .line 768
    iput-object p1, p0, Ltv/emby/embyatv/details/ItemListActivity$20;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 771
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$20;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$1900(Ltv/emby/embyatv/details/ItemListActivity;)V

    .line 772
    iget-object v0, p0, Ltv/emby/embyatv/details/ItemListActivity$20;->this$0:Ltv/emby/embyatv/details/ItemListActivity;

    invoke-static {v0}, Ltv/emby/embyatv/details/ItemListActivity;->access$2000(Ltv/emby/embyatv/details/ItemListActivity;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Ltv/emby/embyatv/details/FullDetailsActivity;->BACKDROP_ROTATION_INTERVAL:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
