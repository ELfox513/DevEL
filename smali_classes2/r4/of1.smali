.class public final synthetic Lr4/of1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vl1;

.field public final b:I

.field public final d:J

.field public final k:J


# direct methods
.method public constructor <init>(Lr4/vl1;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/of1;->a:Lr4/vl1;

    iput p2, p0, Lr4/of1;->b:I

    iput-wide p3, p0, Lr4/of1;->d:J

    iput-wide p5, p0, Lr4/of1;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lr4/of1;->a:Lr4/vl1;

    iget v1, p0, Lr4/of1;->b:I

    iget-wide v2, p0, Lr4/of1;->d:J

    iget-wide v4, p0, Lr4/of1;->k:J

    invoke-virtual/range {v0 .. v5}, Lr4/vl1;->p(IJJ)V

    return-void
.end method
