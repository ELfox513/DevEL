.class public final synthetic Lr4/ry3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/yy3;

.field public final b:I

.field public final d:J


# direct methods
.method public constructor <init>(Lr4/yy3;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ry3;->a:Lr4/yy3;

    iput p2, p0, Lr4/ry3;->b:I

    iput-wide p3, p0, Lr4/ry3;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/ry3;->a:Lr4/yy3;

    iget v1, p0, Lr4/ry3;->b:I

    iget-wide v2, p0, Lr4/ry3;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lr4/yy3;->q(IJ)V

    return-void
.end method
