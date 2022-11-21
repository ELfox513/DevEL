.class public final synthetic Lr4/bl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/fl2;

.field public final b:Lr4/bm2;

.field public final c:Lr4/el2;

.field public final d:Lr4/zl2;

.field public final e:Lr4/r61;


# direct methods
.method public constructor <init>(Lr4/fl2;Lr4/bm2;Lr4/el2;Lr4/zl2;Lr4/r61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bl2;->a:Lr4/fl2;

    iput-object p2, p0, Lr4/bl2;->b:Lr4/bm2;

    iput-object p3, p0, Lr4/bl2;->c:Lr4/el2;

    iput-object p4, p0, Lr4/bl2;->d:Lr4/zl2;

    iput-object p5, p0, Lr4/bl2;->e:Lr4/r61;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 6

    iget-object v0, p0, Lr4/bl2;->a:Lr4/fl2;

    iget-object v1, p0, Lr4/bl2;->b:Lr4/bm2;

    iget-object v2, p0, Lr4/bl2;->c:Lr4/el2;

    iget-object v3, p0, Lr4/bl2;->d:Lr4/zl2;

    iget-object v4, p0, Lr4/bl2;->e:Lr4/r61;

    move-object v5, p1

    check-cast v5, Lr4/kl2;

    invoke-virtual/range {v0 .. v5}, Lr4/fl2;->f(Lr4/bm2;Lr4/el2;Lr4/zl2;Lr4/r61;Lr4/kl2;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
