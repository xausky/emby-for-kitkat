.class public Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;
.super Ljava/lang/Object;
.source "BaseGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/emby/embyatv/ui/BaseGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortOption"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public order:Lmediabrowser/model/entities/SortOrder;

.field final synthetic this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltv/emby/embyatv/ui/BaseGridFragment;Ljava/lang/String;Ljava/lang/String;Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 127
    iput-object p1, p0, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->this$0:Ltv/emby/embyatv/ui/BaseGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->name:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->value:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Ltv/emby/embyatv/ui/BaseGridFragment$SortOption;->order:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method
