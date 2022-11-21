.class public final Lr4/w10;
.super Lr4/g20;
.source "SourceFile"


# static fields
.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/z10;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/p20;",
            ">;"
        }
    .end annotation
.end field

.field public final k:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lr4/w10;->t:I

    const/16 v1, 0xcc

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lr4/w10;->u:I

    sput v1, Lr4/w10;->v:I

    sput v0, Lr4/w10;->w:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lr4/z10;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lr4/g20;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lr4/w10;->b:Ljava/util/List;

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lr4/w10;->d:Ljava/util/List;

    iput-object p1, p0, Lr4/w10;->a:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p8

    if-ge p1, p8, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lr4/z10;

    iget-object v0, p0, Lr4/w10;->b:Ljava/util/List;

    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr4/w10;->d:Ljava/util/List;

    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lr4/w10;->v:I

    :goto_1
    iput p1, p0, Lr4/w10;->k:I

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    sget p1, Lr4/w10;->w:I

    :goto_2
    iput p1, p0, Lr4/w10;->p:I

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    const/16 p1, 0xc

    :goto_3
    iput p1, p0, Lr4/w10;->q:I

    iput p6, p0, Lr4/w10;->r:I

    iput p7, p0, Lr4/w10;->s:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/w10;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/p20;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/w10;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lr4/w10;->k:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/w10;->p:I

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/z10;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/w10;->b:Ljava/util/List;

    return-object v0
.end method

.method public final g7()I
    .locals 1

    iget v0, p0, Lr4/w10;->q:I

    return v0
.end method

.method public final h7()I
    .locals 1

    iget v0, p0, Lr4/w10;->r:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lr4/w10;->s:I

    return v0
.end method
