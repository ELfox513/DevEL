.class public final Lr4/zf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public synthetic constructor <init>(IJLr4/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/zf;->a:I

    iput-wide p2, p0, Lr4/zf;->b:J

    return-void
.end method

.method public static synthetic a(Lr4/zf;)I
    .locals 0

    iget p0, p0, Lr4/zf;->a:I

    return p0
.end method

.method public static synthetic b(Lr4/zf;)J
    .locals 2

    iget-wide v0, p0, Lr4/zf;->b:J

    return-wide v0
.end method
