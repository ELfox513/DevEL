.class public Li3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/dy;


# direct methods
.method public constructor <init>(Lr4/dy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/b;->a:Lr4/dy;

    return-void
.end method

.method public static a(Landroid/content/Context;Lt2/b;Lt2/f;Li3/c;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lt2/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Li3/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Lr4/pf0;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lt2/f;->a()Lr4/sx;

    move-result-object p2

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lr4/pf0;-><init>(Landroid/content/Context;Lt2/b;Lr4/sx;)V

    invoke-virtual {v0, p3}, Lr4/pf0;->b(Li3/c;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Li3/b;->a:Lr4/dy;

    invoke-virtual {v0}, Lr4/dy;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
