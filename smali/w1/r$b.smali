.class public Lw1/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/BitSet;

.field public final b:Lw1/r;

.field public c:I

.field public final d:Lw1/r;

.field public e:Z


# direct methods
.method public constructor <init>(Lw1/r;Ljava/util/BitSet;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/r$b;->b:Lw1/r;

    iput-object p2, p0, Lw1/r$b;->a:Ljava/util/BitSet;

    iput p3, p0, Lw1/r$b;->c:I

    new-instance p2, Lw1/r;

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p1

    invoke-direct {p2, p1}, Lw1/r;-><init>(I)V

    iput-object p2, p0, Lw1/r$b;->d:Lw1/r;

    iput-boolean p4, p0, Lw1/r$b;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lw1/r;Ljava/util/BitSet;IZLw1/r$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/r$b;-><init>(Lw1/r;Ljava/util/BitSet;IZ)V

    return-void
.end method

.method public static synthetic a(Lw1/r$b;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/r$b;->c(I)V

    return-void
.end method

.method public static synthetic b(Lw1/r$b;)Lw1/r;
    .locals 0

    invoke-virtual {p0}, Lw1/r$b;->e()Lw1/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lw1/r$b;->b:Lw1/r;

    invoke-static {v0, p1}, Lw1/r;->x(Lw1/r;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/q;

    invoke-virtual {p0, p1, v0}, Lw1/r$b;->d(ILw1/q;)V

    return-void
.end method

.method public final d(ILw1/q;)V
    .locals 3

    iget-object v0, p0, Lw1/r$b;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget v0, p0, Lw1/r$b;->c:I

    invoke-virtual {p2, v0}, Lw1/q;->S(I)Lw1/q;

    move-result-object p2

    iget-boolean v0, p0, Lw1/r$b;->e:Z

    if-nez v0, :cond_2

    iget v0, p0, Lw1/r$b;->c:I

    invoke-virtual {p2}, Lw1/q;->x()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lw1/r$b;->c:I

    :cond_2
    iput-boolean v1, p0, Lw1/r$b;->e:Z

    iget-object v0, p0, Lw1/r$b;->d:Lw1/r;

    invoke-static {v0, p1, p2}, Lw1/r;->z(Lw1/r;ILjava/lang/Object;)V

    return-void
.end method

.method public final e()Lw1/r;
    .locals 1

    iget-object v0, p0, Lw1/r$b;->b:Lw1/r;

    invoke-virtual {v0}, Lb2/o;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/r$b;->d:Lw1/r;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    :cond_0
    iget-object v0, p0, Lw1/r$b;->d:Lw1/r;

    return-object v0
.end method
