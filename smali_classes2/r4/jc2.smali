.class public final Lr4/jc2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr4/dg2<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:Lc4/f;


# direct methods
.method public constructor <init>(Lr4/h83;JLc4/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "TS;>;J",
            "Lc4/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jc2;->a:Lr4/h83;

    iput-object p4, p0, Lr4/jc2;->c:Lc4/f;

    invoke-interface {p4}, Lc4/f;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lr4/jc2;->b:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-wide v0, p0, Lr4/jc2;->b:J

    iget-object v2, p0, Lr4/jc2;->c:Lc4/f;

    invoke-interface {v2}, Lc4/f;->b()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
