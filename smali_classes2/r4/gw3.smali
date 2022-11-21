.class public final synthetic Lr4/gw3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/hw3;

.field public final b:I

.field public final d:J

.field public final k:J


# direct methods
.method public constructor <init>(Lr4/hw3;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gw3;->a:Lr4/hw3;

    iput p2, p0, Lr4/gw3;->b:I

    iput-wide p3, p0, Lr4/gw3;->d:J

    iput-wide p5, p0, Lr4/gw3;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lr4/gw3;->a:Lr4/hw3;

    iget v2, p0, Lr4/gw3;->b:I

    iget-wide v3, p0, Lr4/gw3;->d:J

    iget-wide v5, p0, Lr4/gw3;->k:J

    invoke-static {v0}, Lr4/hw3;->b(Lr4/hw3;)Lr4/jw3;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lr4/jw3;->D(IJJ)V

    return-void
.end method
