.class final Lcom/android/dx/dex/code/RopTranslator$1;
.super Lw1/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lw1/u;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>([ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$1;->a:[Z

    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator$1;->b:I

    iput p3, p0, Lcom/android/dx/dex/code/RopTranslator$1;->c:I

    invoke-direct {p0}, Lw1/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public visitPlainCstInsn(Lw1/n;)V
    .locals 5

    invoke-virtual {p1}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {v0}, Lw1/t;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object v0

    check-cast v0, Lx1/p;

    invoke-virtual {v0}, Lx1/p;->B()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator$1;->a:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/dx/dex/code/RopTranslator$1;->b:I

    iget v4, p0, Lcom/android/dx/dex/code/RopTranslator$1;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lw1/h;->k()Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v1, v2

    :cond_1
    return-void
.end method
