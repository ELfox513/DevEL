.class public Lt2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/f$a;
    }
.end annotation


# instance fields
.field public final a:Lr4/sx;


# direct methods
.method public constructor <init>(Lt2/f$a;)V
    .locals 2
    .param p1    # Lt2/f$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/sx;

    iget-object p1, p1, Lt2/f$a;->a:Lr4/rx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lr4/sx;-><init>(Lr4/rx;Ll3/a;)V

    iput-object v0, p0, Lt2/f;->a:Lr4/sx;

    return-void
.end method


# virtual methods
.method public a()Lr4/sx;
    .locals 1

    iget-object v0, p0, Lt2/f;->a:Lr4/sx;

    return-object v0
.end method
