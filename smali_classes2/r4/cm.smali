.class public final Lr4/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic d:Lr4/gm;


# direct methods
.method public constructor <init>(Lr4/gm;IJ)V
    .locals 0

    iput-object p1, p0, Lr4/cm;->d:Lr4/gm;

    iput p2, p0, Lr4/cm;->a:I

    iput-wide p3, p0, Lr4/cm;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/cm;->d:Lr4/gm;

    invoke-static {v0}, Lr4/gm;->a(Lr4/gm;)Lr4/hm;

    move-result-object v0

    iget v1, p0, Lr4/cm;->a:I

    iget-wide v2, p0, Lr4/cm;->b:J

    invoke-interface {v0, v1, v2, v3}, Lr4/hm;->x(IJ)V

    return-void
.end method
