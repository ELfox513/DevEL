.class public La2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:La2/f;


# direct methods
.method public constructor <init>(La2/f;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, La2/f$a;->b:La2/f;

    iput-object p2, p0, La2/f$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/s;Lz1/s;)V
    .locals 4

    invoke-virtual {p1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz1/u;

    invoke-virtual {p2}, Lz1/u;->n()Lw1/t;

    move-result-object p2

    sget-object v1, Lw1/v;->s:Lw1/t;

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, La2/f$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {p1}, Lz1/s;->p()I

    move-result v2

    invoke-virtual {p1}, Lz1/s;->w()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lz1/s;->K(II)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method
