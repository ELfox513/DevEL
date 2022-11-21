.class public final Lt2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lr4/xy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lr4/xy;->a:Z

    iput-boolean v0, p0, Lt2/w;->a:Z

    iget-boolean v0, p1, Lr4/xy;->b:Z

    iput-boolean v0, p0, Lt2/w;->b:Z

    iget-boolean p1, p1, Lr4/xy;->d:Z

    iput-boolean p1, p0, Lt2/w;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lt2/w;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lt2/w;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lt2/w;->a:Z

    return v0
.end method
