.class public Lf7/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/b;


# instance fields
.field public final a:Ls7/b;

.field public final b:Ld7/b;

.field public final c:Lj7/h;

.field public final d:J


# direct methods
.method public constructor <init>(Ls7/b;Li7/k;Lj7/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/j;->a:Ls7/b;

    invoke-static {p2}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p1

    iput-object p1, p0, Lf7/j;->b:Ld7/b;

    iput-wide p4, p0, Lf7/j;->d:J

    iput-object p3, p0, Lf7/j;->c:Lj7/h;

    return-void
.end method
