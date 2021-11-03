.class public Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GuideProgramAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/livetv/GuideProgramAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mProgramRow:Landroid/widget/LinearLayout;

.field final synthetic this$0:Ltv/emby/embyatv/livetv/GuideProgramAdapter;


# direct methods
.method constructor <init>(Ltv/emby/embyatv/livetv/GuideProgramAdapter;Landroid/view/View;)V
    .locals 0

    .line 174
    iput-object p1, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->this$0:Ltv/emby/embyatv/livetv/GuideProgramAdapter;

    .line 175
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 176
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltv/emby/embyatv/livetv/GuideProgramAdapter$ViewHolder;->mProgramRow:Landroid/widget/LinearLayout;

    return-void
.end method
