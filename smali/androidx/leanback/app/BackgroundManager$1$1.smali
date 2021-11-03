.class Landroidx/leanback/app/BackgroundManager$1$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BackgroundManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/leanback/app/BackgroundManager$1;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BackgroundManager$1;)V
    .locals 0

    .line 414
    iput-object p1, p0, Landroidx/leanback/app/BackgroundManager$1$1;->this$1:Landroidx/leanback/app/BackgroundManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 417
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$1$1;->this$1:Landroidx/leanback/app/BackgroundManager$1;

    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager$1;->this$0:Landroidx/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->postChangeRunnable()V

    return-void
.end method
