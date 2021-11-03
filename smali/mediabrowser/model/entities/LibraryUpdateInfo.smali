.class public Lmediabrowser/model/entities/LibraryUpdateInfo;
.super Ljava/lang/Object;
.source "LibraryUpdateInfo.java"


# instance fields
.field private FoldersAddedTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private FoldersRemovedFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ItemsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ItemsRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ItemsUpdated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/LibraryUpdateInfo;->setFoldersAddedTo(Ljava/util/ArrayList;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/LibraryUpdateInfo;->setFoldersRemovedFrom(Ljava/util/ArrayList;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/LibraryUpdateInfo;->setItemsAdded(Ljava/util/ArrayList;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/LibraryUpdateInfo;->setItemsRemoved(Ljava/util/ArrayList;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lmediabrowser/model/entities/LibraryUpdateInfo;->setItemsUpdated(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final getFoldersAddedTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->FoldersAddedTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFoldersRemovedFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->FoldersRemovedFrom:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItemsAdded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsAdded:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItemsRemoved()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsRemoved:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getItemsUpdated()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsUpdated:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setFoldersAddedTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->FoldersAddedTo:Ljava/util/ArrayList;

    return-void
.end method

.method public final setFoldersRemovedFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->FoldersRemovedFrom:Ljava/util/ArrayList;

    return-void
.end method

.method public final setItemsAdded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsAdded:Ljava/util/ArrayList;

    return-void
.end method

.method public final setItemsRemoved(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsRemoved:Ljava/util/ArrayList;

    return-void
.end method

.method public final setItemsUpdated(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lmediabrowser/model/entities/LibraryUpdateInfo;->ItemsUpdated:Ljava/util/ArrayList;

    return-void
.end method
