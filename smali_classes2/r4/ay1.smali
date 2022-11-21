.class public final synthetic Lr4/ay1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/iy1;

.field public final b:Lr4/hy1;

.field public final c:Lr4/og0;

.field public final d:Lr4/e73;


# direct methods
.method public constructor <init>(Lr4/iy1;Lr4/hy1;Lr4/og0;Lr4/e73;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ay1;->a:Lr4/iy1;

    iput-object p2, p0, Lr4/ay1;->b:Lr4/hy1;

    iput-object p3, p0, Lr4/ay1;->c:Lr4/og0;

    iput-object p4, p0, Lr4/ay1;->d:Lr4/e73;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 4

    iget-object v0, p0, Lr4/ay1;->a:Lr4/iy1;

    iget-object v1, p0, Lr4/ay1;->b:Lr4/hy1;

    iget-object v2, p0, Lr4/ay1;->c:Lr4/og0;

    iget-object v3, p0, Lr4/ay1;->d:Lr4/e73;

    check-cast p1, Lr4/yx1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lr4/iy1;->f(Lr4/hy1;Lr4/og0;Lr4/e73;Lr4/yx1;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
