.class public Ld/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/f;


# direct methods
.method public constructor <init>(Ld/f;)V
    .locals 0

    iput-object p1, p0, Ld/f$c;->a:Ld/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld0/t1;)Ld0/t1;
    .locals 4

    invoke-virtual {p2}, Ld0/t1;->k()I

    move-result v0

    iget-object v1, p0, Ld/f$c;->a:Ld/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ld/f;->L0(Ld0/t1;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ld0/t1;->i()I

    move-result v0

    invoke-virtual {p2}, Ld0/t1;->j()I

    move-result v2

    invoke-virtual {p2}, Ld0/t1;->h()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Ld0/t1;->n(IIII)Ld0/t1;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Ld0/s0;->z(Landroid/view/View;Ld0/t1;)Ld0/t1;

    move-result-object p1

    return-object p1
.end method
