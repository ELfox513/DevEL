.class public Lf3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld3/j;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Bundle;

.field public final d:Lt2/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lt2/g;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ld3/j;",
            ">;",
            "Landroid/os/Bundle;",
            "Lt2/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lf3/a;->b:Ljava/util/List;

    iput-object p3, p0, Lf3/a;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lf3/a;->d:Lt2/g;

    return-void
.end method
