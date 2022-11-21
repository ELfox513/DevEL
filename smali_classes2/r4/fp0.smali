.class public final synthetic Lr4/fp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/gp0;

.field public final b:Z

.field public final d:J


# direct methods
.method public constructor <init>(Lr4/gp0;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fp0;->a:Lr4/gp0;

    iput-boolean p2, p0, Lr4/fp0;->b:Z

    iput-wide p3, p0, Lr4/fp0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/fp0;->a:Lr4/gp0;

    iget-boolean v1, p0, Lr4/fp0;->b:Z

    iget-wide v2, p0, Lr4/fp0;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lr4/gp0;->H(ZJ)V

    return-void
.end method
