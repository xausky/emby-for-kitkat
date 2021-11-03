.class public Lmediabrowser/apiinteraction/AutomaticObservable;
.super Ljava/util/Observable;
.source "AutomaticObservable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lmediabrowser/apiinteraction/AutomaticObservable;->setChanged()V

    .line 10
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
