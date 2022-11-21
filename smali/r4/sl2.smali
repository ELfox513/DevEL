.class public final Lr4/sl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/p03<",
        "Lr4/yx1;",
        "Lr4/vl2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/wl2;


# direct methods
.method public constructor <init>(Lr4/wl2;)V
    .locals 0

    iput-object p1, p0, Lr4/sl2;->a:Lr4/wl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    check-cast p1, Lr4/yx1;

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/sl2;->a:Lr4/wl2;

    new-instance v0, Lr4/vl2;

    invoke-static {p1}, Lr4/wl2;->d(Lr4/wl2;)Lr4/er2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lr4/vl2;-><init>(Lr4/og0;Lr4/er2;Lr4/ul2;)V

    invoke-static {p1, v0}, Lr4/wl2;->a(Lr4/wl2;Lr4/vl2;)Lr4/vl2;

    iget-object p1, p0, Lr4/sl2;->a:Lr4/wl2;

    invoke-static {p1}, Lr4/wl2;->b(Lr4/wl2;)Lr4/vl2;

    move-result-object p1

    return-object p1
.end method
