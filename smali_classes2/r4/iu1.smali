.class public final synthetic Lr4/iu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Ljava/lang/Object;

.field public final d:Lr4/vm0;

.field public final k:Ljava/lang/String;

.field public final p:J


# direct methods
.method public constructor <init>(Lr4/pu1;Ljava/lang/Object;Lr4/vm0;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/iu1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/iu1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr4/iu1;->d:Lr4/vm0;

    iput-object p4, p0, Lr4/iu1;->k:Ljava/lang/String;

    iput-wide p5, p0, Lr4/iu1;->p:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lr4/iu1;->a:Lr4/pu1;

    iget-object v1, p0, Lr4/iu1;->b:Ljava/lang/Object;

    iget-object v2, p0, Lr4/iu1;->d:Lr4/vm0;

    iget-object v3, p0, Lr4/iu1;->k:Ljava/lang/String;

    iget-wide v4, p0, Lr4/iu1;->p:J

    invoke-virtual/range {v0 .. v5}, Lr4/pu1;->p(Ljava/lang/Object;Lr4/vm0;Ljava/lang/String;J)V

    return-void
.end method
