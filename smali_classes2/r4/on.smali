.class public final Lr4/on;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/on;->a:F

    iput p2, p0, Lr4/on;->b:F

    add-float/2addr p1, p3

    iput p1, p0, Lr4/on;->c:F

    add-float/2addr p2, p4

    iput p2, p0, Lr4/on;->d:F

    iput p5, p0, Lr4/on;->e:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lr4/on;->a:F

    return v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lr4/on;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lr4/on;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lr4/on;->d:F

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lr4/on;->e:I

    return v0
.end method
