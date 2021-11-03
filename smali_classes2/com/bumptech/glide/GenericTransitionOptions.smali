.class public final Lcom/bumptech/glide/GenericTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "GenericTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/TransitionOptions<",
        "Lcom/bumptech/glide/GenericTransitionOptions<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(I)Lcom/bumptech/glide/GenericTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/bumptech/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/GenericTransitionOptions;->transition(I)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/GenericTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/TransitionFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/GenericTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/bumptech/glide/GenericTransitionOptions;
    .locals 1
    .param p0    # Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;",
            ")",
            "Lcom/bumptech/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/GenericTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static withNoTransition()Lcom/bumptech/glide/GenericTransitionOptions;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/GenericTransitionOptions;->dontTransition()Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericTransitionOptions;

    return-object v0
.end method
