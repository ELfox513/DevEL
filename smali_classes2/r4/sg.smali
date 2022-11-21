.class public final Lr4/sg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/sg;->a:I

    iput-wide p2, p0, Lr4/sg;->b:J

    iput p4, p0, Lr4/sg;->c:I

    return-void
.end method

.method public static synthetic a(Lr4/sg;)I
    .locals 0

    iget p0, p0, Lr4/sg;->a:I

    return p0
.end method

.method public static synthetic b(Lr4/sg;)J
    .locals 2

    iget-wide v0, p0, Lr4/sg;->b:J

    return-wide v0
.end method

.method public static synthetic c(Lr4/sg;)I
    .locals 0

    iget p0, p0, Lr4/sg;->c:I

    return p0
.end method
