.class public final Lr4/ry;
.super Lr4/dx;
.source "SourceFile"


# instance fields
.field public final a:Lt2/q;


# direct methods
.method public constructor <init>(Lt2/q;)V
    .locals 0

    invoke-direct {p0}, Lr4/dx;-><init>()V

    iput-object p1, p0, Lr4/ry;->a:Lt2/q;

    return-void
.end method


# virtual methods
.method public final v5(Lr4/au;)V
    .locals 4

    iget-object v0, p0, Lr4/ry;->a:Lt2/q;

    if-eqz v0, :cond_0

    iget v0, p1, Lr4/au;->b:I

    iget-object v1, p1, Lr4/au;->d:Ljava/lang/String;

    iget-wide v2, p1, Lr4/au;->k:J

    invoke-static {v0, v1, v2, v3}, Lt2/h;->a(ILjava/lang/String;J)Lt2/h;

    move-result-object p1

    iget-object v0, p0, Lr4/ry;->a:Lt2/q;

    invoke-interface {v0, p1}, Lt2/q;->a(Lt2/h;)V

    :cond_0
    return-void
.end method
