.class public Lh/h$a;
.super Ld0/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lh/h;


# direct methods
.method public constructor <init>(Lh/h;)V
    .locals 0

    iput-object p1, p0, Lh/h$a;->c:Lh/h;

    invoke-direct {p0}, Ld0/r1;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh/h$a;->a:Z

    iput p1, p0, Lh/h$a;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lh/h$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lh/h$a;->b:I

    iget-object v0, p0, Lh/h$a;->c:Lh/h;

    iget-object v0, v0, Lh/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lh/h$a;->c:Lh/h;

    iget-object p1, p1, Lh/h;->d:Ld0/q1;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld0/q1;->b(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lh/h$a;->d()V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lh/h$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lh/h$a;->a:Z

    iget-object p1, p0, Lh/h$a;->c:Lh/h;

    iget-object p1, p1, Lh/h;->d:Ld0/q1;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld0/q1;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh/h$a;->b:I

    iput-boolean v0, p0, Lh/h$a;->a:Z

    iget-object v0, p0, Lh/h$a;->c:Lh/h;

    invoke-virtual {v0}, Lh/h;->b()V

    return-void
.end method
