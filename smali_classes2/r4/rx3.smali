.class public final Lr4/rx3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lr4/qx3;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lr4/qx3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/qx3;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Lr4/qx3;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/nx3;->a:Ljava/util/Comparator;

    sput-object v0, Lr4/rx3;->g:Ljava/util/Comparator;

    sget-object v0, Lr4/ox3;->a:Ljava/util/Comparator;

    sput-object v0, Lr4/rx3;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    new-array p1, p1, [Lr4/qx3;

    iput-object p1, p0, Lr4/rx3;->b:[Lr4/qx3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lr4/rx3;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lr4/rx3;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lr4/rx3;->d:I

    iput v0, p0, Lr4/rx3;->e:I

    return-void
.end method

.method public final b(IF)V
    .locals 3

    iget v0, p0, Lr4/rx3;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    sget-object v2, Lr4/rx3;->g:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Lr4/rx3;->c:I

    :cond_0
    iget v0, p0, Lr4/rx3;->f:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lr4/rx3;->b:[Lr4/qx3;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/rx3;->f:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lr4/qx3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/qx3;-><init>(Lr4/px3;)V

    :goto_0
    iget v1, p0, Lr4/rx3;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr4/rx3;->d:I

    iput v1, v0, Lr4/qx3;->a:I

    iput p1, v0, Lr4/qx3;->b:I

    iput p2, v0, Lr4/qx3;->c:F

    iget-object p2, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lr4/rx3;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lr4/rx3;->e:I

    :cond_2
    :goto_1
    iget p1, p0, Lr4/rx3;->e:I

    const/16 p2, 0x7d0

    if-le p1, p2, :cond_4

    add-int/lit16 p1, p1, -0x7d0

    iget-object p2, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr4/qx3;

    iget v1, p2, Lr4/qx3;->b:I

    if-gt v1, p1, :cond_3

    iget p1, p0, Lr4/rx3;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lr4/rx3;->e:I

    iget-object p1, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Lr4/rx3;->f:I

    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lr4/rx3;->b:[Lr4/qx3;

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lr4/rx3;->f:I

    aput-object p2, v0, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v1, p1

    iput v1, p2, Lr4/qx3;->b:I

    iget p2, p0, Lr4/rx3;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lr4/rx3;->e:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final c(F)F
    .locals 4

    iget p1, p0, Lr4/rx3;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    sget-object v1, Lr4/rx3;->h:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v0, p0, Lr4/rx3;->c:I

    :cond_0
    iget p1, p0, Lr4/rx3;->e:I

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/qx3;

    iget v3, v2, Lr4/qx3;->b:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    iget p1, v2, Lr4/qx3;->c:F

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_3
    iget-object p1, p0, Lr4/rx3;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/qx3;

    iget p1, p1, Lr4/qx3;->c:F

    return p1
.end method
