.class Ltv/emby/embyatv/ui/MediaSelector$1;
.super Ljava/lang/Object;
.source "MediaSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/emby/embyatv/ui/MediaSelector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILandroid/widget/AdapterView$OnItemSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/emby/embyatv/ui/MediaSelector;

.field final synthetic val$onChanged:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/ui/MediaSelector;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Ltv/emby/embyatv/ui/MediaSelector$1;->this$0:Ltv/emby/embyatv/ui/MediaSelector;

    iput-object p2, p0, Ltv/emby/embyatv/ui/MediaSelector$1;->val$onChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector$1;->val$onChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Ltv/emby/embyatv/ui/MediaSelector$1;->val$onChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method
