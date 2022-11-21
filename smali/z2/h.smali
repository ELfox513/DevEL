.class public final Lz2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ly2;


# instance fields
.field public final synthetic a:Lz2/i;


# direct methods
.method public constructor <init>(Lz2/i;)V
    .locals 0

    iput-object p1, p0, Lz2/h;->a:Lz2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(IJ)V
    .locals 3

    iget-object v0, p0, Lz2/h;->a:Lz2/i;

    invoke-static {v0}, Lz2/i;->h(Lz2/i;)Lr4/hx2;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lr4/hx2;->b(IJ)Lj5/i;

    return-void
.end method

.method public final d(IJLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/h;->a:Lz2/i;

    invoke-static {v0}, Lz2/i;->h(Lz2/i;)Lr4/hx2;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p4}, Lr4/hx2;->f(IJLjava/lang/String;)Lj5/i;

    return-void
.end method
