.class public final synthetic Lr4/py3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/yy3;

.field public final b:Ljava/lang/String;

.field public final d:J

.field public final k:J


# direct methods
.method public constructor <init>(Lr4/yy3;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/py3;->a:Lr4/yy3;

    iput-object p2, p0, Lr4/py3;->b:Ljava/lang/String;

    iput-wide p3, p0, Lr4/py3;->d:J

    iput-wide p5, p0, Lr4/py3;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lr4/py3;->a:Lr4/yy3;

    iget-object v1, p0, Lr4/py3;->b:Ljava/lang/String;

    iget-wide v2, p0, Lr4/py3;->d:J

    iget-wide v4, p0, Lr4/py3;->k:J

    invoke-virtual/range {v0 .. v5}, Lr4/yy3;->s(Ljava/lang/String;JJ)V

    return-void
.end method
