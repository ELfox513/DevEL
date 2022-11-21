.class public Lt2/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt2/t$a;->a:I

    iput v0, p0, Lt2/t$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lt2/t$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt2/t$a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lt2/t;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v6, Lt2/t;

    iget v1, p0, Lt2/t$a;->a:I

    iget v2, p0, Lt2/t$a;->b:I

    iget-object v3, p0, Lt2/t$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lt2/t$a;->d:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lt2/t;-><init>(IILjava/lang/String;Ljava/util/List;Lt2/z;)V

    return-object v6
.end method
