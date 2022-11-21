.class public Lf6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf6/d;


# instance fields
.field public final a:Lf6/a;

.field public final b:Lf6/c;

.field public final c:Lf6/b;

.field public final d:J

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(JLf6/a;Lf6/c;Lf6/b;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf6/e;->d:J

    iput-object p3, p0, Lf6/e;->a:Lf6/a;

    iput-object p4, p0, Lf6/e;->b:Lf6/c;

    iput-object p5, p0, Lf6/e;->c:Lf6/b;

    iput p6, p0, Lf6/e;->e:I

    iput p7, p0, Lf6/e;->f:I

    return-void
.end method


# virtual methods
.method public a()Lf6/b;
    .locals 1

    iget-object v0, p0, Lf6/e;->c:Lf6/b;

    return-object v0
.end method

.method public b()Lf6/c;
    .locals 1

    iget-object v0, p0, Lf6/e;->b:Lf6/c;

    return-object v0
.end method

.method public c()Lf6/a;
    .locals 1

    iget-object v0, p0, Lf6/e;->a:Lf6/a;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lf6/e;->d:J

    return-wide v0
.end method

.method public e(J)Z
    .locals 3

    iget-wide v0, p0, Lf6/e;->d:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
