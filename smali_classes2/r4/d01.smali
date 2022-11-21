.class public final Lr4/d01;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lr4/cs0;

.field public final c:Lr4/qo2;

.field public final d:I

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lr4/cs0;Lr4/qo2;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d01;->a:Landroid/view/View;

    iput-object p2, p0, Lr4/d01;->b:Lr4/cs0;

    iput-object p3, p0, Lr4/d01;->c:Lr4/qo2;

    iput p4, p0, Lr4/d01;->d:I

    iput-boolean p5, p0, Lr4/d01;->e:Z

    iput-boolean p6, p0, Lr4/d01;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lr4/cs0;
    .locals 1

    iget-object v0, p0, Lr4/d01;->b:Lr4/cs0;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lr4/d01;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Lr4/qo2;
    .locals 1

    iget-object v0, p0, Lr4/d01;->c:Lr4/qo2;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/d01;->d:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lr4/d01;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lr4/d01;->f:Z

    return v0
.end method
