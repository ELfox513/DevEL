.class public Ld3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt2/b;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lt2/b;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Lt2/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/j;->a:Lt2/b;

    iput-object p2, p0, Ld3/j;->b:Landroid/os/Bundle;

    return-void
.end method
