.class public final synthetic Lr4/uy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/yy3;

.field public final b:Ljava/lang/Object;

.field public final d:J


# direct methods
.method public constructor <init>(Lr4/yy3;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/uy3;->a:Lr4/yy3;

    iput-object p2, p0, Lr4/uy3;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lr4/uy3;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lr4/uy3;->a:Lr4/yy3;

    iget-object v1, p0, Lr4/uy3;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lr4/uy3;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lr4/yy3;->n(Ljava/lang/Object;J)V

    return-void
.end method
