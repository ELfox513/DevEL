.class public final Lr4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ly2;


# instance fields
.field public final synthetic a:Lr4/hx2;


# direct methods
.method public constructor <init>(Lr4/hx2;)V
    .locals 0

    iput-object p1, p0, Lr4/k;->a:Lr4/hx2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(IJ)V
    .locals 3

    iget-object v0, p0, Lr4/k;->a:Lr4/hx2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lr4/hx2;->b(IJ)Lj5/i;

    return-void
.end method

.method public final d(IJLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lr4/k;->a:Lr4/hx2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p4}, Lr4/hx2;->f(IJLjava/lang/String;)Lj5/i;

    return-void
.end method
