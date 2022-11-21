.class public Lg1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lx0/i;

.field public b:Ljava/lang/String;

.field public d:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lx0/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/j;->a:Lx0/i;

    iput-object p2, p0, Lg1/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lg1/j;->d:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lg1/j;->a:Lx0/i;

    invoke-virtual {v0}, Lx0/i;->p()Lx0/d;

    move-result-object v0

    iget-object v1, p0, Lg1/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lg1/j;->d:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lx0/d;->k(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
