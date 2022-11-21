.class public Lz1/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/v;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/v;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 0

    iput-object p1, p0, Lz1/v$b;->a:Lz1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/v$b;->d(Lz1/u;)V

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/v$b;->d(Lz1/u;)V

    return-void
.end method

.method public c(Lz1/l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz1/v$b;->d(Lz1/u;)V

    return-void
.end method

.method public final d(Lz1/u;)V
    .locals 5

    invoke-virtual {p1}, Lz1/u;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lz1/v$b;->a:Lz1/v;

    invoke-static {v3}, Lz1/v;->b(Lz1/v;)[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    invoke-virtual {v4}, Lw1/q;->B()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
