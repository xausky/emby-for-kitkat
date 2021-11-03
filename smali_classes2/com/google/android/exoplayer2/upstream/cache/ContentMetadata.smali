.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# static fields
.field public static final KEY_CONTENT_LENGTH:Ljava/lang/String; = "exo_len"

.field public static final KEY_CUSTOM_PREFIX:Ljava/lang/String; = "custom_"

.field public static final KEY_REDIRECTED_URI:Ljava/lang/String; = "exo_redir"


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;J)J
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;[B)[B
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
