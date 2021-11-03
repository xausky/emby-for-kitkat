.class public Lmediabrowser/model/entities/DisplayPreferences;
.super Ljava/lang/Object;
.source "DisplayPreferences.java"


# static fields
.field private static final ImageScale:D = 0.9


# instance fields
.field private Client:Ljava/lang/String;

.field private CustomPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field private IndexBy:Ljava/lang/String;

.field private PrimaryImageHeight:I

.field private PrimaryImageWidth:I

.field private RememberIndexing:Z

.field private RememberSorting:Z

.field private ScrollDirection:Lmediabrowser/model/entities/ScrollDirection;

.field private ShowBackdrop:Z

.field private ShowSidebar:Z

.field private SortBy:Ljava/lang/String;

.field private SortOrder:Lmediabrowser/model/entities/SortOrder;

.field private ViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p0}, Lmediabrowser/model/entities/DisplayPreferences;->getScrollDirection()Lmediabrowser/model/entities/ScrollDirection;

    invoke-static {}, Lmediabrowser/model/entities/ScrollDirection;->values()[Lmediabrowser/model/entities/ScrollDirection;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->ScrollDirection:Lmediabrowser/model/entities/ScrollDirection;

    .line 186
    invoke-virtual {p0}, Lmediabrowser/model/entities/DisplayPreferences;->getSortOrder()Lmediabrowser/model/entities/SortOrder;

    invoke-static {}, Lmediabrowser/model/entities/SortOrder;->values()[Lmediabrowser/model/entities/SortOrder;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    .line 20
    invoke-virtual {p0, v1}, Lmediabrowser/model/entities/DisplayPreferences;->setRememberIndexing(Z)V

    const/16 v0, 0xfa

    .line 21
    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setPrimaryImageHeight(I)V

    .line 22
    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setPrimaryImageWidth(I)V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setShowBackdrop(Z)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/DisplayPreferences;->setCustomPrefs(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final getClient()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->Client:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomPrefs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->CustomPrefs:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndexBy()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->IndexBy:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryImageHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->PrimaryImageHeight:I

    return v0
.end method

.method public final getPrimaryImageWidth()I
    .locals 1

    .line 119
    iget v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->PrimaryImageWidth:I

    return v0
.end method

.method public final getRememberIndexing()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->RememberIndexing:Z

    return v0
.end method

.method public final getRememberSorting()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->RememberSorting:Z

    return v0
.end method

.method public final getScrollDirection()Lmediabrowser/model/entities/ScrollDirection;
    .locals 1

    .line 147
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->ScrollDirection:Lmediabrowser/model/entities/ScrollDirection;

    return-object v0
.end method

.method public final getShowBackdrop()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->ShowBackdrop:Z

    return v0
.end method

.method public final getShowSidebar()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->ShowSidebar:Z

    return v0
.end method

.method public final getSortBy()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->SortBy:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Lmediabrowser/model/entities/SortOrder;
    .locals 1

    .line 189
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-object v0
.end method

.method public final getViewType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lmediabrowser/model/entities/DisplayPreferences;->ViewType:Ljava/lang/String;

    return-object v0
.end method

.method public final setClient(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->Client:Ljava/lang/String;

    return-void
.end method

.method public final setCustomPrefs(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->CustomPrefs:Ljava/util/HashMap;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->Id:Ljava/lang/String;

    return-void
.end method

.method public final setIndexBy(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->IndexBy:Ljava/lang/String;

    return-void
.end method

.method public final setPrimaryImageHeight(I)V
    .locals 0

    .line 109
    iput p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->PrimaryImageHeight:I

    return-void
.end method

.method public final setPrimaryImageWidth(I)V
    .locals 0

    .line 123
    iput p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->PrimaryImageWidth:I

    return-void
.end method

.method public final setRememberIndexing(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->RememberIndexing:Z

    return-void
.end method

.method public final setRememberSorting(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->RememberSorting:Z

    return-void
.end method

.method public final setScrollDirection(Lmediabrowser/model/entities/ScrollDirection;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->ScrollDirection:Lmediabrowser/model/entities/ScrollDirection;

    return-void
.end method

.method public final setShowBackdrop(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->ShowBackdrop:Z

    return-void
.end method

.method public final setShowSidebar(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->ShowSidebar:Z

    return-void
.end method

.method public final setSortBy(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->SortBy:Ljava/lang/String;

    return-void
.end method

.method public final setSortOrder(Lmediabrowser/model/entities/SortOrder;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->SortOrder:Lmediabrowser/model/entities/SortOrder;

    return-void
.end method

.method public final setViewType(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lmediabrowser/model/entities/DisplayPreferences;->ViewType:Ljava/lang/String;

    return-void
.end method
